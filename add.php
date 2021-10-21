<?php
    include 'header.php';
    include 'config.php';
?>
    <main class="container">
        <h2>Thêm thông tin thuốc</h2>
        <form action="process-add-employee.php" method="post">
            <div class="form-group row">
                <label for="ID" class="col-sm-2 col-form-label">Mã thuốc:</label>
                <div class="col-sm-10">
                <input type="text" class="form-control" id="id" name="id" >
                </div>
            </div>
            <div class="form-group row">
                <label for="tenthuoc" class="col-sm-2 col-form-label">Tên thuốc</label>
                <div class="col-sm-10">
                <input type="text" class="form-control" id="tenthuoc" name="tenthuoc">
                </div>
            </div>
            <div class="form-group row">
                <label for="loaithuoc" class="col-sm-2 col-form-label">Loại thuốc</label>
                <div class="col-sm-10">
                <input type="email" class="form-control" id="empEmail" name="empEmail">
                </div>
            </div>
            <div class="form-group row">
                <label for="empMobile" class="col-sm-2 col-form-label">Số di động</label>
                <div class="col-sm-10">
                <input type="tel" class="form-control" id="empMobile" name="empMobile">
                </div>
            </div>

            <div class="form-group row">
                <label for="empMobile" class="col-sm-2 col-form-label">Tên cơ quan</label>
                <div class="col-sm-10">
                    <select name="office" id="office">
                        <!-- Lấy dữ liệu từ bảng Office -->
                        <?php
                            $sql = "SELECT * FROM db_office";
                            $result = mysqli_query($conn,$sql); 
                            if(mysqli_num_rows($result)){
                                while($row=mysqli_fetch_assoc($result)){
                                   
                                   echo '<option value="'.$row['office_id'].'">'.$row['office_name'].'</option>';
                                   
                                }
                            }

                        ?>
                        
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label for="empMobile" class="col-sm-2 col-form-label"></label>
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-success">Lưu lại</button>
                </div>
            </div>
        </form>
    </main>
    
<?php
    include '../footer.php';
?>
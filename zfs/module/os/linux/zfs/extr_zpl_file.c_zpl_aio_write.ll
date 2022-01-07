; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_aio_write.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iovec = type { i32 }

@VERIFY_READ = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iovec*, i64, i32)* @zpl_aio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zpl_aio_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %17 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %16, i32 0, i32 0
  %18 = load %struct.file*, %struct.file** %17, align 8
  store %struct.file* %18, %struct.file** %10, align 8
  %19 = load %struct.file*, %struct.file** %10, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.address_space*, %struct.address_space** %20, align 8
  store %struct.address_space* %21, %struct.address_space** %11, align 8
  %22 = load %struct.address_space*, %struct.address_space** %11, align 8
  %23 = getelementptr inbounds %struct.address_space, %struct.address_space* %22, i32 0, i32 0
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %12, align 8
  %25 = load %struct.inode*, %struct.inode** %12, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @S_ISBLK(i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.iovec*, %struct.iovec** %7, align 8
  %30 = load i32, i32* @VERIFY_READ, align 4
  %31 = call i64 @generic_segment_checks(%struct.iovec* %29, i64* %8, i64* %14, i32 %30)
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %15, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i64, i64* %15, align 8
  store i64 %35, i64* %5, align 8
  br label %51

36:                                               ; preds = %4
  %37 = load %struct.file*, %struct.file** %10, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i64 @generic_write_checks(%struct.file* %37, i32* %9, i64* %14, i32 %38)
  store i64 %39, i64* %15, align 8
  %40 = load i64, i64* %15, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* %15, align 8
  store i64 %43, i64* %5, align 8
  br label %51

44:                                               ; preds = %36
  %45 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %46 = load %struct.iovec*, %struct.iovec** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i32, i32* @UIO_USERSPACE, align 4
  %50 = call i64 @zpl_iter_write_common(%struct.kiocb* %45, %struct.iovec* %46, i64 %47, i64 %48, i32 %49, i32 0)
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %44, %42, %34
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i64 @generic_segment_checks(%struct.iovec*, i64*, i64*, i32) #1

declare dso_local i64 @generic_write_checks(%struct.file*, i32*, i64*, i32) #1

declare dso_local i64 @zpl_iter_write_common(%struct.kiocb*, %struct.iovec*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_btrfs_get_block_device_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_btrfs_get_block_device_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_ioctl_fs_info_args = type { i32, i32, i32, i64 }
%struct.btrfs_ioctl_dev_info_args = type { i32, i32, i32, i64 }
%struct.stat = type { i64, i32 }

@ENOTTY = common dso_local global i32 0, align 4
@BTRFS_IOC_FS_INFO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@BTRFS_IOC_DEV_INFO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_get_block_device_fd(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.btrfs_ioctl_fs_info_args, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_ioctl_dev_info_args, align 8
  %10 = alloca %struct.stat, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %11 = bitcast %struct.btrfs_ioctl_fs_info_args* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64*, i64** %5, align 8
  %17 = ptrtoint i64* %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @btrfs_is_filesystem(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %103

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @ENOTTY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %103

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @BTRFS_IOC_FS_INFO, align 4
  %34 = call i64 @ioctl(i32 %32, i32 %33, %struct.btrfs_ioctl_fs_info_args* %6)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @errno, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %103

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.btrfs_ioctl_fs_info_args, %struct.btrfs_ioctl_fs_info_args* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64*, i64** %5, align 8
  store i64 0, i64* %44, align 8
  store i32 0, i32* %3, align 4
  br label %103

45:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %97, %45
  %47 = load i32, i32* %7, align 4
  %48 = getelementptr inbounds %struct.btrfs_ioctl_fs_info_args, %struct.btrfs_ioctl_fs_info_args* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %47, %49
  br i1 %50, label %51, label %100

51:                                               ; preds = %46
  %52 = bitcast %struct.btrfs_ioctl_dev_info_args* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %52, i8 0, i64 24, i1 false)
  %53 = getelementptr inbounds %struct.btrfs_ioctl_dev_info_args, %struct.btrfs_ioctl_dev_info_args* %9, i32 0, i32 2
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @BTRFS_IOC_DEV_INFO, align 4
  %57 = bitcast %struct.btrfs_ioctl_dev_info_args* %9 to %struct.btrfs_ioctl_fs_info_args*
  %58 = call i64 @ioctl(i32 %55, i32 %56, %struct.btrfs_ioctl_fs_info_args* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %51
  %61 = load i32, i32* @errno, align 4
  %62 = load i32, i32* @ENODEV, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %97

65:                                               ; preds = %60
  %66 = load i32, i32* @errno, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %103

68:                                               ; preds = %51
  %69 = getelementptr inbounds %struct.btrfs_ioctl_dev_info_args, %struct.btrfs_ioctl_dev_info_args* %9, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i64 @stat(i8* %71, %struct.stat* %10)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @errno, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %103

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @S_ISBLK(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %103

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @major(i64 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %103

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %5, align 8
  store i64 %95, i64* %96, align 8
  store i32 1, i32* %3, align 4
  br label %103

97:                                               ; preds = %64
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %46

100:                                              ; preds = %46
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %93, %90, %82, %74, %65, %43, %36, %28, %23
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @btrfs_is_filesystem(i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.btrfs_ioctl_fs_info_args*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISBLK(i32) #2

declare dso_local i64 @major(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

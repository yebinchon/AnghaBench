; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_btrfs_qgroup_set_limit_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_btrfs_qgroup_set_limit_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_ioctl_qgroup_limit_args = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@BTRFS_QGROUP_LIMIT_MAX_RFER = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@BTRFS_IOC_QGROUP_LIMIT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_qgroup_set_limit_fd(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.btrfs_ioctl_qgroup_limit_args, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = getelementptr inbounds %struct.btrfs_ioctl_qgroup_limit_args, %struct.btrfs_ioctl_qgroup_limit_args* %8, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.btrfs_ioctl_qgroup_limit_args, %struct.btrfs_ioctl_qgroup_limit_args* %8, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %16 = load i32, i32* @BTRFS_QGROUP_LIMIT_MAX_RFER, align 4
  store i32 %16, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @btrfs_subvol_get_id_fd(i32 %24, i64* %6)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %71

30:                                               ; preds = %23
  br label %45

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @btrfs_is_filesystem(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %71

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @ENOTTY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %71

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.btrfs_ioctl_qgroup_limit_args, %struct.btrfs_ioctl_qgroup_limit_args* %8, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %67, %45
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @BTRFS_IOC_QGROUP_LIMIT, align 4
  %51 = call i64 @ioctl(i32 %49, i32 %50, %struct.btrfs_ioctl_qgroup_limit_args* %8)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load i32, i32* @errno, align 4
  %55 = load i32, i32* @EBUSY, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = icmp ult i32 %58, 10
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @btrfs_quota_scan_wait(i32 %61)
  br label %67

63:                                               ; preds = %57, %53
  %64 = load i32, i32* @errno, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %71

66:                                               ; preds = %48
  br label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %48

70:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %63, %41, %36, %28
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @btrfs_subvol_get_id_fd(i32, i64*) #1

declare dso_local i32 @btrfs_is_filesystem(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.btrfs_ioctl_qgroup_limit_args*) #1

declare dso_local i32 @btrfs_quota_scan_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

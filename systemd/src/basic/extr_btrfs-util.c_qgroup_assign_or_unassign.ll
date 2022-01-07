; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_qgroup_assign_or_unassign.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_qgroup_assign_or_unassign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_ioctl_qgroup_assign_args = type { i32, i32, i32 }

@ENOTTY = common dso_local global i32 0, align 4
@BTRFS_IOC_QGROUP_ASSIGN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @qgroup_assign_or_unassign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qgroup_assign_or_unassign(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_ioctl_qgroup_assign_args, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds %struct.btrfs_ioctl_qgroup_assign_args, %struct.btrfs_ioctl_qgroup_assign_args* %10, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.btrfs_ioctl_qgroup_assign_args, %struct.btrfs_ioctl_qgroup_assign_args* %10, i32 0, i32 1
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.btrfs_ioctl_qgroup_assign_args, %struct.btrfs_ioctl_qgroup_assign_args* %10, i32 0, i32 2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @btrfs_is_filesystem(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %61

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @ENOTTY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %61

31:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %58, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BTRFS_IOC_QGROUP_ASSIGN, align 4
  %35 = call i32 @ioctl(i32 %33, i32 %34, %struct.btrfs_ioctl_qgroup_assign_args* %10)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i32, i32* @errno, align 4
  %40 = load i32, i32* @EBUSY, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  %44 = icmp ult i32 %43, 10
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @btrfs_quota_scan_wait(i32 %46)
  br label %58

48:                                               ; preds = %42, %38
  %49 = load i32, i32* @errno, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %61

51:                                               ; preds = %32
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %61

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @btrfs_quota_scan_start(i32 %56)
  store i32 1, i32* %5, align 4
  br label %61

58:                                               ; preds = %45
  %59 = load i32, i32* %11, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %32

61:                                               ; preds = %55, %54, %48, %28, %23
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @btrfs_is_filesystem(i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.btrfs_ioctl_qgroup_assign_args*) #1

declare dso_local i32 @btrfs_quota_scan_wait(i32) #1

declare dso_local i32 @btrfs_quota_scan_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

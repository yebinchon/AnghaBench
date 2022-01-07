; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_qgroup_create_or_destroy.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_qgroup_create_or_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_ioctl_qgroup_create_args = type { i32, i32 }

@ENOTTY = common dso_local global i32 0, align 4
@BTRFS_IOC_QGROUP_CREATE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @qgroup_create_or_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qgroup_create_or_destroy(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_ioctl_qgroup_create_args, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.btrfs_ioctl_qgroup_create_args, %struct.btrfs_ioctl_qgroup_create_args* %8, i32 0, i32 0
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.btrfs_ioctl_qgroup_create_args, %struct.btrfs_ioctl_qgroup_create_args* %8, i32 0, i32 1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @btrfs_is_filesystem(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @ENOTTY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %58

27:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %54, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @BTRFS_IOC_QGROUP_CREATE, align 4
  %31 = call i64 @ioctl(i32 %29, i32 %30, %struct.btrfs_ioctl_qgroup_create_args* %8)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load i32, i32* @errno, align 4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ENOPROTOOPT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %58

40:                                               ; preds = %33
  %41 = load i32, i32* @errno, align 4
  %42 = load i32, i32* @EBUSY, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @btrfs_quota_scan_wait(i32 %48)
  br label %54

50:                                               ; preds = %44, %40
  %51 = load i32, i32* @errno, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %58

53:                                               ; preds = %28
  br label %57

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %28

57:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %50, %37, %24, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @btrfs_is_filesystem(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.btrfs_ioctl_qgroup_create_args*) #1

declare dso_local i32 @btrfs_quota_scan_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

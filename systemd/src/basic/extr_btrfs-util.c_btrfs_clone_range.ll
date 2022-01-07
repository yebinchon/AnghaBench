; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_btrfs_clone_range.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_btrfs_clone_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_ioctl_clone_range_args = type { i32, i64, i64, i64 }

@BTRFS_IOC_CLONE_RANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_clone_range(i32 %0, i64 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.btrfs_ioctl_clone_range_args, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = getelementptr inbounds %struct.btrfs_ioctl_clone_range_args, %struct.btrfs_ioctl_clone_range_args* %12, i32 0, i32 0
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.btrfs_ioctl_clone_range_args, %struct.btrfs_ioctl_clone_range_args* %12, i32 0, i32 1
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds %struct.btrfs_ioctl_clone_range_args, %struct.btrfs_ioctl_clone_range_args* %12, i32 0, i32 2
  %19 = load i64, i64* %11, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.btrfs_ioctl_clone_range_args, %struct.btrfs_ioctl_clone_range_args* %12, i32 0, i32 3
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i64, i64* %11, align 8
  %31 = icmp sgt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @fd_verify_regular(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %6, align 4
  br label %49

40:                                               ; preds = %5
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @BTRFS_IOC_CLONE_RANGE, align 4
  %43 = call i64 @ioctl(i32 %41, i32 %42, %struct.btrfs_ioctl_clone_range_args* %12)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @errno, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %49

48:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %45, %38
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fd_verify_regular(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.btrfs_ioctl_clone_range_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

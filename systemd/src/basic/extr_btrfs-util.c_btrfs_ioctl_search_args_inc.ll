; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_btrfs_ioctl_search_args_inc.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_btrfs_ioctl_search_args_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_ioctl_search_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_ioctl_search_args*)* @btrfs_ioctl_search_args_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_ioctl_search_args_inc(%struct.btrfs_ioctl_search_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_ioctl_search_args*, align 8
  store %struct.btrfs_ioctl_search_args* %0, %struct.btrfs_ioctl_search_args** %3, align 8
  %4 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %5 = call i32 @assert(%struct.btrfs_ioctl_search_args* %4)
  %6 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %7 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, -1
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %13 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  store i32 1, i32* %2, align 4
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %19 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, -1
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %25 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %30 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  store i32 1, i32* %2, align 4
  br label %51

32:                                               ; preds = %17
  %33 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %34 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, -1
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %40 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %45 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %48 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  store i32 1, i32* %2, align 4
  br label %51

50:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %38, %23, %11
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @assert(%struct.btrfs_ioctl_search_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

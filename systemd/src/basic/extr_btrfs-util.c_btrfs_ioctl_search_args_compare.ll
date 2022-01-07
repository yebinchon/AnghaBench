; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_btrfs_ioctl_search_args_compare.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_btrfs_ioctl_search_args_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_ioctl_search_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_ioctl_search_args*)* @btrfs_ioctl_search_args_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_ioctl_search_args_compare(%struct.btrfs_ioctl_search_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_ioctl_search_args*, align 8
  %4 = alloca i32, align 4
  store %struct.btrfs_ioctl_search_args* %0, %struct.btrfs_ioctl_search_args** %3, align 8
  %5 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %6 = call i32 @assert(%struct.btrfs_ioctl_search_args* %5)
  %7 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CMP(i32 %10, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %44

20:                                               ; preds = %1
  %21 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %22 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %26 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CMP(i32 %24, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %20
  %35 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %36 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.btrfs_ioctl_search_args*, %struct.btrfs_ioctl_search_args** %3, align 8
  %40 = getelementptr inbounds %struct.btrfs_ioctl_search_args, %struct.btrfs_ioctl_search_args* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @CMP(i32 %38, i32 %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %34, %32, %18
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @assert(%struct.btrfs_ioctl_search_args*) #1

declare dso_local i32 @CMP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

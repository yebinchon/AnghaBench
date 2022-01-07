; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_calculate_range_tree_type.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_calculate_range_tree_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@zfs_metaslab_force_large_segs = common dso_local global i32 0, align 4
@RANGE_SEG32 = common dso_local global i32 0, align 4
@RANGE_SEG64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, i32*, i32*)* @metaslab_calculate_range_tree_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metaslab_calculate_range_tree_type(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = icmp slt i32 %16, 32
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load i32, i32* @zfs_metaslab_force_large_segs, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @RANGE_SEG32, align 4
  store i32 %30, i32* %5, align 4
  br label %35

31:                                               ; preds = %18, %4
  %32 = load i32*, i32** %9, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* @RANGE_SEG64, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %21
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_weight.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__*, i32, i64, i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }

@zfs_metaslab_segment_weight_enabled = common dso_local global i64 0, align 8
@SPA_FEATURE_SPACEMAP_HISTOGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32)* @metaslab_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metaslab_weight(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  %18 = call i32 @MUTEX_HELD(i32* %17)
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @metaslab_set_fragmentation(%struct.TYPE_16__* %20, i32 %21)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = call i32 @metaslab_largest_allocatable(%struct.TYPE_16__* %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %41

32:                                               ; preds = %2
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = call i32 @metaslab_largest_unflushed_free(%struct.TYPE_16__* %36)
  %38 = call i32 @MAX(i32 %35, i32 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %32, %27
  %42 = load i64, i64* @zfs_metaslab_segment_weight_enabled, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %41
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @SPA_FEATURE_SPACEMAP_HISTOGRAM, align 4
  %47 = call i64 @spa_feature_is_enabled(i32* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = icmp eq %struct.TYPE_13__* %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp eq i64 %62, 4
  br i1 %63, label %64, label %67

64:                                               ; preds = %54, %49
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = call i32 @metaslab_segment_weight(%struct.TYPE_16__* %65)
  store i32 %66, i32* %7, align 4
  br label %70

67:                                               ; preds = %54, %44, %41
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = call i32 @metaslab_space_weight(%struct.TYPE_16__* %68)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @metaslab_set_fragmentation(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @metaslab_largest_allocatable(%struct.TYPE_16__*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @metaslab_largest_unflushed_free(%struct.TYPE_16__*) #1

declare dso_local i64 @spa_feature_is_enabled(i32*, i32) #1

declare dso_local i32 @metaslab_segment_weight(%struct.TYPE_16__*) #1

declare dso_local i32 @metaslab_space_weight(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

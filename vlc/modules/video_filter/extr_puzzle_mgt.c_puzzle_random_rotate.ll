; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_random_rotate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_random_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @puzzle_random_rotate(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %3, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %97, %1
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %9, %13
  br i1 %14, label %15, label %100

15:                                               ; preds = %8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %93 [
    i32 1, label %32
    i32 2, label %53
    i32 3, label %73
  ]

32:                                               ; preds = %15
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 (...) @vlc_mrand48()
  %36 = urem i32 %35, 2
  %37 = mul i32 %36, 2
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @puzzle_rotate_pce(%struct.TYPE_12__* %33, i64 %34, i32 %37, i32 %44, i32 %51, i32 0)
  br label %93

53:                                               ; preds = %15
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 (...) @vlc_mrand48()
  %57 = urem i32 %56, 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @puzzle_rotate_pce(%struct.TYPE_12__* %54, i64 %55, i32 %57, i32 %64, i32 %71, i32 0)
  br label %93

73:                                               ; preds = %15
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %75 = load i64, i64* %4, align 8
  %76 = call i32 (...) @vlc_mrand48()
  %77 = urem i32 %76, 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = load i64, i64* %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @puzzle_rotate_pce(%struct.TYPE_12__* %74, i64 %75, i32 %77, i32 %84, i32 %91, i32 0)
  br label %93

93:                                               ; preds = %15, %73, %53, %32
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @puzzle_calculate_corners(%struct.TYPE_12__* %94, i64 %95)
  br label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %4, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %4, align 8
  br label %8

100:                                              ; preds = %8
  ret void
}

declare dso_local i32 @puzzle_rotate_pce(%struct.TYPE_12__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @vlc_mrand48(...) #1

declare dso_local i32 @puzzle_calculate_corners(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

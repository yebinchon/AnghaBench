; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_shuffle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_shuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64*, i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@NO_PCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puzzle_shuffle(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %41, %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = call i32 @puzzle_generate_rand_pce_list(%struct.TYPE_11__* %16, i64** %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @VLC_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %83

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = call i64 @puzzle_is_finished(%struct.TYPE_12__* %27, i64* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = call i32 @puzzle_is_valid(%struct.TYPE_12__* %34, i64* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %33, %26
  %42 = phi i1 [ true, %26 ], [ %40, %33 ]
  br i1 %42, label %15, label %43

43:                                               ; preds = %41
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  store i64 0, i64* %7, align 8
  br label %50

50:                                               ; preds = %69, %49
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = sub i64 %61, 1
  %63 = icmp eq i64 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %72

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %50

72:                                               ; preds = %64, %50
  br label %77

73:                                               ; preds = %43
  %74 = load i64, i64* @NO_PCE, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %72
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  store i32 0, i32* %79, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %23
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @puzzle_generate_rand_pce_list(%struct.TYPE_11__*, i64**) #1

declare dso_local i64 @puzzle_is_finished(%struct.TYPE_12__*, i64*) #1

declare dso_local i32 @puzzle_is_valid(%struct.TYPE_12__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

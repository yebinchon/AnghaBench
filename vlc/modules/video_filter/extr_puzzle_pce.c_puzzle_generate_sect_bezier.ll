; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_generate_sect_bezier.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_generate_sect_bezier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@puzzle_SHAPE_TOP = common dso_local global i64 0, align 8
@VLC_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puzzle_generate_sect_bezier(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i64 %2, i32* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %6
  %31 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %31, i32* %7, align 4
  br label %137

32:                                               ; preds = %27
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %14, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %15, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %16, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %17, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %15, align 4
  %63 = sitofp i32 %62 to float
  %64 = load i32, i32* %17, align 4
  %65 = sitofp i32 %64 to float
  %66 = fdiv float %63, %65
  store float %66, float* %19, align 4
  %67 = load i32, i32* %16, align 4
  %68 = sitofp i32 %67 to float
  %69 = load i32, i32* %18, align 4
  %70 = sitofp i32 %69 to float
  %71 = fdiv float %68, %70
  store float %71, float* %20, align 4
  %72 = load float, float* %19, align 4
  %73 = load float, float* %20, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @puzzle_get_min_bezier(float* %21, float* %22, float %72, float %73, i32* %74, i64 %75)
  %77 = load float, float* %22, align 4
  %78 = call i32 @floor(float %77)
  %79 = call float @__MIN(i32 0, i32 %78)
  store float %79, float* %22, align 4
  %80 = load float, float* %21, align 4
  %81 = call i32 @floor(float %80)
  %82 = call float @__MIN(i32 0, i32 %81)
  store float %82, float* %21, align 4
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* @puzzle_SHAPE_TOP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %32
  %87 = load float, float* %22, align 4
  %88 = call i32 @floor(float %87)
  br label %90

89:                                               ; preds = %32
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i32 [ %88, %86 ], [ 0, %89 ]
  store i32 %91, i32* %23, align 4
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* @puzzle_SHAPE_TOP, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, i32* %16, align 4
  %97 = sdiv i32 %96, 2
  %98 = load i32, i32* %23, align 4
  %99 = sub nsw i32 %97, %98
  br label %102

100:                                              ; preds = %90
  %101 = load i32, i32* %16, align 4
  br label %102

102:                                              ; preds = %100, %95
  %103 = phi i32 [ %99, %95 ], [ %101, %100 ]
  store i32 %103, i32* %24, align 4
  %104 = load i32, i32* %24, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %23, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 4, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @malloc(i32 %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %102
  %124 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %124, i32* %7, align 4
  br label %137

125:                                              ; preds = %102
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %128 = load i32, i32* %23, align 4
  %129 = load i32, i32* %24, align 4
  %130 = load float, float* %19, align 4
  %131 = load float, float* %20, align 4
  %132 = load i32*, i32** %11, align 8
  %133 = load i64, i64* %10, align 8
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @puzzle_generate_shape_lines(%struct.TYPE_11__* %126, %struct.TYPE_10__* %127, i32 %128, i32 %129, float %130, float %131, i32* %132, i64 %133, i64 %134, i64 %135)
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %125, %123, %30
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i32 @puzzle_get_min_bezier(float*, float*, float, float, i32*, i64) #1

declare dso_local float @__MIN(i32, i32) #1

declare dso_local i32 @floor(float) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @puzzle_generate_shape_lines(%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, float, float, i32*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_WebPAnimEncoderRefineRect.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_WebPAnimEncoderRefineRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPAnimEncoderRefineRect(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32 %2, float %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_10__, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %11, align 8
  store i32 %2, i32* %12, align 4
  store float %3, float* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %16, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %24, %26
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @clip(i32 %27, i32 0, i64 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %19, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = call i8* @clip(i32 %34, i32 0, i64 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %20, align 4
  %41 = load i32*, i32** %15, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %17, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %42, %44
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @clip(i32 %45, i32 0, i64 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %21, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 1
  %57 = call i8* @clip(i32 %52, i32 0, i64 %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %22, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = icmp eq %struct.TYPE_9__* %59, null
  br i1 %60, label %90, label %61

61:                                               ; preds = %8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %63 = icmp eq %struct.TYPE_9__* %62, null
  br i1 %63, label %90, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %90, label %72

72:                                               ; preds = %64
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %72
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85, %80, %72, %64, %61, %8
  store i32 0, i32* %9, align 4
  br label %140

91:                                               ; preds = %85
  %92 = load i32, i32* %20, align 4
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %22, align 4
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %20, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = sub nsw i64 %101, %104
  %106 = call i8* @clip(i32 %98, i32 0, i64 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %22, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = sub nsw i64 %114, %117
  %119 = call i8* @clip(i32 %111, i32 0, i64 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  store i32 %120, i32* %121, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load float, float* %13, align 4
  %126 = call i32 @MinimizeChangeRectangle(%struct.TYPE_9__* %122, %struct.TYPE_9__* %123, %struct.TYPE_10__* %18, i32 %124, float %125)
  %127 = call i32 @SnapToEvenOffsets(%struct.TYPE_10__* %18)
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %14, align 8
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %15, align 8
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %16, align 8
  store i32 %135, i32* %136, align 4
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %17, align 8
  store i32 %138, i32* %139, align 4
  store i32 1, i32* %9, align 4
  br label %140

140:                                              ; preds = %91, %90
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

declare dso_local i8* @clip(i32, i32, i64) #1

declare dso_local i32 @MinimizeChangeRectangle(%struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, float) #1

declare dso_local i32 @SnapToEvenOffsets(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

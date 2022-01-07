; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_io_dec.c_CustomSetup.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_io_dec.c_CustomSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i64 }
%struct.TYPE_11__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@MODE_YUV = common dso_local global i32 0, align 4
@MODE_YUVA = common dso_local global i32 0, align 4
@EmitSampledRGB = common dso_local global i32* null, align 8
@EmitYUV = common dso_local global i32* null, align 8
@MODE_RGBA_4444 = common dso_local global i64 0, align 8
@MODE_rgbA_4444 = common dso_local global i64 0, align 8
@EmitAlphaRGBA4444 = common dso_local global i32* null, align 8
@EmitAlphaRGB = common dso_local global i32* null, align 8
@EmitAlphaYUV = common dso_local global i32* null, align 8
@EmitFancyRGB = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @CustomSetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CustomSetup(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @WebPIsRGBMode(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @WebPIsAlphaMode(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 5
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 7
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @MODE_YUV, align 4
  br label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @MODE_YUVA, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call i32 @WebPIoInitFromOptions(i32 %32, %struct.TYPE_12__* %33, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %127

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @WebPIsPremultipliedMode(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 (...) @WebPInitUpsamplers()
  br label %54

54:                                               ; preds = %52, %48, %45
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = call i32 @InitRGBRescaler(%struct.TYPE_12__* %63, %struct.TYPE_11__* %64)
  br label %70

66:                                               ; preds = %59
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = call i32 @InitYUVRescaler(%struct.TYPE_12__* %67, %struct.TYPE_11__* %68)
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i32 [ %65, %62 ], [ %69, %66 ]
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %127

75:                                               ; preds = %70
  br label %126

76:                                               ; preds = %54
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = call i32 (...) @WebPInitSamplers()
  %81 = load i32*, i32** @EmitSampledRGB, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %79
  br label %94

90:                                               ; preds = %76
  %91 = load i32*, i32** @EmitYUV, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  br label %94

94:                                               ; preds = %90, %89
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %125

97:                                               ; preds = %94
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @MODE_RGBA_4444, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* @MODE_rgbA_4444, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101, %97
  %106 = load i32*, i32** @EmitAlphaRGBA4444, align 8
  br label %116

107:                                              ; preds = %101
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32*, i32** @EmitAlphaRGB, align 8
  br label %114

112:                                              ; preds = %107
  %113 = load i32*, i32** @EmitAlphaYUV, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32* [ %111, %110 ], [ %113, %112 ]
  br label %116

116:                                              ; preds = %114, %105
  %117 = phi i32* [ %106, %105 ], [ %115, %114 ]
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store i32* %117, i32** %119, align 8
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = call i32 (...) @WebPInitAlphaProcessing()
  br label %124

124:                                              ; preds = %122, %116
  br label %125

125:                                              ; preds = %124, %94
  br label %126

126:                                              ; preds = %125, %75
  store i32 1, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %74, %44
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @WebPIsRGBMode(i64) #1

declare dso_local i32 @WebPIsAlphaMode(i64) #1

declare dso_local i32 @WebPIoInitFromOptions(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @WebPIsPremultipliedMode(i64) #1

declare dso_local i32 @WebPInitUpsamplers(...) #1

declare dso_local i32 @InitRGBRescaler(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @InitYUVRescaler(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @WebPInitSamplers(...) #1

declare dso_local i32 @WebPInitAlphaProcessing(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

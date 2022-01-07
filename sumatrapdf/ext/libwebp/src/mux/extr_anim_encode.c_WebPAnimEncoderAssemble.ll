; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_WebPAnimEncoderAssemble.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_WebPAnimEncoderAssemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, double, i64, i32, %struct.TYPE_10__, i32, i32, i32*, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ERROR assembling: NULL input\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"ERROR: No frames to assemble\00", align 1
@WEBP_MUX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"ERROR assembling WebP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPAnimEncoderAssemble(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = icmp eq %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %130

13:                                               ; preds = %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = call i32 @MarkNoError(%struct.TYPE_11__* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = call i32 @MarkError(%struct.TYPE_11__* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %130

21:                                               ; preds = %13
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = call i32 @MarkError(%struct.TYPE_11__* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %130

29:                                               ; preds = %21
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %67, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 9
  %47 = load i64, i64* %46, align 8
  %48 = sitofp i64 %47 to double
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load double, double* %50, align 8
  %52 = fsub double %48, %51
  store double %52, double* %8, align 8
  %53 = load double, double* %8, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %53, %58
  %60 = fptosi double %59 to i32
  store i32 %60, i32* %9, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @IncreasePreviousDuration(%struct.TYPE_11__* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %130

66:                                               ; preds = %44
  br label %67

67:                                               ; preds = %66, %39, %34, %29
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = call i32 @FlushFrames(%struct.TYPE_11__* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %130

77:                                               ; preds = %67
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 8
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %6, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @WebPMuxSetCanvasSize(i32* %81, i32 %84, i32 %87)
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @WEBP_MUX_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %77
  br label %126

93:                                               ; preds = %77
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = call i64 @WebPMuxSetAnimationParams(i32* %94, i32* %97)
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @WEBP_MUX_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %126

103:                                              ; preds = %93
  %104 = load i32*, i32** %6, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = call i64 @WebPMuxAssemble(i32* %104, i32* %105)
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @WEBP_MUX_OK, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %126

111:                                              ; preds = %103
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = call i64 @OptimizeSingleFrame(%struct.TYPE_11__* %117, i32* %118)
  store i64 %119, i64* %7, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* @WEBP_MUX_OK, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %126

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %111
  store i32 1, i32* %3, align 4
  br label %130

126:                                              ; preds = %123, %110, %102, %92
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @MarkError2(%struct.TYPE_11__* %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %128)
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %126, %125, %76, %65, %26, %18, %12
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @MarkNoError(%struct.TYPE_11__*) #1

declare dso_local i32 @MarkError(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @IncreasePreviousDuration(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @FlushFrames(%struct.TYPE_11__*) #1

declare dso_local i64 @WebPMuxSetCanvasSize(i32*, i32, i32) #1

declare dso_local i64 @WebPMuxSetAnimationParams(i32*, i32*) #1

declare dso_local i64 @WebPMuxAssemble(i32*, i32*) #1

declare dso_local i64 @OptimizeSingleFrame(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @MarkError2(%struct.TYPE_11__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

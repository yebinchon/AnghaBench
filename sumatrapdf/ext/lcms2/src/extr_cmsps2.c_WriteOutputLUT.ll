; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_WriteOutputLUT.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_WriteOutputLUT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@cmsFLAGS_BLACKPOINTCOMPENSATION = common dso_local global i64 0, align 8
@cmsFLAGS_NOWHITEONWHITEFIXUP = common dso_local global i64 0, align 8
@TYPE_Lab_16 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@INTENT_ABSOLUTE_COLORIMETRIC = common dso_local global i64 0, align 8
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i64 0, align 8
@TYPE_Lab_DBL = common dso_local global i32 0, align 4
@cmsERROR_COLORSPACE_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Cannot create transform Lab -> Profile in CRD creation\00", align 1
@cmsFLAGS_FORCE_CLUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"/ColorRenderingType 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/RenderTable \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [13 x i8] c" %d {} bind \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"dup \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@cmsFLAGS_NODEFAULTRESOURCEDEF = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [50 x i8] c"/Current exch /ColorRendering defineresource pop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i64, i64)* @WriteOutputLUT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteOutputLUT(i32 %0, i32* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [3 x i32*], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @cmsFLAGS_BLACKPOINTCOMPENSATION, align 8
  %28 = and i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %21, align 4
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @cmsFLAGS_NOWHITEONWHITEFIXUP, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %22, align 4
  %36 = load i64, i64* @TYPE_Lab_16, align 8
  store i64 %36, i64* %23, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32* @cmsCreateLab4Profile(i32 %37, i32* null)
  store i32* %38, i32** %12, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %181

42:                                               ; preds = %5
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i64 @cmsFormatterForColorspaceOfProfile(i32 %43, i32* %44, i32 2, i32 %45)
  store i64 %46, i64* %16, align 8
  %47 = load i64, i64* %16, align 8
  %48 = call i64 @T_CHANNELS(i64 %47)
  store i64 %48, i64* %15, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @cmsGetColorSpace(i32 %49, i32* %50)
  store i32 %51, i32* %25, align 4
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %24, align 8
  %53 = load i64, i64* %24, align 8
  %54 = load i64, i64* @INTENT_ABSOLUTE_COLORIMETRIC, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i64, i64* @INTENT_RELATIVE_COLORIMETRIC, align 8
  store i64 %57, i64* %24, align 8
  br label %58

58:                                               ; preds = %56, %42
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  store i32* %59, i32** %60, align 16
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 1
  store i32* %61, i32** %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  %65 = load i32, i32* @TYPE_Lab_DBL, align 4
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* %24, align 8
  %68 = call i32* @cmsCreateMultiprofileTransform(i32 %63, i32** %64, i32 2, i32 %65, i64 %66, i64 %67, i32 0)
  store i32* %68, i32** %13, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @cmsCloseProfile(i32 %69, i32* %70)
  %72 = load i32*, i32** %13, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %58
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @cmsERROR_COLORSPACE_CHECK, align 4
  %77 = call i32 @cmsSignalError(i32 %75, i32 %76, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %181

78:                                               ; preds = %58
  %79 = load i32*, i32** %13, align 8
  %80 = bitcast i32* %79 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %17, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32* @cmsPipelineDup(i32 %81, i32 %86)
  store i32* %87, i32** %18, align 8
  %88 = load i32*, i32** %18, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %181

91:                                               ; preds = %78
  %92 = load i64, i64* @cmsFLAGS_FORCE_CLUT, align 8
  %93 = load i64, i64* %11, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %11, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i64, i64* %24, align 8
  %97 = call i32 @_cmsOptimizePipeline(i32 %95, i32** %18, i64 %96, i64* %23, i64* %16, i64* %11)
  %98 = load i32, i32* %7, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %98, i32* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* %7, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %101, i32* %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* %7, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @cmsDetectBlackPoint(i32 %104, i32* %20, i32* %105, i64 %106, i32 0)
  %108 = load i32, i32* %7, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @EmitWhiteBlackD50(i32 %108, i32* %109, i32* %20)
  %111 = load i32, i32* %7, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %21, align 4
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* @INTENT_ABSOLUTE_COLORIMETRIC, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @EmitPQRStage(i32 %111, i32* %112, i32* %113, i32 %114, i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @EmitXYZ2Lab(i32 %120, i32* %121)
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @INTENT_ABSOLUTE_COLORIMETRIC, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %91
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %22, align 4
  br label %128

128:                                              ; preds = %126, %91
  %129 = load i32, i32* %7, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %129, i32* %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %132 = load i32, i32* %7, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32*, i32** %18, align 8
  %136 = call i32 @cmsPipelineGetPtrToFirstStage(i32 %134, i32* %135)
  %137 = load i32, i32* %22, align 4
  %138 = load i32, i32* %25, align 4
  %139 = call i32 @WriteCLUT(i32 %132, i32* %133, i32 %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load i32, i32* %7, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = load i64, i64* %15, align 8
  %143 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %140, i32* %141, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 %142)
  store i64 1, i64* %14, align 8
  br label %144

144:                                              ; preds = %152, %128
  %145 = load i64, i64* %14, align 8
  %146 = load i64, i64* %15, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load i32, i32* %7, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %149, i32* %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %152

152:                                              ; preds = %148
  %153 = load i64, i64* %14, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %14, align 8
  br label %144

155:                                              ; preds = %144
  %156 = load i32, i32* %7, align 4
  %157 = load i32*, i32** %8, align 8
  %158 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %156, i32* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %159 = load i32, i32* %7, align 4
  %160 = load i32*, i32** %8, align 8
  %161 = load i64, i64* %10, align 8
  %162 = call i32 @EmitIntent(i32 %159, i32* %160, i64 %161)
  %163 = load i32, i32* %7, align 4
  %164 = load i32*, i32** %8, align 8
  %165 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %163, i32* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* @cmsFLAGS_NODEFAULTRESOURCEDEF, align 8
  %168 = and i64 %166, %167
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %155
  %171 = load i32, i32* %7, align 4
  %172 = load i32*, i32** %8, align 8
  %173 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %171, i32* %172, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  br label %174

174:                                              ; preds = %170, %155
  %175 = load i32, i32* %7, align 4
  %176 = load i32*, i32** %18, align 8
  %177 = call i32 @cmsPipelineFree(i32 %175, i32* %176)
  %178 = load i32, i32* %7, align 4
  %179 = load i32*, i32** %13, align 8
  %180 = call i32 @cmsDeleteTransform(i32 %178, i32* %179)
  store i32 1, i32* %6, align 4
  br label %181

181:                                              ; preds = %174, %90, %74, %41
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i32* @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i64 @cmsFormatterForColorspaceOfProfile(i32, i32*, i32, i32) #1

declare dso_local i64 @T_CHANNELS(i64) #1

declare dso_local i32 @cmsGetColorSpace(i32, i32*) #1

declare dso_local i32* @cmsCreateMultiprofileTransform(i32, i32**, i32, i32, i64, i64, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*) #1

declare dso_local i32* @cmsPipelineDup(i32, i32) #1

declare dso_local i32 @_cmsOptimizePipeline(i32, i32**, i64, i64*, i64*, i64*) #1

declare dso_local i32 @_cmsIOPrintf(i32, i32*, i8*, ...) #1

declare dso_local i32 @cmsDetectBlackPoint(i32, i32*, i32*, i64, i32) #1

declare dso_local i32 @EmitWhiteBlackD50(i32, i32*, i32*) #1

declare dso_local i32 @EmitPQRStage(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @EmitXYZ2Lab(i32, i32*) #1

declare dso_local i32 @WriteCLUT(i32, i32*, i32, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @cmsPipelineGetPtrToFirstStage(i32, i32*) #1

declare dso_local i32 @EmitIntent(i32, i32*, i64) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

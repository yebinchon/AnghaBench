; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsgmt.c__cmsCreateGamutCheckPipeline.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsgmt.c__cmsCreateGamutCheckPipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i8*, i8*, i8* }

@cmsERROR_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Wrong position of PCS. 1..255 expected, %d found.\00", align 1
@ERR_THERESHOLD = common dso_local global double 0.000000e+00, align 8
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@cmsFLAGS_HIGHRESPRECALC = common dso_local global i32 0, align 4
@TYPE_Lab_DBL = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@GamutSampler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @_cmsCreateGamutCheckPipeline(i32 %0, i32** %1, i64* %2, i32* %3, double* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_3__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [256 x i32*], align 16
  %26 = alloca [256 x i64], align 16
  %27 = alloca [256 x double], align 16
  %28 = alloca [256 x i32], align 16
  store i32 %0, i32* %9, align 4
  store i32** %1, i32*** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32* %3, i32** %12, align 8
  store double* %4, double** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %29 = call i32 @memset(%struct.TYPE_3__* %20, i32 0, i32 32)
  %30 = load i32, i32* %14, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %7
  %33 = load i32, i32* %14, align 4
  %34 = icmp sgt i32 %33, 255
  br i1 %34, label %35, label %40

35:                                               ; preds = %32, %7
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @cmsERROR_RANGE, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @cmsSignalError(i32 %36, i32 %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32* null, i32** %8, align 8
  br label %236

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = call i32* @cmsCreateLab4Profile(i32 %41, i32* null)
  store i32* %42, i32** %16, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32* null, i32** %8, align 8
  br label %236

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = call i64 @cmsIsMatrixShaper(i32 %47, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store double 1.000000e+00, double* %52, align 8
  br label %56

53:                                               ; preds = %46
  %54 = load double, double* @ERR_THERESHOLD, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store double %54, double* %55, align 8
  br label %56

56:                                               ; preds = %53, %51
  store i32 0, i32* %24, align 4
  br label %57

57:                                               ; preds = %94, %56
  %58 = load i32, i32* %24, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %97

61:                                               ; preds = %57
  %62 = load i32**, i32*** %10, align 8
  %63 = load i32, i32* %24, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %24, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [256 x i32*], [256 x i32*]* %25, i64 0, i64 %68
  store i32* %66, i32** %69, align 8
  %70 = load i64*, i64** %11, align 8
  %71 = load i32, i32* %24, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %24, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [256 x i64], [256 x i64]* %26, i64 0, i64 %76
  store i64 %74, i64* %77, align 8
  %78 = load double*, double** %13, align 8
  %79 = load i32, i32* %24, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  %82 = load double, double* %81, align 8
  %83 = load i32, i32* %24, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [256 x double], [256 x double]* %27, i64 0, i64 %84
  store double %82, double* %85, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %24, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %24, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [256 x i32], [256 x i32]* %28, i64 0, i64 %92
  store i32 %90, i32* %93, align 4
  br label %94

94:                                               ; preds = %61
  %95 = load i32, i32* %24, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %24, align 4
  br label %57

97:                                               ; preds = %57
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [256 x i32*], [256 x i32*]* %25, i64 0, i64 %100
  store i32* %98, i32** %101, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [256 x i64], [256 x i64]* %26, i64 0, i64 %103
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [256 x double], [256 x double]* %27, i64 0, i64 %106
  store double 1.000000e+00, double* %107, align 8
  %108 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [256 x i32], [256 x i32]* %28, i64 0, i64 %110
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** %15, align 8
  %114 = call i32 @cmsGetColorSpace(i32 %112, i32* %113)
  store i32 %114, i32* %23, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %23, align 4
  %117 = call i32 @cmsChannelsOf(i32 %115, i32 %116)
  store i32 %117, i32* %21, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %23, align 4
  %120 = load i32, i32* @cmsFLAGS_HIGHRESPRECALC, align 4
  %121 = call i32 @_cmsReasonableGridpointsByColorspace(i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %22, align 4
  %122 = load i32, i32* %21, align 4
  %123 = call i32 @CHANNELS_SH(i32 %122)
  %124 = call i32 @BYTES_SH(i32 2)
  %125 = or i32 %123, %124
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  %129 = getelementptr inbounds [256 x i32*], [256 x i32*]* %25, i64 0, i64 0
  %130 = getelementptr inbounds [256 x i64], [256 x i64]* %26, i64 0, i64 0
  %131 = getelementptr inbounds [256 x i32], [256 x i32]* %28, i64 0, i64 0
  %132 = getelementptr inbounds [256 x double], [256 x double]* %27, i64 0, i64 0
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* @TYPE_Lab_DBL, align 4
  %135 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %136 = call i8* @cmsCreateExtendedTransform(i32 %126, i32 %128, i32** %129, i64* %130, i32* %131, double* %132, i32* null, i32 0, i32 %133, i32 %134, i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store i8* %136, i8** %137, align 8
  %138 = load i32, i32* %21, align 4
  %139 = call i32 @CHANNELS_SH(i32 %138)
  %140 = call i32 @BYTES_SH(i32 2)
  %141 = or i32 %139, %140
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32*, i32** %16, align 8
  %144 = load i32, i32* @TYPE_Lab_DBL, align 4
  %145 = load i32*, i32** %15, align 8
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %148 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %149 = call i8* @cmsCreateTransform(i32 %142, i32* %143, i32 %144, i32* %145, i32 %146, i32 %147, i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i8* %149, i8** %150, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i32*, i32** %15, align 8
  %153 = load i32, i32* %19, align 4
  %154 = load i32*, i32** %16, align 8
  %155 = load i32, i32* @TYPE_Lab_DBL, align 4
  %156 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %157 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %158 = call i8* @cmsCreateTransform(i32 %151, i32* %152, i32 %153, i32* %154, i32 %155, i32 %156, i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i8* %158, i8** %159, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %199

163:                                              ; preds = %97
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %199

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %199

171:                                              ; preds = %167
  %172 = load i32, i32* %9, align 4
  %173 = call i32* @cmsPipelineAlloc(i32 %172, i32 3, i32 1)
  store i32* %173, i32** %17, align 8
  %174 = load i32*, i32** %17, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %198

176:                                              ; preds = %171
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %22, align 4
  %179 = load i32, i32* %21, align 4
  %180 = call i32* @cmsStageAllocCLut16bit(i32 %177, i32 %178, i32 %179, i32 1, i32* null)
  store i32* %180, i32** %18, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32*, i32** %17, align 8
  %183 = load i32, i32* @cmsAT_BEGIN, align 4
  %184 = load i32*, i32** %18, align 8
  %185 = call i32 @cmsPipelineInsertStage(i32 %181, i32* %182, i32 %183, i32* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %176
  %188 = load i32, i32* %9, align 4
  %189 = load i32*, i32** %17, align 8
  %190 = call i32 @cmsPipelineFree(i32 %188, i32* %189)
  store i32* null, i32** %17, align 8
  br label %197

191:                                              ; preds = %176
  %192 = load i32, i32* %9, align 4
  %193 = load i32*, i32** %18, align 8
  %194 = load i32, i32* @GamutSampler, align 4
  %195 = bitcast %struct.TYPE_3__* %20 to i8*
  %196 = call i32 @cmsStageSampleCLut16bit(i32 %192, i32* %193, i32 %194, i8* %195, i32 0)
  br label %197

197:                                              ; preds = %191, %187
  br label %198

198:                                              ; preds = %197, %171
  br label %200

199:                                              ; preds = %167, %163, %97
  store i32* null, i32** %17, align 8
  br label %200

200:                                              ; preds = %199, %198
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %202 = load i8*, i8** %201, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = load i32, i32* %9, align 4
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @cmsDeleteTransform(i32 %205, i8* %207)
  br label %209

209:                                              ; preds = %204, %200
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %209
  %214 = load i32, i32* %9, align 4
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @cmsDeleteTransform(i32 %214, i8* %216)
  br label %218

218:                                              ; preds = %213, %209
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %227

222:                                              ; preds = %218
  %223 = load i32, i32* %9, align 4
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @cmsDeleteTransform(i32 %223, i8* %225)
  br label %227

227:                                              ; preds = %222, %218
  %228 = load i32*, i32** %16, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load i32, i32* %9, align 4
  %232 = load i32*, i32** %16, align 8
  %233 = call i32 @cmsCloseProfile(i32 %231, i32* %232)
  br label %234

234:                                              ; preds = %230, %227
  %235 = load i32*, i32** %17, align 8
  store i32* %235, i32** %8, align 8
  br label %236

236:                                              ; preds = %234, %45, %35
  %237 = load i32*, i32** %8, align 8
  ret i32* %237
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*, i32) #1

declare dso_local i32* @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i64 @cmsIsMatrixShaper(i32, i32*) #1

declare dso_local i32 @cmsGetColorSpace(i32, i32*) #1

declare dso_local i32 @cmsChannelsOf(i32, i32) #1

declare dso_local i32 @_cmsReasonableGridpointsByColorspace(i32, i32, i32) #1

declare dso_local i32 @CHANNELS_SH(i32) #1

declare dso_local i32 @BYTES_SH(i32) #1

declare dso_local i8* @cmsCreateExtendedTransform(i32, i32, i32**, i64*, i32*, double*, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @cmsCreateTransform(i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i32* @cmsStageAllocCLut16bit(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32*) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

declare dso_local i32 @cmsStageSampleCLut16bit(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i8*) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

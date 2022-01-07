; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_TransformImage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_TransformImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Width = common dso_local global i32 0, align 4
@ObserverAdaptationState = common dso_local global i32 0, align 4
@EmbedProfile = common dso_local global i64 0, align 8
@cOutProf = common dso_local global i8* null, align 8
@BlackWhiteCompensation = common dso_local global i64 0, align 8
@cmsFLAGS_BLACKPOINTCOMPENSATION = common dso_local global i32 0, align 4
@PrecalcMode = common dso_local global i32 0, align 4
@cmsFLAGS_NOOPTIMIZE = common dso_local global i32 0, align 4
@cmsFLAGS_HIGHRESPRECALC = common dso_local global i32 0, align 4
@cmsFLAGS_LOWRESPRECALC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unknown precalculation mode '%d'\00", align 1
@GamutCheck = common dso_local global i64 0, align 8
@cmsFLAGS_GAMUTCHECK = common dso_local global i32 0, align 4
@lIsDeviceLink = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@cProofing = common dso_local global i8* null, align 8
@cmsFLAGS_SOFTPROOFING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Input profile is not operating in proper color space\00", align 1
@InkLimit = common dso_local global double 0.000000e+00, align 8
@PT_CMYK = common dso_local global i32 0, align 4
@PT_CMY = common dso_local global i32 0, align 4
@Intent = common dso_local global i32 0, align 4
@ProofingIntent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @TransformImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TransformImage(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [10 x i32*], align 16
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %11, align 8
  %21 = load i32, i32* @Width, align 4
  %22 = sdiv i32 %21, 8
  store i32 %22, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load i32, i32* @ObserverAdaptationState, align 4
  %24 = call i32 @cmsSetAdaptationState(i32 %23)
  %25 = load i64, i64* @EmbedProfile, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load i8*, i8** @cOutProf, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** @cOutProf, align 8
  %33 = call i32 @DoEmbedProfile(i32* %31, i8* %32)
  br label %34

34:                                               ; preds = %30, %27, %3
  %35 = load i64, i64* @BlackWhiteCompensation, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @cmsFLAGS_BLACKPOINTCOMPENSATION, align 4
  %39 = load i32, i32* %17, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %17, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* @PrecalcMode, align 4
  switch i32 %42, label %56 [
    i32 0, label %43
    i32 2, label %47
    i32 3, label %51
    i32 1, label %55
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %45 = load i32, i32* %17, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %17, align 4
  br label %59

47:                                               ; preds = %41
  %48 = load i32, i32* @cmsFLAGS_HIGHRESPRECALC, align 4
  %49 = load i32, i32* %17, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %17, align 4
  br label %59

51:                                               ; preds = %41
  %52 = load i32, i32* @cmsFLAGS_LOWRESPRECALC, align 4
  %53 = load i32, i32* %17, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %17, align 4
  br label %59

55:                                               ; preds = %41
  br label %59

56:                                               ; preds = %41
  %57 = load i32, i32* @PrecalcMode, align 4
  %58 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %55, %51, %47, %43
  %60 = load i64, i64* @GamutCheck, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @cmsFLAGS_GAMUTCHECK, align 4
  %64 = load i32, i32* %17, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %62, %59
  store i32* null, i32** %10, align 8
  store i32* null, i32** %9, align 8
  %67 = load i64, i64* @lIsDeviceLink, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i8*, i8** %7, align 8
  %71 = call i32* @cmsOpenProfileFromFile(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %71, i32** %8, align 8
  br label %92

72:                                               ; preds = %66
  %73 = load i32*, i32** %5, align 8
  %74 = call i32* @GetTIFFProfile(i32* %73)
  store i32* %74, i32** %8, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %7, align 8
  %79 = call i32* @OpenStockProfile(i32* null, i8* %78)
  store i32* %79, i32** %8, align 8
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i8*, i8** @cOutProf, align 8
  %82 = call i32* @OpenStockProfile(i32* null, i8* %81)
  store i32* %82, i32** %9, align 8
  %83 = load i8*, i8** @cProofing, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i8*, i8** @cProofing, align 8
  %87 = call i32* @OpenStockProfile(i32* null, i8* %86)
  store i32* %87, i32** %10, align 8
  %88 = load i32, i32* @cmsFLAGS_SOFTPROOFING, align 4
  %89 = load i32, i32* %17, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %85, %80
  br label %92

92:                                               ; preds = %91, %69
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @GetInputPixelType(i32* %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @cmsGetColorSpace(i32* null, i32* %95)
  %97 = call i32 @_cmsLCMScolorSpace(i32* null, i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = call i64 @T_COLORSPACE(i32 %98)
  %100 = trunc i64 %99 to i32
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %92
  %105 = load i64, i64* @lIsDeviceLink, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @cmsGetColorSpace(i32* null, i32* %108)
  %110 = call i32 @_cmsLCMScolorSpace(i32* null, i32 %109)
  store i32 %110, i32* %15, align 4
  br label %115

111:                                              ; preds = %104
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @cmsGetPCS(i32* null, i32* %112)
  %114 = call i32 @_cmsLCMScolorSpace(i32* null, i32 %113)
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @ComputeOutputFormatDescriptor(i32 %116, i32 %117, i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @WriteOutputTags(i32* %120, i32 %121, i32 %122)
  %124 = load i32*, i32** %5, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @CopyOtherTags(i32* %124, i32* %125)
  %127 = load double, double* @InkLimit, align 8
  %128 = fcmp une double %127, 4.000000e+02
  br i1 %128, label %129, label %178

129:                                              ; preds = %115
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @PT_CMYK, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @PT_CMY, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %178

137:                                              ; preds = %133, %129
  store i32 0, i32* %20, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = call i32 @cmsGetColorSpace(i32* null, i32* %138)
  %140 = load double, double* @InkLimit, align 8
  %141 = call i32* @cmsCreateInkLimitingDeviceLink(i32 %139, double %140)
  store i32* %141, i32** %11, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %20, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %20, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds [10 x i32*], [10 x i32*]* %19, i64 0, i64 %145
  store i32* %142, i32** %146, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %160

149:                                              ; preds = %137
  %150 = load i32*, i32** %10, align 8
  %151 = load i32, i32* %20, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %20, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds [10 x i32*], [10 x i32*]* %19, i64 0, i64 %153
  store i32* %150, i32** %154, align 8
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %20, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %20, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds [10 x i32*], [10 x i32*]* %19, i64 0, i64 %158
  store i32* %155, i32** %159, align 8
  br label %160

160:                                              ; preds = %149, %137
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %20, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %20, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds [10 x i32*], [10 x i32*]* %19, i64 0, i64 %164
  store i32* %161, i32** %165, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = load i32, i32* %20, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %20, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds [10 x i32*], [10 x i32*]* %19, i64 0, i64 %169
  store i32* %166, i32** %170, align 8
  %171 = getelementptr inbounds [10 x i32*], [10 x i32*]* %19, i64 0, i64 0
  %172 = load i32, i32* %20, align 4
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* @Intent, align 4
  %176 = load i32, i32* %17, align 4
  %177 = call i32* @cmsCreateMultiprofileTransform(i32** %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176)
  store i32* %177, i32** %12, align 8
  br label %188

178:                                              ; preds = %133, %115
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* %13, align 4
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %14, align 4
  %183 = load i32*, i32** %10, align 8
  %184 = load i32, i32* @Intent, align 4
  %185 = load i32, i32* @ProofingIntent, align 4
  %186 = load i32, i32* %17, align 4
  %187 = call i32* @cmsCreateProofingTransform(i32* %179, i32 %180, i32* %181, i32 %182, i32* %183, i32 %184, i32 %185, i32 %186)
  store i32* %187, i32** %12, align 8
  br label %188

188:                                              ; preds = %178, %160
  %189 = load i32*, i32** %8, align 8
  %190 = call i32 @cmsCloseProfile(i32* null, i32* %189)
  %191 = load i32*, i32** %9, align 8
  %192 = call i32 @cmsCloseProfile(i32* null, i32* %191)
  %193 = load i32*, i32** %11, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = load i32*, i32** %11, align 8
  %197 = call i32 @cmsCloseProfile(i32* null, i32* %196)
  br label %198

198:                                              ; preds = %195, %188
  %199 = load i32*, i32** %10, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32*, i32** %10, align 8
  %203 = call i32 @cmsCloseProfile(i32* null, i32* %202)
  br label %204

204:                                              ; preds = %201, %198
  %205 = load i32*, i32** %12, align 8
  %206 = icmp eq i32* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  store i32 0, i32* %4, align 4
  br label %240

208:                                              ; preds = %204
  %209 = load i32, i32* %13, align 4
  %210 = call i64 @T_PLANAR(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %208
  %213 = load i32, i32* %13, align 4
  %214 = call i32 @T_CHANNELS(i32 %213)
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @T_EXTRA(i32 %215)
  %217 = add nsw i32 %214, %216
  store i32 %217, i32* %18, align 4
  br label %219

218:                                              ; preds = %208
  store i32 1, i32* %18, align 4
  br label %219

219:                                              ; preds = %218, %212
  %220 = load i32*, i32** %5, align 8
  %221 = call i64 @TIFFIsTiled(i32* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = load i32*, i32** %12, align 8
  %225 = load i32*, i32** %5, align 8
  %226 = load i32*, i32** %6, align 8
  %227 = load i32, i32* %18, align 4
  %228 = call i32 @TileBasedXform(i32* %224, i32* %225, i32* %226, i32 %227)
  br label %235

229:                                              ; preds = %219
  %230 = load i32*, i32** %12, align 8
  %231 = load i32*, i32** %5, align 8
  %232 = load i32*, i32** %6, align 8
  %233 = load i32, i32* %18, align 4
  %234 = call i32 @StripBasedXform(i32* %230, i32* %231, i32* %232, i32 %233)
  br label %235

235:                                              ; preds = %229, %223
  %236 = load i32*, i32** %12, align 8
  %237 = call i32 @cmsDeleteTransform(i32* null, i32* %236)
  %238 = load i32*, i32** %6, align 8
  %239 = call i32 @TIFFWriteDirectory(i32* %238)
  store i32 1, i32* %4, align 4
  br label %240

240:                                              ; preds = %235, %207
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i32 @cmsSetAdaptationState(i32) #1

declare dso_local i32 @DoEmbedProfile(i32*, i8*) #1

declare dso_local i32 @FatalError(i8*, ...) #1

declare dso_local i32* @cmsOpenProfileFromFile(i8*, i8*) #1

declare dso_local i32* @GetTIFFProfile(i32*) #1

declare dso_local i32* @OpenStockProfile(i32*, i8*) #1

declare dso_local i32 @GetInputPixelType(i32*) #1

declare dso_local i32 @_cmsLCMScolorSpace(i32*, i32) #1

declare dso_local i32 @cmsGetColorSpace(i32*, i32*) #1

declare dso_local i64 @T_COLORSPACE(i32) #1

declare dso_local i32 @cmsGetPCS(i32*, i32*) #1

declare dso_local i32 @ComputeOutputFormatDescriptor(i32, i32, i32) #1

declare dso_local i32 @WriteOutputTags(i32*, i32, i32) #1

declare dso_local i32 @CopyOtherTags(i32*, i32*) #1

declare dso_local i32* @cmsCreateInkLimitingDeviceLink(i32, double) #1

declare dso_local i32* @cmsCreateMultiprofileTransform(i32**, i32, i32, i32, i32, i32) #1

declare dso_local i32* @cmsCreateProofingTransform(i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32*, i32*) #1

declare dso_local i64 @T_PLANAR(i32) #1

declare dso_local i32 @T_CHANNELS(i32) #1

declare dso_local i32 @T_EXTRA(i32) #1

declare dso_local i64 @TIFFIsTiled(i32*) #1

declare dso_local i32 @TileBasedXform(i32*, i32*, i32*, i32) #1

declare dso_local i32 @StripBasedXform(i32*, i32*, i32*, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32*, i32*) #1

declare dso_local i32 @TIFFWriteDirectory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

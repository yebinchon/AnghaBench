; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CreateFakeCMYK.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CreateFakeCMYK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8* }

@cmsSigCmykData = common dso_local global i32 0, align 4
@TYPE_Lab_16 = common dso_local global i32 0, align 4
@TYPE_RGB_DBL = common dso_local global i32 0, align 4
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@cmsFLAGS_NOOPTIMIZE = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@TYPE_CMYK_16 = common dso_local global i32 0, align 4
@cmsSigOutputClass = common dso_local global i32 0, align 4
@cmsSigLabData = common dso_local global i32 0, align 4
@ForwardSampler = common dso_local global i32 0, align 4
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@cmsAT_END = common dso_local global i32 0, align 4
@cmsSigBToA0Tag = common dso_local global i32 0, align 4
@ReverseSampler = common dso_local global i32 0, align 4
@cmsSigAToB0Tag = common dso_local global i32 0, align 4
@cmsSigAToB1Tag = common dso_local global i32 0, align 4
@cmsSigAToB2Tag = common dso_local global i32 0, align 4
@cmsSigBToA1Tag = common dso_local global i32 0, align 4
@cmsSigBToA2Tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i64)* @CreateFakeCMYK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CreateFakeCMYK(i32 %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %16 = call i32 (...) @DbgThread()
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32* (...) @Create_AboveRGB()
  store i32* %20, i32** %13, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  %23 = call i32* @cmsCreate_sRGBProfile(i32 %22)
  store i32* %23, i32** %13, align 8
  br label %24

24:                                               ; preds = %21, %19
  %25 = load i32, i32* %10, align 4
  %26 = call i32* @cmsCreateLab4Profile(i32 %25, i32* null)
  store i32* %26, i32** %12, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @cmsSigCmykData, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32* @cmsCreateInkLimitingDeviceLink(i32 %27, i32 %28, i32 %29)
  store i32* %30, i32** %14, align 8
  %31 = call i32 @FLOAT_SH(i32 1)
  %32 = call i32 @BYTES_SH(i32 0)
  %33 = or i32 %31, %32
  %34 = call i32 @CHANNELS_SH(i32 4)
  %35 = or i32 %33, %34
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* @TYPE_Lab_16, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* @TYPE_RGB_DBL, align 4
  %41 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %42 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %43 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %44 = or i32 %42, %43
  %45 = call i8* @cmsCreateTransform(i32 %36, i32* %37, i32 %38, i32* %39, i32 %40, i32 %41, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* @TYPE_RGB_DBL, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* @TYPE_Lab_16, align 4
  %52 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %53 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %54 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %55 = or i32 %53, %54
  %56 = call i8* @cmsCreateTransform(i32 %47, i32* %48, i32 %49, i32* %50, i32 %51, i32 %52, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @TYPE_CMYK_16, align 4
  %62 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %63 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %64 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %65 = or i32 %63, %64
  %66 = call i8* @cmsCreateTransform(i32 %58, i32* %59, i32 %60, i32* null, i32 %61, i32 %62, i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @cmsCloseProfile(i32 %68, i32* %69)
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @cmsCloseProfile(i32 %71, i32* %72)
  %74 = load i32, i32* %10, align 4
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @cmsCloseProfile(i32 %74, i32* %75)
  %77 = load i32, i32* %10, align 4
  %78 = call i32* @cmsCreateProfilePlaceholder(i32 %77)
  store i32* %78, i32** %6, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %24
  store i32* null, i32** %3, align 8
  br label %227

82:                                               ; preds = %24
  %83 = load i32, i32* %10, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @cmsSetProfileVersion(i32 %83, i32* %84, double 4.300000e+00)
  %86 = load i32, i32* %10, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* @cmsSigOutputClass, align 4
  %89 = call i32 @cmsSetDeviceClass(i32 %86, i32* %87, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* @cmsSigCmykData, align 4
  %93 = call i32 @cmsSetColorSpace(i32 %90, i32* %91, i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* @cmsSigLabData, align 4
  %97 = call i32 @cmsSetPCS(i32 %94, i32* %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i32* @cmsPipelineAlloc(i32 %98, i32 3, i32 4)
  store i32* %99, i32** %8, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %82
  store i32* null, i32** %3, align 8
  br label %227

103:                                              ; preds = %82
  %104 = load i32, i32* %10, align 4
  %105 = call i32* @cmsStageAllocCLut16bit(i32 %104, i32 17, i32 3, i32 4, i32* null)
  store i32* %105, i32** %9, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32* null, i32** %3, align 8
  br label %227

109:                                              ; preds = %103
  %110 = load i32, i32* %10, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* @ForwardSampler, align 4
  %113 = call i32 @cmsStageSampleCLut16bit(i32 %110, i32* %111, i32 %112, %struct.TYPE_3__* %11, i32 0)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  store i32* null, i32** %3, align 8
  br label %227

116:                                              ; preds = %109
  %117 = load i32, i32* %10, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* @cmsAT_BEGIN, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32* @_cmsStageAllocIdentityCurves(i32 %120, i32 3)
  %122 = call i32 @cmsPipelineInsertStage(i32 %117, i32* %118, i32 %119, i32* %121)
  %123 = load i32, i32* %10, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* @cmsAT_END, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @cmsPipelineInsertStage(i32 %123, i32* %124, i32 %125, i32* %126)
  %128 = load i32, i32* %10, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* @cmsAT_END, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32* @_cmsStageAllocIdentityCurves(i32 %131, i32 4)
  %133 = call i32 @cmsPipelineInsertStage(i32 %128, i32* %129, i32 %130, i32* %132)
  %134 = load i32, i32* %10, align 4
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* @cmsSigBToA0Tag, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = bitcast i32* %137 to i8*
  %139 = call i32 @cmsWriteTag(i32 %134, i32* %135, i32 %136, i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %116
  store i32* null, i32** %3, align 8
  br label %227

142:                                              ; preds = %116
  %143 = load i32, i32* %10, align 4
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 @cmsPipelineFree(i32 %143, i32* %144)
  %146 = load i32, i32* %10, align 4
  %147 = call i32* @cmsPipelineAlloc(i32 %146, i32 4, i32 3)
  store i32* %147, i32** %7, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  store i32* null, i32** %3, align 8
  br label %227

151:                                              ; preds = %142
  %152 = load i32, i32* %10, align 4
  %153 = call i32* @cmsStageAllocCLut16bit(i32 %152, i32 17, i32 4, i32 3, i32* null)
  store i32* %153, i32** %9, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32* null, i32** %3, align 8
  br label %227

157:                                              ; preds = %151
  %158 = load i32, i32* %10, align 4
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* @ReverseSampler, align 4
  %161 = call i32 @cmsStageSampleCLut16bit(i32 %158, i32* %159, i32 %160, %struct.TYPE_3__* %11, i32 0)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %157
  store i32* null, i32** %3, align 8
  br label %227

164:                                              ; preds = %157
  %165 = load i32, i32* %10, align 4
  %166 = load i32*, i32** %7, align 8
  %167 = load i32, i32* @cmsAT_BEGIN, align 4
  %168 = load i32, i32* %10, align 4
  %169 = call i32* @_cmsStageAllocIdentityCurves(i32 %168, i32 4)
  %170 = call i32 @cmsPipelineInsertStage(i32 %165, i32* %166, i32 %167, i32* %169)
  %171 = load i32, i32* %10, align 4
  %172 = load i32*, i32** %7, align 8
  %173 = load i32, i32* @cmsAT_END, align 4
  %174 = load i32*, i32** %9, align 8
  %175 = call i32 @cmsPipelineInsertStage(i32 %171, i32* %172, i32 %173, i32* %174)
  %176 = load i32, i32* %10, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* @cmsAT_END, align 4
  %179 = load i32, i32* %10, align 4
  %180 = call i32* @_cmsStageAllocIdentityCurves(i32 %179, i32 3)
  %181 = call i32 @cmsPipelineInsertStage(i32 %176, i32* %177, i32 %178, i32* %180)
  %182 = load i32, i32* %10, align 4
  %183 = load i32*, i32** %6, align 8
  %184 = load i32, i32* @cmsSigAToB0Tag, align 4
  %185 = load i32*, i32** %7, align 8
  %186 = bitcast i32* %185 to i8*
  %187 = call i32 @cmsWriteTag(i32 %182, i32* %183, i32 %184, i8* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %164
  store i32* null, i32** %3, align 8
  br label %227

190:                                              ; preds = %164
  %191 = load i32, i32* %10, align 4
  %192 = load i32*, i32** %7, align 8
  %193 = call i32 @cmsPipelineFree(i32 %191, i32* %192)
  %194 = load i32, i32* %10, align 4
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @cmsDeleteTransform(i32 %194, i8* %196)
  %198 = load i32, i32* %10, align 4
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @cmsDeleteTransform(i32 %198, i8* %200)
  %202 = load i32, i32* %10, align 4
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @cmsDeleteTransform(i32 %202, i8* %204)
  %206 = load i32, i32* %10, align 4
  %207 = load i32*, i32** %6, align 8
  %208 = load i32, i32* @cmsSigAToB1Tag, align 4
  %209 = load i32, i32* @cmsSigAToB0Tag, align 4
  %210 = call i32 @cmsLinkTag(i32 %206, i32* %207, i32 %208, i32 %209)
  %211 = load i32, i32* %10, align 4
  %212 = load i32*, i32** %6, align 8
  %213 = load i32, i32* @cmsSigAToB2Tag, align 4
  %214 = load i32, i32* @cmsSigAToB0Tag, align 4
  %215 = call i32 @cmsLinkTag(i32 %211, i32* %212, i32 %213, i32 %214)
  %216 = load i32, i32* %10, align 4
  %217 = load i32*, i32** %6, align 8
  %218 = load i32, i32* @cmsSigBToA1Tag, align 4
  %219 = load i32, i32* @cmsSigBToA0Tag, align 4
  %220 = call i32 @cmsLinkTag(i32 %216, i32* %217, i32 %218, i32 %219)
  %221 = load i32, i32* %10, align 4
  %222 = load i32*, i32** %6, align 8
  %223 = load i32, i32* @cmsSigBToA2Tag, align 4
  %224 = load i32, i32* @cmsSigBToA0Tag, align 4
  %225 = call i32 @cmsLinkTag(i32 %221, i32* %222, i32 %223, i32 %224)
  %226 = load i32*, i32** %6, align 8
  store i32* %226, i32** %3, align 8
  br label %227

227:                                              ; preds = %190, %189, %163, %156, %150, %141, %115, %108, %102, %81
  %228 = load i32*, i32** %3, align 8
  ret i32* %228
}

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32* @Create_AboveRGB(...) #1

declare dso_local i32* @cmsCreate_sRGBProfile(i32) #1

declare dso_local i32* @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i32* @cmsCreateInkLimitingDeviceLink(i32, i32, i32) #1

declare dso_local i32 @FLOAT_SH(i32) #1

declare dso_local i32 @BYTES_SH(i32) #1

declare dso_local i32 @CHANNELS_SH(i32) #1

declare dso_local i8* @cmsCreateTransform(i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

declare dso_local i32* @cmsCreateProfilePlaceholder(i32) #1

declare dso_local i32 @cmsSetProfileVersion(i32, i32*, double) #1

declare dso_local i32 @cmsSetDeviceClass(i32, i32*, i32) #1

declare dso_local i32 @cmsSetColorSpace(i32, i32*, i32) #1

declare dso_local i32 @cmsSetPCS(i32, i32*, i32) #1

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i32* @cmsStageAllocCLut16bit(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cmsStageSampleCLut16bit(i32, i32*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32*) #1

declare dso_local i32* @_cmsStageAllocIdentityCurves(i32, i32) #1

declare dso_local i32 @cmsWriteTag(i32, i32*, i32, i8*) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

declare dso_local i32 @cmsDeleteTransform(i32, i8*) #1

declare dso_local i32 @cmsLinkTag(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

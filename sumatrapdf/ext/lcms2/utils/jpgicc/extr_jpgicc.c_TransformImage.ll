; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_TransformImage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_TransformImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ObserverAdaptationState = common dso_local global i32 0, align 4
@BlackPointCompensation = common dso_local global i64 0, align 8
@cmsFLAGS_BLACKPOINTCOMPENSATION = common dso_local global i32 0, align 4
@PrecalcMode = common dso_local global i32 0, align 4
@cmsFLAGS_NOOPTIMIZE = common dso_local global i32 0, align 4
@cmsFLAGS_HIGHRESPRECALC = common dso_local global i32 0, align 4
@cmsFLAGS_LOWRESPRECALC = common dso_local global i32 0, align 4
@GamutCheck = common dso_local global i64 0, align 8
@cmsFLAGS_GAMUTCHECK = common dso_local global i32 0, align 4
@Alarm = common dso_local global i32 0, align 4
@lIsDeviceLink = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@IgnoreEmbedded = common dso_local global i32 0, align 4
@Decompressor = common dso_local global i32 0, align 4
@Verbose = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c" (Embedded profile found)\0A\00", align 1
@SaveEmbedded = common dso_local global i32* null, align 8
@PT_Lab = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"*Lab\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"*lab\00", align 1
@cProofing = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"Proofing profile couldn't be read.\00", align 1
@cmsFLAGS_SOFTPROOFING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Input profile couldn't be read.\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Output profile couldn't be read.\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Input profile is not operating in proper color space\00", align 1
@Compressor = common dso_local global i32 0, align 4
@Intent = common dso_local global i32 0, align 4
@ProofingIntent = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Cannot transform by using the profiles\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @TransformImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TransformImage(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @ObserverAdaptationState, align 4
  %16 = call i32 @cmsSetAdaptationState(i32 %15)
  %17 = load i64, i64* @BlackPointCompensation, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @cmsFLAGS_BLACKPOINTCOMPENSATION, align 4
  %21 = load i32, i32* %12, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* @PrecalcMode, align 4
  switch i32 %24, label %37 [
    i32 0, label %25
    i32 2, label %29
    i32 3, label %33
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %27 = load i32, i32* %12, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %12, align 4
  br label %38

29:                                               ; preds = %23
  %30 = load i32, i32* @cmsFLAGS_HIGHRESPRECALC, align 4
  %31 = load i32, i32* %12, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %12, align 4
  br label %38

33:                                               ; preds = %23
  %34 = load i32, i32* @cmsFLAGS_LOWRESPRECALC, align 4
  %35 = load i32, i32* %12, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %12, align 4
  br label %38

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %33, %29, %25
  %39 = load i64, i64* @GamutCheck, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* @cmsFLAGS_GAMUTCHECK, align 4
  %43 = load i32, i32* %12, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* @Alarm, align 4
  %46 = call i32 @cmsSetAlarmCodes(i32 %45)
  br label %47

47:                                               ; preds = %41, %38
  %48 = call i32 (...) @GetInputPixelType()
  store i32 %48, i32* %9, align 4
  %49 = load i64, i64* @lIsDeviceLink, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** %3, align 8
  %53 = call i32* @cmsOpenProfileFromFile(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %53, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  br label %136

54:                                               ; preds = %47
  %55 = load i32, i32* @IgnoreEmbedded, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %87, label %57

57:                                               ; preds = %54
  %58 = call i64 @read_icc_profile(i32* @Decompressor, i32** %14, i32* %13)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %57
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32* @cmsOpenProfileFromMem(i32* %61, i32 %62)
  store i32* %63, i32** %5, align 8
  %64 = load i64, i64* @Verbose, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* @stdout, align 4
  %68 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @PrintProfileInformation(i32* null, i32* %69)
  %71 = load i32, i32* @stdout, align 4
  %72 = call i32 @fflush(i32 %71)
  br label %73

73:                                               ; preds = %66, %60
  %74 = load i32*, i32** %5, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32*, i32** @SaveEmbedded, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32*, i32** @SaveEmbedded, align 8
  %83 = call i32 @SaveMemoryBlock(i32* %80, i32 %81, i32* %82)
  br label %84

84:                                               ; preds = %79, %76, %73
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @free(i32* %85)
  br label %109

87:                                               ; preds = %57, %54
  %88 = load i8*, i8** %3, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i32, i32* %9, align 4
  %92 = call i64 @T_COLORSPACE(i32 %91)
  %93 = load i64, i64* @PT_Lab, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %96

96:                                               ; preds = %95, %90, %87
  %97 = load i8*, i8** %3, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i8*, i8** %3, align 8
  %101 = call i64 @cmsstrcasecmp(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i32* (...) @CreateITU2PCS_ICC()
  store i32* %104, i32** %5, align 8
  br label %108

105:                                              ; preds = %99, %96
  %106 = load i8*, i8** %3, align 8
  %107 = call i32* @OpenStockProfile(i32 0, i8* %106)
  store i32* %107, i32** %5, align 8
  br label %108

108:                                              ; preds = %105, %103
  br label %109

109:                                              ; preds = %108, %84
  %110 = load i8*, i8** %4, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i8*, i8** %4, align 8
  %114 = call i64 @cmsstrcasecmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = call i32* (...) @CreatePCS2ITU_ICC()
  store i32* %117, i32** %6, align 8
  br label %121

118:                                              ; preds = %112, %109
  %119 = load i8*, i8** %4, align 8
  %120 = call i32* @OpenStockProfile(i32 0, i8* %119)
  store i32* %120, i32** %6, align 8
  br label %121

121:                                              ; preds = %118, %116
  store i32* null, i32** %7, align 8
  %122 = load i8*, i8** @cProofing, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load i8*, i8** @cProofing, align 8
  %126 = call i32* @OpenStockProfile(i32 0, i8* %125)
  store i32* %126, i32** %7, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 @FatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %124
  %132 = load i32, i32* @cmsFLAGS_SOFTPROOFING, align 4
  %133 = load i32, i32* %12, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %131, %121
  br label %136

136:                                              ; preds = %135, %51
  %137 = load i32*, i32** %5, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = call i32 @FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %136
  %142 = load i64, i64* @lIsDeviceLink, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = load i32*, i32** %6, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = call i32 @FatalError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %144, %141
  %150 = load i32*, i32** %5, align 8
  %151 = call i64 @cmsGetColorSpace(i32* null, i32* %150)
  %152 = load i32, i32* %9, align 4
  %153 = call i64 @T_COLORSPACE(i32 %152)
  %154 = call i64 @_cmsICCcolorSpace(i32* null, i64 %153)
  %155 = icmp ne i64 %151, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = call i32 @FatalError(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %149
  %159 = load i64, i64* @lIsDeviceLink, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @GetDevicelinkColorSpace(i32* %162)
  store i32 %163, i32* %11, align 4
  br label %167

164:                                              ; preds = %158
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @GetProfileColorSpace(i32* %165)
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %164, %161
  %168 = call i32 @jpeg_copy_critical_parameters(i32* @Decompressor, i32* @Compressor)
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @WriteOutputFields(i32 %169)
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @ComputeOutputFormatDescriptor(i32 %171, i32 %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load i32*, i32** %7, align 8
  %179 = load i32, i32* @Intent, align 4
  %180 = load i32, i32* @ProofingIntent, align 4
  %181 = load i32, i32* %12, align 4
  %182 = call i32* @cmsCreateProofingTransform(i32* %174, i32 %175, i32* %176, i32 %177, i32* %178, i32 %179, i32 %180, i32 %181)
  store i32* %182, i32** %8, align 8
  %183 = load i32*, i32** %8, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %167
  %186 = call i32 @FatalError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %167
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @DoTransform(i32* %188, i32 %189)
  %191 = call i32 @jcopy_markers_execute(i32* @Decompressor, i32* @Compressor)
  %192 = load i32*, i32** %8, align 8
  %193 = call i32 @cmsDeleteTransform(i32* null, i32* %192)
  %194 = load i32*, i32** %5, align 8
  %195 = call i32 @cmsCloseProfile(i32* null, i32* %194)
  %196 = load i32*, i32** %6, align 8
  %197 = call i32 @cmsCloseProfile(i32* null, i32* %196)
  %198 = load i32*, i32** %7, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %187
  %201 = load i32*, i32** %7, align 8
  %202 = call i32 @cmsCloseProfile(i32* null, i32* %201)
  br label %203

203:                                              ; preds = %200, %187
  ret i32 1
}

declare dso_local i32 @cmsSetAdaptationState(i32) #1

declare dso_local i32 @cmsSetAlarmCodes(i32) #1

declare dso_local i32 @GetInputPixelType(...) #1

declare dso_local i32* @cmsOpenProfileFromFile(i8*, i8*) #1

declare dso_local i64 @read_icc_profile(i32*, i32**, i32*) #1

declare dso_local i32* @cmsOpenProfileFromMem(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @PrintProfileInformation(i32*, i32*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @SaveMemoryBlock(i32*, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @T_COLORSPACE(i32) #1

declare dso_local i64 @cmsstrcasecmp(i8*, i8*) #1

declare dso_local i32* @CreateITU2PCS_ICC(...) #1

declare dso_local i32* @OpenStockProfile(i32, i8*) #1

declare dso_local i32* @CreatePCS2ITU_ICC(...) #1

declare dso_local i32 @FatalError(i8*) #1

declare dso_local i64 @cmsGetColorSpace(i32*, i32*) #1

declare dso_local i64 @_cmsICCcolorSpace(i32*, i64) #1

declare dso_local i32 @GetDevicelinkColorSpace(i32*) #1

declare dso_local i32 @GetProfileColorSpace(i32*) #1

declare dso_local i32 @jpeg_copy_critical_parameters(i32*, i32*) #1

declare dso_local i32 @WriteOutputFields(i32) #1

declare dso_local i32 @ComputeOutputFormatDescriptor(i32, i32) #1

declare dso_local i32* @cmsCreateProofingTransform(i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @DoTransform(i32*, i32) #1

declare dso_local i32 @jcopy_markers_execute(i32*, i32*) #1

declare dso_local i32 @cmsDeleteTransform(i32*, i32*) #1

declare dso_local i32 @cmsCloseProfile(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

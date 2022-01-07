; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/linkicc/extr_linkicc.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/linkicc/extr_linkicc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"little cms ICC device link generator - v2.2 [LittleCMS %2.2f]\0A\00", align 1
@LCMS_VERSION = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"linkicc\00", align 1
@xoptind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Holy profile! what are you trying to do with so many profiles!?\00", align 1
@Verbose = common dso_local global i32 0, align 4
@InkLimit = common dso_local global double 0.000000e+00, align 8
@cmsFLAGS_KEEP_SEQUENCE = common dso_local global i32 0, align 4
@PrecalcMode = common dso_local global i32 0, align 4
@cmsFLAGS_LOWRESPRECALC = common dso_local global i32 0, align 4
@cmsFLAGS_HIGHRESPRECALC = common dso_local global i32 0, align 4
@NumOfGridPoints = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Unknown precalculation mode '%d'\00", align 1
@BlackPointCompensation = common dso_local global i64 0, align 8
@cmsFLAGS_BLACKPOINTCOMPENSATION = common dso_local global i32 0, align 4
@TagResult = common dso_local global i64 0, align 8
@cmsFLAGS_GUESSDEVICECLASS = common dso_local global i32 0, align 4
@KeepLinearization = common dso_local global i64 0, align 8
@cmsFLAGS_CLUT_PRE_LINEARIZATION = common dso_local global i32 0, align 4
@cmsFLAGS_CLUT_POST_LINEARIZATION = common dso_local global i32 0, align 4
@lUse8bits = common dso_local global i64 0, align 8
@cmsFLAGS_8BITS_DEVICELINK = common dso_local global i32 0, align 4
@ObserverAdaptationState = common dso_local global i32 0, align 4
@Intent = common dso_local global i32 0, align 4
@cmsFLAGS_NOOPTIMIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Transform creation failed\00", align 1
@Version = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Devicelink creation failed\00", align 1
@cOutProf = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"Ok\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Error saving file!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [257 x i32*], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %15 = load i32, i32* @stderr, align 4
  %16 = load double, double* @LCMS_VERSION, align 8
  %17 = fdiv double %16, 1.000000e+03
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), double %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fflush(i32 %19)
  %21 = load i32*, i32** %13, align 8
  %22 = call i32 @InitUtils(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @HandleSwitches(i32 %23, i8** %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @xoptind, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 @Help(i32 0)
  store i32 %32, i32* %3, align 4
  br label %233

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 255
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %202

38:                                               ; preds = %33
  %39 = getelementptr inbounds [257 x i32*], [257 x i32*]* %9, i64 0, i64 0
  %40 = call i32 @memset(i32** %39, i32 0, i32 2056)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %75, %38
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %41
  %46 = load i32*, i32** %13, align 8
  %47 = load i8**, i8*** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @xoptind, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %47, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32* @OpenStockProfile(i32* %46, i8* %53)
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [257 x i32*], [257 x i32*]* %9, i64 0, i64 %56
  store i32* %54, i32** %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [257 x i32*], [257 x i32*]* %9, i64 0, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  br label %202

64:                                               ; preds = %45
  %65 = load i32, i32* @Verbose, align 4
  %66 = icmp sge i32 %65, 1
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [257 x i32*], [257 x i32*]* %9, i64 0, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @PrintProfileInformation(i32* %68, i32* %72)
  br label %74

74:                                               ; preds = %67, %64
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %41

78:                                               ; preds = %41
  %79 = load double, double* @InkLimit, align 8
  %80 = fcmp une double %79, 4.000000e+02
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [257 x i32*], [257 x i32*]* %9, i64 0, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @cmsGetColorSpace(i32* %82, i32* %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load double, double* @InkLimit, align 8
  %92 = call i32* @cmsCreateInkLimitingDeviceLink(i32* %89, i32 %90, double %91)
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds [257 x i32*], [257 x i32*]* %9, i64 0, i64 %95
  store i32* %92, i32** %96, align 8
  br label %97

97:                                               ; preds = %81, %78
  %98 = load i32, i32* @cmsFLAGS_KEEP_SEQUENCE, align 4
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* @PrecalcMode, align 4
  switch i32 %99, label %117 [
    i32 0, label %100
    i32 2, label %104
    i32 1, label %108
  ]

100:                                              ; preds = %97
  %101 = load i32, i32* @cmsFLAGS_LOWRESPRECALC, align 4
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %120

104:                                              ; preds = %97
  %105 = load i32, i32* @cmsFLAGS_HIGHRESPRECALC, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %120

108:                                              ; preds = %97
  %109 = load i32, i32* @NumOfGridPoints, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* @NumOfGridPoints, align 4
  %113 = call i32 @cmsFLAGS_GRIDPOINTS(i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %111, %108
  br label %120

117:                                              ; preds = %97
  %118 = load i32, i32* @PrecalcMode, align 4
  %119 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  br label %202

120:                                              ; preds = %116, %104, %100
  %121 = load i64, i64* @BlackPointCompensation, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* @cmsFLAGS_BLACKPOINTCOMPENSATION, align 4
  %125 = load i32, i32* %11, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i64, i64* @TagResult, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32, i32* @cmsFLAGS_GUESSDEVICECLASS, align 4
  %132 = load i32, i32* %11, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %130, %127
  %135 = load i64, i64* @KeepLinearization, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32, i32* @cmsFLAGS_CLUT_PRE_LINEARIZATION, align 4
  %139 = load i32, i32* @cmsFLAGS_CLUT_POST_LINEARIZATION, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %11, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %137, %134
  %144 = load i64, i64* @lUse8bits, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32, i32* @cmsFLAGS_8BITS_DEVICELINK, align 4
  %148 = load i32, i32* %11, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %146, %143
  %151 = load i32*, i32** %13, align 8
  %152 = load i32, i32* @ObserverAdaptationState, align 4
  %153 = call i32 @cmsSetAdaptationState(i32* %151, i32 %152)
  %154 = load i32*, i32** %13, align 8
  %155 = getelementptr inbounds [257 x i32*], [257 x i32*]* %9, i64 0, i64 0
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @Intent, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %160 = or i32 %158, %159
  %161 = call i32* @cmsCreateMultiprofileTransform(i32* %154, i32** %155, i32 %156, i32 0, i32 0, i32 %157, i32 %160)
  store i32* %161, i32** %12, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %150
  %165 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %202

166:                                              ; preds = %150
  %167 = load i32*, i32** %13, align 8
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* @Version, align 4
  %170 = load i32, i32* %11, align 4
  %171 = call i32* @cmsTransform2DeviceLink(i32* %167, i32* %168, i32 %169, i32 %170)
  store i32* %171, i32** %10, align 8
  %172 = load i32*, i32** %10, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %202

176:                                              ; preds = %166
  %177 = load i32*, i32** %13, align 8
  %178 = load i32*, i32** %10, align 8
  %179 = call i32 @SetTextTags(i32* %177, i32* %178)
  %180 = load i32*, i32** %13, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = load i32, i32* @Intent, align 4
  %183 = call i32 @cmsSetHeaderRenderingIntent(i32* %180, i32* %181, i32 %182)
  %184 = load i32*, i32** %13, align 8
  %185 = load i32*, i32** %10, align 8
  %186 = load i32, i32* @cOutProf, align 4
  %187 = call i64 @cmsSaveProfileToFile(i32* %184, i32* %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %176
  %190 = load i32, i32* @Verbose, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* @stderr, align 4
  %194 = call i32 (i32, i8*, ...) @fprintf(i32 %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %195

195:                                              ; preds = %192, %189
  br label %198

196:                                              ; preds = %176
  %197 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %195
  %199 = load i32*, i32** %13, align 8
  %200 = load i32*, i32** %10, align 8
  %201 = call i32 @cmsCloseProfile(i32* %199, i32* %200)
  br label %202

202:                                              ; preds = %198, %174, %164, %117, %63, %36
  %203 = load i32*, i32** %12, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i32*, i32** %13, align 8
  %207 = load i32*, i32** %12, align 8
  %208 = call i32 @cmsDeleteTransform(i32* %206, i32* %207)
  br label %209

209:                                              ; preds = %205, %202
  store i32 0, i32* %6, align 4
  br label %210

210:                                              ; preds = %228, %209
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %7, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %231

214:                                              ; preds = %210
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [257 x i32*], [257 x i32*]* %9, i64 0, i64 %216
  %218 = load i32*, i32** %217, align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %220, label %227

220:                                              ; preds = %214
  %221 = load i32*, i32** %13, align 8
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [257 x i32*], [257 x i32*]* %9, i64 0, i64 %223
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @cmsCloseProfile(i32* %221, i32* %225)
  br label %227

227:                                              ; preds = %220, %214
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %6, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %6, align 4
  br label %210

231:                                              ; preds = %210
  %232 = load i32, i32* %8, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %231, %31
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @InitUtils(i32*, i8*) #1

declare dso_local i32 @HandleSwitches(i32, i8**) #1

declare dso_local i32 @Help(i32) #1

declare dso_local i32 @FatalError(i8*, ...) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32* @OpenStockProfile(i32*, i8*) #1

declare dso_local i32 @PrintProfileInformation(i32*, i32*) #1

declare dso_local i32 @cmsGetColorSpace(i32*, i32*) #1

declare dso_local i32* @cmsCreateInkLimitingDeviceLink(i32*, i32, double) #1

declare dso_local i32 @cmsFLAGS_GRIDPOINTS(i32) #1

declare dso_local i32 @cmsSetAdaptationState(i32*, i32) #1

declare dso_local i32* @cmsCreateMultiprofileTransform(i32*, i32**, i32, i32, i32, i32, i32) #1

declare dso_local i32* @cmsTransform2DeviceLink(i32*, i32*, i32, i32) #1

declare dso_local i32 @SetTextTags(i32*, i32*) #1

declare dso_local i32 @cmsSetHeaderRenderingIntent(i32*, i32*, i32) #1

declare dso_local i64 @cmsSaveProfileToFile(i32*, i32*, i32) #1

declare dso_local i32 @cmsCloseProfile(i32*, i32*) #1

declare dso_local i32 @cmsDeleteTransform(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

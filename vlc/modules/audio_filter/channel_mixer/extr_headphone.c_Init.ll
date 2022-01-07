; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_headphone.c_Init.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_headphone.c_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"headphone-dim\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"headphone-compensate\00", align 1
@AOUT_CHAN_REARCENTER = common dso_local global i32 0, align 4
@AOUT_CHAN_CENTER = common dso_local global i32 0, align 4
@AOUT_CHAN_LEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_RIGHT = common dso_local global i32 0, align 4
@AOUT_CHAN_MIDDLELEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_MIDDLERIGHT = common dso_local global i32 0, align 4
@AOUT_CHAN_REARLEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_REARRIGHT = common dso_local global i32 0, align 4
@AOUT_CHAN_LFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32, i32, i32)* @Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Init(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call double @var_InheritInteger(i32* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store double %20, double* %12, align 8
  %21 = load double, double* %12, align 8
  store double %21, double* %13, align 8
  %22 = load double, double* %12, align 8
  %23 = fneg double %22
  %24 = fdiv double %23, 3.000000e+00
  store double %24, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @var_InheritBool(i32* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @AOUT_CHAN_REARCENTER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load double, double* %14, align 8
  store double %34, double* %15, align 8
  br label %37

35:                                               ; preds = %28
  %36 = load double, double* %13, align 8
  store double %36, double* %15, align 8
  br label %37

37:                                               ; preds = %35, %33
  br label %38

38:                                               ; preds = %37, %5
  %39 = load i32, i32* %9, align 4
  %40 = mul i32 %39, 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add i32 %50, 2
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %38
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = zext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = trunc i64 %57 to i32
  %59 = call i8* @malloc(i32 %58)
  %60 = bitcast i8* %59 to %struct.TYPE_6__*
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = icmp eq %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  store i32 -1, i32* %6, align 4
  br label %343

68:                                               ; preds = %52
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %68
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load double, double* %12, align 8
  %79 = fneg double %78
  %80 = load double, double* %13, align 8
  %81 = load double, double* %15, align 8
  %82 = load i32, i32* %9, align 4
  %83 = uitofp i32 %82 to double
  %84 = fdiv double 2.000000e+00, %83
  %85 = call i32 @ComputeChannelOperations(%struct.TYPE_5__* %74, i32 %75, i32 %76, i32 %77, double %79, double %80, double %81, double %84)
  %86 = load i32, i32* %16, align 4
  %87 = add i32 %86, 2
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %90

90:                                               ; preds = %73, %68
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load double, double* %12, align 8
  %101 = load double, double* %13, align 8
  %102 = load double, double* %15, align 8
  %103 = load i32, i32* %9, align 4
  %104 = uitofp i32 %103 to double
  %105 = fdiv double 2.000000e+00, %104
  %106 = call i32 @ComputeChannelOperations(%struct.TYPE_5__* %96, i32 %97, i32 %98, i32 %99, double %100, double %101, double %102, double %105)
  %107 = load i32, i32* %16, align 4
  %108 = add i32 %107, 2
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %17, align 4
  br label %111

111:                                              ; preds = %95, %90
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @AOUT_CHAN_MIDDLELEFT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %17, align 4
  %121 = load double, double* %12, align 8
  %122 = fneg double %121
  %123 = load double, double* %15, align 8
  %124 = load i32, i32* %9, align 4
  %125 = uitofp i32 %124 to double
  %126 = fdiv double 1.500000e+00, %125
  %127 = call i32 @ComputeChannelOperations(%struct.TYPE_5__* %117, i32 %118, i32 %119, i32 %120, double %122, double 0.000000e+00, double %123, double %126)
  %128 = load i32, i32* %16, align 4
  %129 = add i32 %128, 2
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  br label %132

132:                                              ; preds = %116, %111
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @AOUT_CHAN_MIDDLERIGHT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %132
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %17, align 4
  %142 = load double, double* %12, align 8
  %143 = load double, double* %15, align 8
  %144 = load i32, i32* %9, align 4
  %145 = uitofp i32 %144 to double
  %146 = fdiv double 1.500000e+00, %145
  %147 = call i32 @ComputeChannelOperations(%struct.TYPE_5__* %138, i32 %139, i32 %140, i32 %141, double %142, double 0.000000e+00, double %143, double %146)
  %148 = load i32, i32* %16, align 4
  %149 = add i32 %148, 2
  store i32 %149, i32* %16, align 4
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %17, align 4
  br label %152

152:                                              ; preds = %137, %132
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %174

157:                                              ; preds = %152
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load double, double* %12, align 8
  %163 = fneg double %162
  %164 = load double, double* %14, align 8
  %165 = load double, double* %15, align 8
  %166 = load i32, i32* %9, align 4
  %167 = uitofp i32 %166 to double
  %168 = fdiv double 1.500000e+00, %167
  %169 = call i32 @ComputeChannelOperations(%struct.TYPE_5__* %158, i32 %159, i32 %160, i32 %161, double %163, double %164, double %165, double %168)
  %170 = load i32, i32* %16, align 4
  %171 = add i32 %170, 2
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %17, align 4
  br label %174

174:                                              ; preds = %157, %152
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %195

179:                                              ; preds = %174
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %17, align 4
  %184 = load double, double* %12, align 8
  %185 = load double, double* %14, align 8
  %186 = load double, double* %15, align 8
  %187 = load i32, i32* %9, align 4
  %188 = uitofp i32 %187 to double
  %189 = fdiv double 1.500000e+00, %188
  %190 = call i32 @ComputeChannelOperations(%struct.TYPE_5__* %180, i32 %181, i32 %182, i32 %183, double %184, double %185, double %186, double %189)
  %191 = load i32, i32* %16, align 4
  %192 = add i32 %191, 2
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %17, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %17, align 4
  br label %195

195:                                              ; preds = %179, %174
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @AOUT_CHAN_REARCENTER, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %216

200:                                              ; preds = %195
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %16, align 4
  %204 = load i32, i32* %17, align 4
  %205 = load double, double* %13, align 8
  %206 = fneg double %205
  %207 = load double, double* %15, align 8
  %208 = load i32, i32* %9, align 4
  %209 = uitofp i32 %208 to double
  %210 = fdiv double 1.500000e+00, %209
  %211 = call i32 @ComputeChannelOperations(%struct.TYPE_5__* %201, i32 %202, i32 %203, i32 %204, double 0.000000e+00, double %206, double %207, double %210)
  %212 = load i32, i32* %16, align 4
  %213 = add i32 %212, 2
  store i32 %213, i32* %16, align 4
  %214 = load i32, i32* %17, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %17, align 4
  br label %216

216:                                              ; preds = %200, %195
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %253

221:                                              ; preds = %216
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %17, align 4
  %226 = load double, double* %12, align 8
  %227 = fdiv double %226, 5.000000e+00
  %228 = load double, double* %13, align 8
  %229 = load double, double* %15, align 8
  %230 = load i32, i32* %9, align 4
  %231 = uitofp i32 %230 to double
  %232 = fdiv double 7.500000e-01, %231
  %233 = call i32 @ComputeChannelOperations(%struct.TYPE_5__* %222, i32 %223, i32 %224, i32 %225, double %227, double %228, double %229, double %232)
  %234 = load i32, i32* %16, align 4
  %235 = add i32 %234, 2
  store i32 %235, i32* %16, align 4
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* %16, align 4
  %239 = load i32, i32* %17, align 4
  %240 = load double, double* %12, align 8
  %241 = fneg double %240
  %242 = fdiv double %241, 5.000000e+00
  %243 = load double, double* %13, align 8
  %244 = load double, double* %15, align 8
  %245 = load i32, i32* %9, align 4
  %246 = uitofp i32 %245 to double
  %247 = fdiv double 7.500000e-01, %246
  %248 = call i32 @ComputeChannelOperations(%struct.TYPE_5__* %236, i32 %237, i32 %238, i32 %239, double %242, double %243, double %244, double %247)
  %249 = load i32, i32* %16, align 4
  %250 = add i32 %249, 2
  store i32 %250, i32* %16, align 4
  %251 = load i32, i32* %17, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %17, align 4
  br label %253

253:                                              ; preds = %221, %216
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %273

258:                                              ; preds = %253
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* %16, align 4
  %262 = load i32, i32* %17, align 4
  %263 = load double, double* %14, align 8
  %264 = load double, double* %15, align 8
  %265 = load i32, i32* %9, align 4
  %266 = uitofp i32 %265 to double
  %267 = fdiv double 5.000000e+00, %266
  %268 = call i32 @ComputeChannelOperations(%struct.TYPE_5__* %259, i32 %260, i32 %261, i32 %262, double 0.000000e+00, double %263, double %264, double %267)
  %269 = load i32, i32* %16, align 4
  %270 = add i32 %269, 2
  store i32 %270, i32* %16, align 4
  %271 = load i32, i32* %17, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %17, align 4
  br label %273

273:                                              ; preds = %258, %253
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 1
  store i32 0, i32* %275, align 4
  store i32 0, i32* %18, align 4
  br label %276

276:                                              ; preds = %315, %273
  %277 = load i32, i32* %18, align 4
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp ult i32 %277, %280
  br i1 %281, label %282, label %318

282:                                              ; preds = %276
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 3
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %288, align 8
  %290 = load i32, i32* %18, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = mul nsw i32 %294, 2
  %296 = sext i32 %295 to i64
  %297 = mul i64 %296, 4
  %298 = icmp ult i64 %286, %297
  br i1 %298, label %299, label %314

299:                                              ; preds = %282
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 3
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %301, align 8
  %303 = load i32, i32* %18, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = mul nsw i32 %307, 2
  %309 = sext i32 %308 to i64
  %310 = mul i64 %309, 4
  %311 = trunc i64 %310 to i32
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 1
  store i32 %311, i32* %313, align 4
  br label %314

314:                                              ; preds = %299, %282
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %18, align 4
  %317 = add i32 %316, 1
  store i32 %317, i32* %18, align 4
  br label %276

318:                                              ; preds = %276
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = call i8* @malloc(i32 %321)
  %323 = bitcast i8* %322 to i32*
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 2
  store i32* %323, i32** %325, align 8
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 2
  %328 = load i32*, i32** %327, align 8
  %329 = icmp eq i32* %328, null
  br i1 %329, label %330, label %335

330:                                              ; preds = %318
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 3
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %332, align 8
  %334 = call i32 @free(%struct.TYPE_6__* %333)
  store i32 -1, i32* %6, align 4
  br label %343

335:                                              ; preds = %318
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 2
  %338 = load i32*, i32** %337, align 8
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @memset(i32* %338, i32 0, i32 %341)
  store i32 0, i32* %6, align 4
  br label %343

343:                                              ; preds = %335, %330, %67
  %344 = load i32, i32* %6, align 4
  ret i32 %344
}

declare dso_local double @var_InheritInteger(i32*, i8*) #1

declare dso_local i64 @var_InheritBool(i32*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ComputeChannelOperations(%struct.TYPE_5__*, i32, i32, i32, double, double, double, double) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

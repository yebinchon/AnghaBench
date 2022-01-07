; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_adjust.c_FilterPacked.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_adjust.c_FilterPacked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 (%struct.TYPE_22__*, %struct.TYPE_22__*, i32, i32, i32, i32, i32)*, i64 (%struct.TYPE_22__*, %struct.TYPE_22__*, i32, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i64*, i32 }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Unsupported input chroma (%4.4s)\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't get output picture\00", align 1
@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_23__*, %struct.TYPE_22__*)* @FilterPacked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @FilterPacked(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca [256 x i32], align 16
  %7 = alloca [256 x i32], align 16
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_24__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  store %struct.TYPE_24__* %33, %struct.TYPE_24__** %27, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = icmp ne %struct.TYPE_22__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %411

37:                                               ; preds = %2
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %16, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %17, align 4
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @GetPackedYuvOffsets(i32 %51, i32* %13, i32* %14, i32* %15)
  %53 = load i64, i64* @VLC_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %37
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = bitcast i32* %59 to i8*
  %61 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Warn(%struct.TYPE_23__* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %60)
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %63 = call i32 @picture_Release(%struct.TYPE_22__* %62)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %411

64:                                               ; preds = %37
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %66 = call %struct.TYPE_22__* @filter_NewPicture(%struct.TYPE_23__* %65)
  store %struct.TYPE_22__* %66, %struct.TYPE_22__** %8, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %68 = icmp ne %struct.TYPE_22__* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %71 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Warn(%struct.TYPE_23__* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %73 = call i32 @picture_Release(%struct.TYPE_22__* %72)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %411

74:                                               ; preds = %64
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 7
  %77 = call double @vlc_atomic_load_float(i32* %76)
  %78 = fmul double %77, 2.550000e+02
  %79 = fptosi double %78 to i32
  store i32 %79, i32* %20, align 4
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 6
  %82 = call double @vlc_atomic_load_float(i32* %81)
  %83 = fsub double %82, 1.000000e+00
  %84 = fmul double %83, 2.550000e+02
  %85 = fptosi double %84 to i32
  store i32 %85, i32* %21, align 4
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 5
  %88 = call double @vlc_atomic_load_float(i32* %87)
  %89 = load i32, i32* @M_PI, align 4
  %90 = sitofp i32 %89 to double
  %91 = fdiv double %90, 1.800000e+02
  %92 = fptrunc double %91 to float
  %93 = fpext float %92 to double
  %94 = fmul double %88, %93
  store double %94, double* %18, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 4
  %97 = call double @vlc_atomic_load_float(i32* %96)
  %98 = fmul double %97, 2.560000e+02
  %99 = fptosi double %98 to i32
  store i32 %99, i32* %22, align 4
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 3
  %102 = call double @vlc_atomic_load_float(i32* %101)
  %103 = fdiv double 1.000000e+00, %102
  store double %103, double* %19, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 2
  %106 = call i32 @atomic_load(i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %155, label %108

108:                                              ; preds = %74
  %109 = load i32, i32* %20, align 4
  %110 = sdiv i32 %109, 2
  %111 = sub nsw i32 128, %110
  %112 = load i32, i32* %21, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %21, align 4
  store i32 0, i32* %28, align 4
  br label %114

114:                                              ; preds = %131, %108
  %115 = load i32, i32* %28, align 4
  %116 = icmp slt i32 %115, 256
  br i1 %116, label %117, label %134

117:                                              ; preds = %114
  %118 = load i32, i32* %28, align 4
  %119 = sitofp i32 %118 to double
  %120 = fdiv double %119, 2.550000e+02
  %121 = fptosi double %120 to i32
  %122 = load double, double* %19, align 8
  %123 = call double @pow(i32 %121, double %122)
  %124 = fmul double %123, 2.550000e+02
  %125 = fptosi double %124 to i32
  %126 = call i64 @clip_uint8_vlc(i32 %125)
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* %28, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 %129
  store i32 %127, i32* %130, align 4
  br label %131

131:                                              ; preds = %117
  %132 = load i32, i32* %28, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %28, align 4
  br label %114

134:                                              ; preds = %114
  store i32 0, i32* %29, align 4
  br label %135

135:                                              ; preds = %151, %134
  %136 = load i32, i32* %29, align 4
  %137 = icmp slt i32 %136, 256
  br i1 %137, label %138, label %154

138:                                              ; preds = %135
  %139 = load i32, i32* %21, align 4
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %29, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sdiv i32 %142, 256
  %144 = add nsw i32 %139, %143
  %145 = call i64 @clip_uint8_vlc(i32 %144)
  %146 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %29, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %149
  store i32 %147, i32* %150, align 4
  br label %151

151:                                              ; preds = %138
  %152 = load i32, i32* %29, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %29, align 4
  br label %135

154:                                              ; preds = %135
  br label %172

155:                                              ; preds = %74
  store i32 0, i32* %30, align 4
  br label %156

156:                                              ; preds = %168, %155
  %157 = load i32, i32* %30, align 4
  %158 = icmp slt i32 %157, 256
  br i1 %158, label %159, label %171

159:                                              ; preds = %156
  %160 = load i32, i32* %30, align 4
  %161 = load i32, i32* %21, align 4
  %162 = icmp slt i32 %160, %161
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 0, i32 255
  %165 = load i32, i32* %30, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %166
  store i32 %164, i32* %167, align 4
  br label %168

168:                                              ; preds = %159
  %169 = load i32, i32* %30, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %30, align 4
  br label %156

171:                                              ; preds = %156
  store i32 0, i32* %22, align 4
  br label %172

172:                                              ; preds = %171, %154
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 2
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  store i64* %180, i64** %9, align 8
  %181 = load i64*, i64** %9, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = mul nsw i32 %186, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %181, i64 %193
  %195 = getelementptr inbounds i64, i64* %194, i64 -32
  store i64* %195, i64** %10, align 8
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 2
  %200 = load i64*, i64** %199, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  store i64* %203, i64** %12, align 8
  br label %204

204:                                              ; preds = %317, %172
  %205 = load i64*, i64** %9, align 8
  %206 = load i64*, i64** %10, align 8
  %207 = icmp ult i64* %205, %206
  br i1 %207, label %208, label %338

208:                                              ; preds = %204
  %209 = load i64*, i64** %9, align 8
  %210 = load i32, i32* %17, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = getelementptr inbounds i64, i64* %212, i64 -32
  store i64* %213, i64** %11, align 8
  br label %214

214:                                              ; preds = %218, %208
  %215 = load i64*, i64** %9, align 8
  %216 = load i64*, i64** %11, align 8
  %217 = icmp ult i64* %215, %216
  br i1 %217, label %218, label %299

218:                                              ; preds = %214
  %219 = load i64*, i64** %9, align 8
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = load i64*, i64** %12, align 8
  store i64 %223, i64* %224, align 8
  %225 = load i64*, i64** %9, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 2
  store i64* %226, i64** %9, align 8
  %227 = load i64*, i64** %12, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 2
  store i64* %228, i64** %12, align 8
  %229 = load i64*, i64** %9, align 8
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = load i64*, i64** %12, align 8
  store i64 %233, i64* %234, align 8
  %235 = load i64*, i64** %9, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 2
  store i64* %236, i64** %9, align 8
  %237 = load i64*, i64** %12, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 2
  store i64* %238, i64** %12, align 8
  %239 = load i64*, i64** %9, align 8
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = load i64*, i64** %12, align 8
  store i64 %243, i64* %244, align 8
  %245 = load i64*, i64** %9, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 2
  store i64* %246, i64** %9, align 8
  %247 = load i64*, i64** %12, align 8
  %248 = getelementptr inbounds i64, i64* %247, i64 2
  store i64* %248, i64** %12, align 8
  %249 = load i64*, i64** %9, align 8
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = load i64*, i64** %12, align 8
  store i64 %253, i64* %254, align 8
  %255 = load i64*, i64** %9, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 2
  store i64* %256, i64** %9, align 8
  %257 = load i64*, i64** %12, align 8
  %258 = getelementptr inbounds i64, i64* %257, i64 2
  store i64* %258, i64** %12, align 8
  %259 = load i64*, i64** %9, align 8
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = load i64*, i64** %12, align 8
  store i64 %263, i64* %264, align 8
  %265 = load i64*, i64** %9, align 8
  %266 = getelementptr inbounds i64, i64* %265, i64 2
  store i64* %266, i64** %9, align 8
  %267 = load i64*, i64** %12, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 2
  store i64* %268, i64** %12, align 8
  %269 = load i64*, i64** %9, align 8
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = load i64*, i64** %12, align 8
  store i64 %273, i64* %274, align 8
  %275 = load i64*, i64** %9, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 2
  store i64* %276, i64** %9, align 8
  %277 = load i64*, i64** %12, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 2
  store i64* %278, i64** %12, align 8
  %279 = load i64*, i64** %9, align 8
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  %284 = load i64*, i64** %12, align 8
  store i64 %283, i64* %284, align 8
  %285 = load i64*, i64** %9, align 8
  %286 = getelementptr inbounds i64, i64* %285, i64 2
  store i64* %286, i64** %9, align 8
  %287 = load i64*, i64** %12, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 2
  store i64* %288, i64** %12, align 8
  %289 = load i64*, i64** %9, align 8
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = load i64*, i64** %12, align 8
  store i64 %293, i64* %294, align 8
  %295 = load i64*, i64** %9, align 8
  %296 = getelementptr inbounds i64, i64* %295, i64 2
  store i64* %296, i64** %9, align 8
  %297 = load i64*, i64** %12, align 8
  %298 = getelementptr inbounds i64, i64* %297, i64 2
  store i64* %298, i64** %12, align 8
  br label %214

299:                                              ; preds = %214
  %300 = load i64*, i64** %11, align 8
  %301 = getelementptr inbounds i64, i64* %300, i64 32
  store i64* %301, i64** %11, align 8
  br label %302

302:                                              ; preds = %306, %299
  %303 = load i64*, i64** %9, align 8
  %304 = load i64*, i64** %11, align 8
  %305 = icmp ult i64* %303, %304
  br i1 %305, label %306, label %317

306:                                              ; preds = %302
  %307 = load i64*, i64** %9, align 8
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = load i64*, i64** %12, align 8
  store i64 %311, i64* %312, align 8
  %313 = load i64*, i64** %9, align 8
  %314 = getelementptr inbounds i64, i64* %313, i64 2
  store i64* %314, i64** %9, align 8
  %315 = load i64*, i64** %12, align 8
  %316 = getelementptr inbounds i64, i64* %315, i64 2
  store i64* %316, i64** %12, align 8
  br label %302

317:                                              ; preds = %302
  %318 = load i32, i32* %16, align 4
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = sub nsw i32 %318, %323
  %325 = load i64*, i64** %9, align 8
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i64, i64* %325, i64 %326
  store i64* %327, i64** %9, align 8
  %328 = load i32, i32* %16, align 4
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = sub nsw i32 %328, %333
  %335 = load i64*, i64** %12, align 8
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i64, i64* %335, i64 %336
  store i64* %337, i64** %12, align 8
  br label %204

338:                                              ; preds = %204
  %339 = load double, double* %18, align 8
  %340 = call i32 @sin(double %339)
  %341 = mul nsw i32 %340, 256
  store i32 %341, i32* %23, align 4
  %342 = load double, double* %18, align 8
  %343 = call i32 @cos(double %342)
  %344 = mul nsw i32 %343, 256
  store i32 %344, i32* %24, align 4
  %345 = load double, double* %18, align 8
  %346 = call i32 @cos(double %345)
  %347 = load double, double* %18, align 8
  %348 = call i32 @sin(double %347)
  %349 = add nsw i32 %346, %348
  %350 = mul nsw i32 %349, 32768
  store i32 %350, i32* %25, align 4
  %351 = load double, double* %18, align 8
  %352 = call i32 @cos(double %351)
  %353 = load double, double* %18, align 8
  %354 = call i32 @sin(double %353)
  %355 = sub nsw i32 %352, %354
  %356 = mul nsw i32 %355, 32768
  store i32 %356, i32* %26, align 4
  %357 = load i32, i32* %22, align 4
  %358 = icmp sgt i32 %357, 256
  br i1 %358, label %359, label %383

359:                                              ; preds = %338
  %360 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %361 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %360, i32 0, i32 0
  %362 = load i64 (%struct.TYPE_22__*, %struct.TYPE_22__*, i32, i32, i32, i32, i32)*, i64 (%struct.TYPE_22__*, %struct.TYPE_22__*, i32, i32, i32, i32, i32)** %361, align 8
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %364 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %365 = load i32, i32* %23, align 4
  %366 = load i32, i32* %24, align 4
  %367 = load i32, i32* %22, align 4
  %368 = load i32, i32* %25, align 4
  %369 = load i32, i32* %26, align 4
  %370 = call i64 %362(%struct.TYPE_22__* %363, %struct.TYPE_22__* %364, i32 %365, i32 %366, i32 %367, i32 %368, i32 %369)
  %371 = load i64, i64* @VLC_SUCCESS, align 8
  %372 = icmp ne i64 %370, %371
  br i1 %372, label %373, label %382

373:                                              ; preds = %359
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %375 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %376, i32 0, i32 0
  %378 = bitcast i32* %377 to i8*
  %379 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Warn(%struct.TYPE_23__* %374, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %378)
  %380 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %381 = call i32 @picture_Release(%struct.TYPE_22__* %380)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %411

382:                                              ; preds = %359
  br label %407

383:                                              ; preds = %338
  %384 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %385 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %384, i32 0, i32 1
  %386 = load i64 (%struct.TYPE_22__*, %struct.TYPE_22__*, i32, i32, i32, i32, i32)*, i64 (%struct.TYPE_22__*, %struct.TYPE_22__*, i32, i32, i32, i32, i32)** %385, align 8
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %388 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %389 = load i32, i32* %23, align 4
  %390 = load i32, i32* %24, align 4
  %391 = load i32, i32* %22, align 4
  %392 = load i32, i32* %25, align 4
  %393 = load i32, i32* %26, align 4
  %394 = call i64 %386(%struct.TYPE_22__* %387, %struct.TYPE_22__* %388, i32 %389, i32 %390, i32 %391, i32 %392, i32 %393)
  %395 = load i64, i64* @VLC_SUCCESS, align 8
  %396 = icmp ne i64 %394, %395
  br i1 %396, label %397, label %406

397:                                              ; preds = %383
  %398 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %399 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 0
  %402 = bitcast i32* %401 to i8*
  %403 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Warn(%struct.TYPE_23__* %398, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %402)
  %404 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %405 = call i32 @picture_Release(%struct.TYPE_22__* %404)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %411

406:                                              ; preds = %383
  br label %407

407:                                              ; preds = %406, %382
  %408 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %409 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %410 = call %struct.TYPE_22__* @CopyInfoAndRelease(%struct.TYPE_22__* %408, %struct.TYPE_22__* %409)
  store %struct.TYPE_22__* %410, %struct.TYPE_22__** %3, align 8
  br label %411

411:                                              ; preds = %407, %397, %373, %69, %55, %36
  %412 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %412
}

declare dso_local i64 @GetPackedYuvOffsets(i32, i32*, i32*, i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_23__*, i8*, ...) #1

declare dso_local i32 @picture_Release(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @filter_NewPicture(%struct.TYPE_23__*) #1

declare dso_local double @vlc_atomic_load_float(i32*) #1

declare dso_local i32 @atomic_load(i32*) #1

declare dso_local i64 @clip_uint8_vlc(i32) #1

declare dso_local double @pow(i32, double) #1

declare dso_local i32 @sin(double) #1

declare dso_local i32 @cos(double) #1

declare dso_local %struct.TYPE_22__* @CopyInfoAndRelease(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

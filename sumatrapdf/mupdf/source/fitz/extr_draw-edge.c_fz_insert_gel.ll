; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_fz_insert_gel.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_fz_insert_gel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@BBOX_MIN = common dso_local global i32 0, align 4
@BBOX_MAX = common dso_local global i32 0, align 4
@OUTSIDE = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, float, float, float, float, i32)* @fz_insert_gel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_insert_gel(i32* %0, %struct.TYPE_8__* %1, float %2, float %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = call i32 @fz_rasterizer_aa_hscale(%struct.TYPE_8__* %23)
  store i32 %24, i32* %21, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = call i32 @fz_rasterizer_aa_vscale(%struct.TYPE_8__* %25)
  store i32 %26, i32* %22, align 4
  %27 = load float, float* %10, align 4
  %28 = load i32, i32* %21, align 4
  %29 = sitofp i32 %28 to float
  %30 = fmul float %27, %29
  %31 = call float @llvm.floor.f32(float %30)
  store float %31, float* %10, align 4
  %32 = load float, float* %12, align 4
  %33 = load i32, i32* %21, align 4
  %34 = sitofp i32 %33 to float
  %35 = fmul float %32, %34
  %36 = call float @llvm.floor.f32(float %35)
  store float %36, float* %12, align 4
  %37 = load float, float* %11, align 4
  %38 = load i32, i32* %22, align 4
  %39 = sitofp i32 %38 to float
  %40 = fmul float %37, %39
  %41 = call float @llvm.floor.f32(float %40)
  store float %41, float* %11, align 4
  %42 = load float, float* %13, align 4
  %43 = load i32, i32* %22, align 4
  %44 = sitofp i32 %43 to float
  %45 = fmul float %42, %44
  %46 = call float @llvm.floor.f32(float %45)
  store float %46, float* %13, align 4
  %47 = load float, float* %10, align 4
  %48 = load i32, i32* @BBOX_MIN, align 4
  %49 = load i32, i32* %21, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* @BBOX_MAX, align 4
  %52 = load i32, i32* %21, align 4
  %53 = mul nsw i32 %51, %52
  %54 = call i64 @fz_clamp(float %47, i32 %50, i32 %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %15, align 4
  %56 = load float, float* %11, align 4
  %57 = load i32, i32* @BBOX_MIN, align 4
  %58 = load i32, i32* %22, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* @BBOX_MAX, align 4
  %61 = load i32, i32* %22, align 4
  %62 = mul nsw i32 %60, %61
  %63 = call i64 @fz_clamp(float %56, i32 %59, i32 %62)
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %16, align 4
  %65 = load float, float* %12, align 4
  %66 = load i32, i32* @BBOX_MIN, align 4
  %67 = load i32, i32* %21, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* @BBOX_MAX, align 4
  %70 = load i32, i32* %21, align 4
  %71 = mul nsw i32 %69, %70
  %72 = call i64 @fz_clamp(float %65, i32 %68, i32 %71)
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %17, align 4
  %74 = load float, float* %13, align 4
  %75 = load i32, i32* @BBOX_MIN, align 4
  %76 = load i32, i32* %22, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* @BBOX_MAX, align 4
  %79 = load i32, i32* %22, align 4
  %80 = mul nsw i32 %78, %79
  %81 = call i64 @fz_clamp(float %74, i32 %77, i32 %80)
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %18, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @clip_lerp_y(i32 %86, i32 0, i32 %87, i32 %88, i32 %89, i32 %90, i32* %20)
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* @OUTSIDE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %7
  br label %286

96:                                               ; preds = %7
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* @LEAVE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %20, align 4
  store i32 %105, i32* %17, align 4
  br label %106

106:                                              ; preds = %100, %96
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* @ENTER, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %20, align 4
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %110, %106
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @clip_lerp_y(i32 %120, i32 1, i32 %121, i32 %122, i32 %123, i32 %124, i32* %20)
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* @OUTSIDE, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %116
  br label %286

130:                                              ; preds = %116
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* @LEAVE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %20, align 4
  store i32 %139, i32* %17, align 4
  br label %140

140:                                              ; preds = %134, %130
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* @ENTER, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %20, align 4
  store i32 %149, i32* %15, align 4
  br label %150

150:                                              ; preds = %144, %140
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %18, align 4
  %159 = call i32 @clip_lerp_x(i32 %154, i32 0, i32 %155, i32 %156, i32 %157, i32 %158, i32* %20)
  store i32 %159, i32* %19, align 4
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* @OUTSIDE, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %150
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %17, align 4
  store i32 %167, i32* %15, align 4
  br label %168

168:                                              ; preds = %163, %150
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* @LEAVE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %191

172:                                              ; preds = %168
  %173 = load i32*, i32** %8, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %20, align 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %18, align 4
  %185 = call i32 @fz_insert_gel_raw(i32* %173, %struct.TYPE_8__* %174, i32 %178, i32 %179, i32 %183, i32 %184)
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %17, align 4
  %190 = load i32, i32* %20, align 4
  store i32 %190, i32* %18, align 4
  br label %191

191:                                              ; preds = %172, %168
  %192 = load i32, i32* %19, align 4
  %193 = load i32, i32* @ENTER, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %214

195:                                              ; preds = %191
  %196 = load i32*, i32** %8, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %16, align 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %20, align 4
  %208 = call i32 @fz_insert_gel_raw(i32* %196, %struct.TYPE_8__* %197, i32 %201, i32 %202, i32 %206, i32 %207)
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %15, align 4
  %213 = load i32, i32* %20, align 4
  store i32 %213, i32* %16, align 4
  br label %214

214:                                              ; preds = %195, %191
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %15, align 4
  %220 = load i32, i32* %16, align 4
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* %18, align 4
  %223 = call i32 @clip_lerp_x(i32 %218, i32 1, i32 %219, i32 %220, i32 %221, i32 %222, i32* %20)
  store i32 %223, i32* %19, align 4
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* @OUTSIDE, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %214
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %17, align 4
  store i32 %231, i32* %15, align 4
  br label %232

232:                                              ; preds = %227, %214
  %233 = load i32, i32* %19, align 4
  %234 = load i32, i32* @LEAVE, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %255

236:                                              ; preds = %232
  %237 = load i32*, i32** %8, align 8
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %20, align 4
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %18, align 4
  %249 = call i32 @fz_insert_gel_raw(i32* %237, %struct.TYPE_8__* %238, i32 %242, i32 %243, i32 %247, i32 %248)
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %17, align 4
  %254 = load i32, i32* %20, align 4
  store i32 %254, i32* %18, align 4
  br label %255

255:                                              ; preds = %236, %232
  %256 = load i32, i32* %19, align 4
  %257 = load i32, i32* @ENTER, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %278

259:                                              ; preds = %255
  %260 = load i32*, i32** %8, align 8
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %16, align 4
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %20, align 4
  %272 = call i32 @fz_insert_gel_raw(i32* %260, %struct.TYPE_8__* %261, i32 %265, i32 %266, i32 %270, i32 %271)
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %15, align 4
  %277 = load i32, i32* %20, align 4
  store i32 %277, i32* %16, align 4
  br label %278

278:                                              ; preds = %259, %255
  %279 = load i32*, i32** %8, align 8
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %281 = load i32, i32* %15, align 4
  %282 = load i32, i32* %16, align 4
  %283 = load i32, i32* %17, align 4
  %284 = load i32, i32* %18, align 4
  %285 = call i32 @fz_insert_gel_raw(i32* %279, %struct.TYPE_8__* %280, i32 %281, i32 %282, i32 %283, i32 %284)
  br label %286

286:                                              ; preds = %278, %129, %95
  ret void
}

declare dso_local i32 @fz_rasterizer_aa_hscale(%struct.TYPE_8__*) #1

declare dso_local i32 @fz_rasterizer_aa_vscale(%struct.TYPE_8__*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #2

declare dso_local i64 @fz_clamp(float, i32, i32) #1

declare dso_local i32 @clip_lerp_y(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @clip_lerp_x(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @fz_insert_gel_raw(i32*, %struct.TYPE_8__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

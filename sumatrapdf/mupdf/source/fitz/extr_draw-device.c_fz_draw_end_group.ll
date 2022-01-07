; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_end_group.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_end_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_19__ = type { float, i32, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unexpected end group\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@FZ_BLEND_MODEMASK = common dso_local global i32 0, align 4
@FZ_BLEND_ISOLATED = common dso_local global i32 0, align 4
@fz_default_color_params = common dso_local global i32 0, align 4
@FZ_BLEND_KNOCKOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @fz_draw_end_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_draw_end_group(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %20 = call i32 @fz_throw(i32* %18, i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = call %struct.TYPE_19__* @pop_stack(i32* %22, %struct.TYPE_20__* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %9, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load float, float* %27, align 8
  store float %28, float* %8, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FZ_BLEND_MODEMASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FZ_BLEND_ISOLATED, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %46, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %21
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @fz_default_color_params, align 4
  %70 = call %struct.TYPE_18__* @fz_convert_pixmap(i32* %55, %struct.TYPE_18__* %59, i64 %65, i32* null, i32 %68, i32 %69, i32 1)
  store %struct.TYPE_18__* %70, %struct.TYPE_18__** %10, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = call i32 @fz_drop_pixmap(i32* %71, %struct.TYPE_18__* %75)
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %80, align 8
  br label %81

81:                                               ; preds = %54, %21
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %117

84:                                               ; preds = %81
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = icmp eq %struct.TYPE_18__* %88, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %84
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = icmp eq %struct.TYPE_18__* %98, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %94
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = load float, float* %8, align 4
  %114 = fmul float %113, 2.550000e+02
  %115 = fptosi float %114 to i32
  %116 = call i32 @fz_paint_pixmap(%struct.TYPE_18__* %108, %struct.TYPE_18__* %112, i32 %115)
  br label %136

117:                                              ; preds = %94, %84, %81
  %118 = load i32*, i32** %3, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %121, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = load float, float* %8, align 4
  %128 = fmul float %127, 2.550000e+02
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i64 1
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %133, align 8
  %135 = call i32 @fz_blend_pixmap(i32* %118, %struct.TYPE_18__* %122, %struct.TYPE_18__* %126, float %128, i32 %129, i32 %130, %struct.TYPE_18__* %134)
  br label %136

136:                                              ; preds = %117, %104
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i64 1
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = icmp ne %struct.TYPE_18__* %140, %144
  br i1 %145, label %146, label %186

146:                                              ; preds = %136
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %149, align 8
  %151 = icmp ne %struct.TYPE_18__* %150, null
  br i1 %151, label %152, label %185

152:                                              ; preds = %146
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i64 1
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %155, align 8
  %157 = icmp ne %struct.TYPE_18__* %156, null
  br i1 %157, label %158, label %171

158:                                              ; preds = %152
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %161, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i64 1
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %165, align 8
  %167 = load float, float* %8, align 4
  %168 = fmul float %167, 2.550000e+02
  %169 = fptosi float %168 to i32
  %170 = call i32 @fz_paint_pixmap(%struct.TYPE_18__* %162, %struct.TYPE_18__* %166, i32 %169)
  br label %184

171:                                              ; preds = %152
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 4
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %174, align 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i64 1
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %178, align 8
  %180 = load float, float* %8, align 4
  %181 = fmul float %180, 2.550000e+02
  %182 = fptosi float %181 to i32
  %183 = call i32 @fz_paint_pixmap_alpha(%struct.TYPE_18__* %175, %struct.TYPE_18__* %179, i32 %182)
  br label %184

184:                                              ; preds = %171, %158
  br label %185

185:                                              ; preds = %184, %146
  br label %186

186:                                              ; preds = %185, %136
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = icmp eq %struct.TYPE_18__* %190, null
  br i1 %191, label %202, label %192

192:                                              ; preds = %186
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 3
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %195, align 8
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i64 1
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = icmp ne %struct.TYPE_18__* %196, %200
  br label %202

202:                                              ; preds = %192, %186
  %203 = phi i1 [ true, %186 ], [ %201, %192 ]
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 3
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %208, align 8
  %210 = icmp ne %struct.TYPE_18__* %209, null
  br i1 %210, label %211, label %266

211:                                              ; preds = %202
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %214, align 8
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i64 1
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 3
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %218, align 8
  %220 = icmp ne %struct.TYPE_18__* %215, %219
  br i1 %220, label %221, label %266

221:                                              ; preds = %211
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i64 1
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %224, align 8
  %226 = icmp ne %struct.TYPE_18__* %225, null
  br i1 %226, label %227, label %246

227:                                              ; preds = %221
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 3
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %230, align 8
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i64 1
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 3
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %234, align 8
  %236 = load i32, i32* %7, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %227
  br label %242

239:                                              ; preds = %227
  %240 = load float, float* %8, align 4
  %241 = fmul float %240, 2.550000e+02
  br label %242

242:                                              ; preds = %239, %238
  %243 = phi float [ 2.550000e+02, %238 ], [ %241, %239 ]
  %244 = fptosi float %243 to i32
  %245 = call i32 @fz_paint_pixmap(%struct.TYPE_18__* %231, %struct.TYPE_18__* %235, i32 %244)
  br label %265

246:                                              ; preds = %221
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i64 0
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 3
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %249, align 8
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i64 1
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %253, align 8
  %255 = load i32, i32* %7, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %246
  br label %261

258:                                              ; preds = %246
  %259 = load float, float* %8, align 4
  %260 = fmul float %259, 2.550000e+02
  br label %261

261:                                              ; preds = %258, %257
  %262 = phi float [ 2.550000e+02, %257 ], [ %260, %258 ]
  %263 = fptosi float %262 to i32
  %264 = call i32 @fz_paint_pixmap_alpha(%struct.TYPE_18__* %250, %struct.TYPE_18__* %254, i32 %263)
  br label %265

265:                                              ; preds = %261, %242
  br label %266

266:                                              ; preds = %265, %211, %202
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i64 0
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %269, align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i64 1
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %273, align 8
  %275 = icmp ne %struct.TYPE_18__* %270, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 @assert(i32 %276)
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i64 0
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 4
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %280, align 8
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i64 1
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 4
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %284, align 8
  %286 = icmp ne %struct.TYPE_18__* %281, %285
  br i1 %286, label %287, label %297

287:                                              ; preds = %266
  %288 = load i32*, i32** %3, align 8
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i64 1
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 4
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %291, align 8
  %293 = call i32 @fz_drop_pixmap(i32* %288, %struct.TYPE_18__* %292)
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i64 1
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %296, align 8
  br label %297

297:                                              ; preds = %287, %266
  %298 = load i32*, i32** %3, align 8
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i64 1
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 3
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %301, align 8
  %303 = call i32 @fz_drop_pixmap(i32* %298, %struct.TYPE_18__* %302)
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i64 1
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 3
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %306, align 8
  %307 = load i32*, i32** %3, align 8
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i64 1
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 2
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %310, align 8
  %312 = call i32 @fz_drop_pixmap(i32* %307, %struct.TYPE_18__* %311)
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i64 1
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i32 0, i32 2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %315, align 8
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i64 0
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @FZ_BLEND_KNOCKOUT, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %297
  %324 = load i32*, i32** %3, align 8
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %326 = call i32 @fz_knockout_end(i32* %324, %struct.TYPE_20__* %325)
  br label %327

327:                                              ; preds = %323, %297
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_19__* @pop_stack(i32*, %struct.TYPE_20__*, i8*) #1

declare dso_local %struct.TYPE_18__* @fz_convert_pixmap(i32*, %struct.TYPE_18__*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @fz_drop_pixmap(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @fz_paint_pixmap(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @fz_blend_pixmap(i32*, %struct.TYPE_18__*, %struct.TYPE_18__*, float, i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @fz_paint_pixmap_alpha(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fz_knockout_end(i32*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

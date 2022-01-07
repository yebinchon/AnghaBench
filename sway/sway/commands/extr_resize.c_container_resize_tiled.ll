; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_container_resize_tiled.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_container_resize_tiled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32, double, i32, double, i32, i64 }
%struct.TYPE_3__ = type { i32, %struct.sway_container** }

@AXIS_HORIZONTAL = common dso_local global i64 0, align 8
@AXIS_VERTICAL = common dso_local global i64 0, align 8
@WLR_EDGE_TOP = common dso_local global i64 0, align 8
@WLR_EDGE_LEFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Didn't expect first child\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Didn't expect last child\00", align 1
@MIN_SANE_W = common dso_local global i32 0, align 4
@MIN_SANE_H = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_resize_tiled(%struct.sway_container* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store %struct.sway_container* %0, %struct.sway_container** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %17 = icmp ne %struct.sway_container* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %303

19:                                               ; preds = %3
  %20 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call %struct.sway_container* @container_find_resize_parent(%struct.sway_container* %20, i64 %21)
  store %struct.sway_container* %22, %struct.sway_container** %4, align 8
  %23 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %24 = icmp ne %struct.sway_container* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %303

26:                                               ; preds = %19
  store %struct.sway_container* null, %struct.sway_container** %7, align 8
  store %struct.sway_container* null, %struct.sway_container** %8, align 8
  %27 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %28 = call %struct.TYPE_3__* @container_get_siblings(%struct.sway_container* %27)
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %9, align 8
  %29 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %30 = call i32 @container_sibling_index(%struct.sway_container* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @AXIS_HORIZONTAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @AXIS_VERTICAL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %85

38:                                               ; preds = %34, %26
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load %struct.sway_container**, %struct.sway_container*** %43, align 8
  %45 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %44, i64 1
  %46 = load %struct.sway_container*, %struct.sway_container** %45, align 8
  store %struct.sway_container* %46, %struct.sway_container** %8, align 8
  br label %84

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = icmp eq i32 %48, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  store %struct.sway_container* %55, %struct.sway_container** %8, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load %struct.sway_container**, %struct.sway_container*** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %58, i64 %61
  %63 = load %struct.sway_container*, %struct.sway_container** %62, align 8
  store %struct.sway_container* %63, %struct.sway_container** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %83

66:                                               ; preds = %47
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load %struct.sway_container**, %struct.sway_container*** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %69, i64 %72
  %74 = load %struct.sway_container*, %struct.sway_container** %73, align 8
  store %struct.sway_container* %74, %struct.sway_container** %7, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load %struct.sway_container**, %struct.sway_container*** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %77, i64 %80
  %82 = load %struct.sway_container*, %struct.sway_container** %81, align 8
  store %struct.sway_container* %82, %struct.sway_container** %8, align 8
  br label %83

83:                                               ; preds = %66, %54
  br label %84

84:                                               ; preds = %83, %41
  br label %133

85:                                               ; preds = %34
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* @WLR_EDGE_TOP, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* @WLR_EDGE_LEFT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %89, %85
  %94 = load i32, i32* %10, align 4
  %95 = icmp sgt i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @sway_assert(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  br label %303

100:                                              ; preds = %93
  %101 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  store %struct.sway_container* %101, %struct.sway_container** %8, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load %struct.sway_container**, %struct.sway_container*** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %104, i64 %107
  %109 = load %struct.sway_container*, %struct.sway_container** %108, align 8
  store %struct.sway_container* %109, %struct.sway_container** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %132

112:                                              ; preds = %89
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = icmp slt i32 %113, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @sway_assert(i32 %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %112
  br label %303

123:                                              ; preds = %112
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load %struct.sway_container**, %struct.sway_container*** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %126, i64 %129
  %131 = load %struct.sway_container*, %struct.sway_container** %130, align 8
  store %struct.sway_container* %131, %struct.sway_container** %8, align 8
  br label %132

132:                                              ; preds = %123, %100
  br label %133

133:                                              ; preds = %132, %84
  %134 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %135 = icmp ne %struct.sway_container* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i32, i32* %6, align 4
  %138 = sitofp i32 %137 to double
  %139 = fdiv double %138, 2.000000e+00
  %140 = call i32 @ceil(double %139)
  br label %143

141:                                              ; preds = %133
  %142 = load i32, i32* %6, align 4
  br label %143

143:                                              ; preds = %141, %136
  %144 = phi i32 [ %140, %136 ], [ %142, %141 ]
  store i32 %144, i32* %11, align 4
  %145 = load i64, i64* %5, align 8
  %146 = call i64 @is_horizontal(i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %218

148:                                              ; preds = %143
  %149 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %150 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* @MIN_SANE_W, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %303

157:                                              ; preds = %148
  %158 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %159 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sub nsw i32 %160, %161
  %163 = load i32, i32* @MIN_SANE_W, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  br label %303

166:                                              ; preds = %157
  %167 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %168 = icmp ne %struct.sway_container* %167, null
  br i1 %168, label %169, label %178

169:                                              ; preds = %166
  %170 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %171 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sub nsw i32 %172, %173
  %175 = load i32, i32* @MIN_SANE_W, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  br label %303

178:                                              ; preds = %169, %166
  %179 = load i32, i32* %6, align 4
  %180 = sitofp i32 %179 to double
  %181 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %182 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sitofp i32 %183 to double
  %185 = fdiv double %180, %184
  %186 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %187 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %186, i32 0, i32 1
  %188 = load double, double* %187, align 8
  %189 = fmul double %185, %188
  store double %189, double* %12, align 8
  %190 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %191 = icmp ne %struct.sway_container* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %178
  %193 = load double, double* %12, align 8
  %194 = fdiv double %193, 2.000000e+00
  br label %197

195:                                              ; preds = %178
  %196 = load double, double* %12, align 8
  br label %197

197:                                              ; preds = %195, %192
  %198 = phi double [ %194, %192 ], [ %196, %195 ]
  store double %198, double* %13, align 8
  %199 = load double, double* %12, align 8
  %200 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %201 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %200, i32 0, i32 1
  %202 = load double, double* %201, align 8
  %203 = fadd double %202, %199
  store double %203, double* %201, align 8
  %204 = load double, double* %13, align 8
  %205 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %206 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %205, i32 0, i32 1
  %207 = load double, double* %206, align 8
  %208 = fsub double %207, %204
  store double %208, double* %206, align 8
  %209 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %210 = icmp ne %struct.sway_container* %209, null
  br i1 %210, label %211, label %217

211:                                              ; preds = %197
  %212 = load double, double* %13, align 8
  %213 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %214 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %213, i32 0, i32 1
  %215 = load double, double* %214, align 8
  %216 = fsub double %215, %212
  store double %216, double* %214, align 8
  br label %217

217:                                              ; preds = %211, %197
  br label %288

218:                                              ; preds = %143
  %219 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %220 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %221, %222
  %224 = load i32, i32* @MIN_SANE_H, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  br label %303

227:                                              ; preds = %218
  %228 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %229 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sub nsw i32 %230, %231
  %233 = load i32, i32* @MIN_SANE_H, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %227
  br label %303

236:                                              ; preds = %227
  %237 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %238 = icmp ne %struct.sway_container* %237, null
  br i1 %238, label %239, label %248

239:                                              ; preds = %236
  %240 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %241 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %11, align 4
  %244 = sub nsw i32 %242, %243
  %245 = load i32, i32* @MIN_SANE_H, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %239
  br label %303

248:                                              ; preds = %239, %236
  %249 = load i32, i32* %6, align 4
  %250 = sitofp i32 %249 to double
  %251 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %252 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = sitofp i32 %253 to double
  %255 = fdiv double %250, %254
  %256 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %257 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %256, i32 0, i32 3
  %258 = load double, double* %257, align 8
  %259 = fmul double %255, %258
  store double %259, double* %14, align 8
  %260 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %261 = icmp ne %struct.sway_container* %260, null
  br i1 %261, label %262, label %265

262:                                              ; preds = %248
  %263 = load double, double* %14, align 8
  %264 = fdiv double %263, 2.000000e+00
  br label %267

265:                                              ; preds = %248
  %266 = load double, double* %14, align 8
  br label %267

267:                                              ; preds = %265, %262
  %268 = phi double [ %264, %262 ], [ %266, %265 ]
  store double %268, double* %15, align 8
  %269 = load double, double* %14, align 8
  %270 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %271 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %270, i32 0, i32 3
  %272 = load double, double* %271, align 8
  %273 = fadd double %272, %269
  store double %273, double* %271, align 8
  %274 = load double, double* %15, align 8
  %275 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %276 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %275, i32 0, i32 3
  %277 = load double, double* %276, align 8
  %278 = fsub double %277, %274
  store double %278, double* %276, align 8
  %279 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %280 = icmp ne %struct.sway_container* %279, null
  br i1 %280, label %281, label %287

281:                                              ; preds = %267
  %282 = load double, double* %15, align 8
  %283 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %284 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %283, i32 0, i32 3
  %285 = load double, double* %284, align 8
  %286 = fsub double %285, %282
  store double %286, double* %284, align 8
  br label %287

287:                                              ; preds = %281, %267
  br label %288

288:                                              ; preds = %287, %217
  %289 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %290 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %289, i32 0, i32 5
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %288
  %294 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %295 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %294, i32 0, i32 5
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @arrange_container(i64 %296)
  br label %303

298:                                              ; preds = %288
  %299 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %300 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @arrange_workspace(i32 %301)
  br label %303

303:                                              ; preds = %18, %25, %99, %122, %156, %165, %177, %226, %235, %247, %298, %293
  ret void
}

declare dso_local %struct.sway_container* @container_find_resize_parent(%struct.sway_container*, i64) #1

declare dso_local %struct.TYPE_3__* @container_get_siblings(%struct.sway_container*) #1

declare dso_local i32 @container_sibling_index(%struct.sway_container*) #1

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @ceil(double) #1

declare dso_local i64 @is_horizontal(i64) #1

declare dso_local i32 @arrange_container(i64) #1

declare dso_local i32 @arrange_workspace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

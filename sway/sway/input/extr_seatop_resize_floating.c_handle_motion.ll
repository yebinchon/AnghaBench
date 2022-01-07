; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_resize_floating.c_handle_motion.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_resize_floating.c_handle_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.sway_cursor*, %struct.seatop_resize_floating_event* }
%struct.sway_cursor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { double, double }
%struct.seatop_resize_floating_event = type { i32, double, double, double, double, i32, i32, i64, %struct.sway_container* }
%struct.sway_container = type { double, double, i32, i32, i32, i32, i32, i32, i64 }

@WLR_EDGE_TOP = common dso_local global i32 0, align 4
@WLR_EDGE_BOTTOM = common dso_local global i32 0, align 4
@WLR_EDGE_LEFT = common dso_local global i32 0, align 4
@WLR_EDGE_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, i32, double, double)* @handle_motion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_motion(%struct.sway_seat* %0, i32 %1, double %2, double %3) #0 {
  %5 = alloca %struct.sway_seat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.seatop_resize_floating_event*, align 8
  %10 = alloca %struct.sway_container*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sway_cursor*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.sway_seat* %0, %struct.sway_seat** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %36 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %37 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %36, i32 0, i32 1
  %38 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %37, align 8
  store %struct.seatop_resize_floating_event* %38, %struct.seatop_resize_floating_event** %9, align 8
  %39 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %40 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %39, i32 0, i32 8
  %41 = load %struct.sway_container*, %struct.sway_container** %40, align 8
  store %struct.sway_container* %41, %struct.sway_container** %10, align 8
  %42 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %43 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %11, align 4
  %45 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %46 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %45, i32 0, i32 0
  %47 = load %struct.sway_cursor*, %struct.sway_cursor** %46, align 8
  store %struct.sway_cursor* %47, %struct.sway_cursor** %12, align 8
  %48 = load %struct.sway_cursor*, %struct.sway_cursor** %12, align 8
  %49 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %54 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %53, i32 0, i32 1
  %55 = load double, double* %54, align 8
  %56 = fsub double %52, %55
  store double %56, double* %13, align 8
  %57 = load %struct.sway_cursor*, %struct.sway_cursor** %12, align 8
  %58 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %63 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %62, i32 0, i32 2
  %64 = load double, double* %63, align 8
  %65 = fsub double %61, %64
  store double %65, double* %14, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @WLR_EDGE_TOP, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %4
  store double 0.000000e+00, double* %13, align 8
  br label %74

74:                                               ; preds = %73, %69
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @WLR_EDGE_LEFT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @WLR_EDGE_RIGHT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %74
  store double 0.000000e+00, double* %14, align 8
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @WLR_EDGE_LEFT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load double, double* %13, align 8
  %90 = fneg double %89
  br label %93

91:                                               ; preds = %83
  %92 = load double, double* %13, align 8
  br label %93

93:                                               ; preds = %91, %88
  %94 = phi double [ %90, %88 ], [ %92, %91 ]
  store double %94, double* %15, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @WLR_EDGE_TOP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load double, double* %14, align 8
  %101 = fneg double %100
  br label %104

102:                                              ; preds = %93
  %103 = load double, double* %14, align 8
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi double [ %101, %99 ], [ %103, %102 ]
  store double %105, double* %16, align 8
  %106 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %107 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %106, i32 0, i32 7
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %104
  %111 = load double, double* %15, align 8
  %112 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %113 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %112, i32 0, i32 3
  %114 = load double, double* %113, align 8
  %115 = fdiv double %111, %114
  store double %115, double* %17, align 8
  %116 = load double, double* %16, align 8
  %117 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %118 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %117, i32 0, i32 4
  %119 = load double, double* %118, align 8
  %120 = fdiv double %116, %119
  store double %120, double* %18, align 8
  %121 = load double, double* %17, align 8
  %122 = load double, double* %18, align 8
  %123 = call double @llvm.maxnum.f64(double %121, double %122)
  store double %123, double* %19, align 8
  %124 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %125 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %124, i32 0, i32 3
  %126 = load double, double* %125, align 8
  %127 = load double, double* %19, align 8
  %128 = fmul double %126, %127
  store double %128, double* %15, align 8
  %129 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %130 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %129, i32 0, i32 4
  %131 = load double, double* %130, align 8
  %132 = load double, double* %19, align 8
  %133 = fmul double %131, %132
  store double %133, double* %16, align 8
  br label %134

134:                                              ; preds = %110, %104
  %135 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %136 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %135, i32 0, i32 3
  %137 = load double, double* %136, align 8
  %138 = load double, double* %15, align 8
  %139 = fadd double %137, %138
  store double %139, double* %20, align 8
  %140 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %141 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %140, i32 0, i32 4
  %142 = load double, double* %141, align 8
  %143 = load double, double* %16, align 8
  %144 = fadd double %142, %143
  store double %144, double* %21, align 8
  %145 = call i32 @floating_calculate_constraints(i32* %22, i32* %23, i32* %24, i32* %25)
  %146 = load i32, i32* %22, align 4
  %147 = sitofp i32 %146 to double
  %148 = load double, double* %20, align 8
  %149 = load i32, i32* %23, align 4
  %150 = sitofp i32 %149 to double
  %151 = call double @llvm.minnum.f64(double %148, double %150)
  %152 = call double @llvm.maxnum.f64(double %147, double %151)
  store double %152, double* %20, align 8
  %153 = load i32, i32* %24, align 4
  %154 = sitofp i32 %153 to double
  %155 = load double, double* %21, align 8
  %156 = load i32, i32* %25, align 4
  %157 = sitofp i32 %156 to double
  %158 = call double @llvm.minnum.f64(double %155, double %157)
  %159 = call double @llvm.maxnum.f64(double %154, double %158)
  store double %159, double* %21, align 8
  %160 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %161 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %160, i32 0, i32 8
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %134
  %165 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %166 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %165, i32 0, i32 8
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @view_get_constraints(i64 %167, double* %26, double* %27, double* %28, double* %29)
  %169 = load double, double* %26, align 8
  %170 = load double, double* %20, align 8
  %171 = load double, double* %27, align 8
  %172 = call double @llvm.minnum.f64(double %170, double %171)
  %173 = call double @llvm.maxnum.f64(double %169, double %172)
  store double %173, double* %20, align 8
  %174 = load double, double* %28, align 8
  %175 = load double, double* %21, align 8
  %176 = load double, double* %29, align 8
  %177 = call double @llvm.minnum.f64(double %175, double %176)
  %178 = call double @llvm.maxnum.f64(double %174, double %177)
  store double %178, double* %21, align 8
  br label %179

179:                                              ; preds = %164, %134
  %180 = load double, double* %20, align 8
  %181 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %182 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %181, i32 0, i32 3
  %183 = load double, double* %182, align 8
  %184 = fsub double %180, %183
  store double %184, double* %15, align 8
  %185 = load double, double* %21, align 8
  %186 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %187 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %186, i32 0, i32 4
  %188 = load double, double* %187, align 8
  %189 = fsub double %185, %188
  store double %189, double* %16, align 8
  store double 0.000000e+00, double* %30, align 8
  store double 0.000000e+00, double* %31, align 8
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* @WLR_EDGE_LEFT, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %179
  %195 = load double, double* %15, align 8
  %196 = fneg double %195
  store double %196, double* %30, align 8
  br label %208

197:                                              ; preds = %179
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* @WLR_EDGE_RIGHT, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  store double 0.000000e+00, double* %30, align 8
  br label %207

203:                                              ; preds = %197
  %204 = load double, double* %15, align 8
  %205 = fneg double %204
  %206 = fdiv double %205, 2.000000e+00
  store double %206, double* %30, align 8
  br label %207

207:                                              ; preds = %203, %202
  br label %208

208:                                              ; preds = %207, %194
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* @WLR_EDGE_TOP, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load double, double* %16, align 8
  %215 = fneg double %214
  store double %215, double* %31, align 8
  br label %227

216:                                              ; preds = %208
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  store double 0.000000e+00, double* %31, align 8
  br label %226

222:                                              ; preds = %216
  %223 = load double, double* %16, align 8
  %224 = fneg double %223
  %225 = fdiv double %224, 2.000000e+00
  store double %225, double* %31, align 8
  br label %226

226:                                              ; preds = %222, %221
  br label %227

227:                                              ; preds = %226, %213
  %228 = load double, double* %20, align 8
  %229 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %230 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %229, i32 0, i32 0
  %231 = load double, double* %230, align 8
  %232 = fsub double %228, %231
  %233 = fptosi double %232 to i32
  store i32 %233, i32* %32, align 4
  %234 = load double, double* %21, align 8
  %235 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %236 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %235, i32 0, i32 1
  %237 = load double, double* %236, align 8
  %238 = fsub double %234, %237
  %239 = fptosi double %238 to i32
  store i32 %239, i32* %33, align 4
  %240 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %241 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 8
  %243 = sitofp i32 %242 to double
  %244 = load double, double* %30, align 8
  %245 = fadd double %243, %244
  %246 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %247 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = sitofp i32 %248 to double
  %250 = fsub double %245, %249
  %251 = fptosi double %250 to i32
  store i32 %251, i32* %34, align 4
  %252 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %9, align 8
  %253 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 4
  %255 = sitofp i32 %254 to double
  %256 = load double, double* %31, align 8
  %257 = fadd double %255, %256
  %258 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %259 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = sitofp i32 %260 to double
  %262 = fsub double %257, %261
  %263 = fptosi double %262 to i32
  store i32 %263, i32* %35, align 4
  %264 = load i32, i32* %34, align 4
  %265 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %266 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %267, %264
  store i32 %268, i32* %266, align 8
  %269 = load i32, i32* %35, align 4
  %270 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %271 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, %269
  store i32 %273, i32* %271, align 4
  %274 = load i32, i32* %32, align 4
  %275 = sitofp i32 %274 to double
  %276 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %277 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %276, i32 0, i32 0
  %278 = load double, double* %277, align 8
  %279 = fadd double %278, %275
  store double %279, double* %277, align 8
  %280 = load i32, i32* %33, align 4
  %281 = sitofp i32 %280 to double
  %282 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %283 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %282, i32 0, i32 1
  %284 = load double, double* %283, align 8
  %285 = fadd double %284, %281
  store double %285, double* %283, align 8
  %286 = load i32, i32* %34, align 4
  %287 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %288 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, %286
  store i32 %290, i32* %288, align 8
  %291 = load i32, i32* %35, align 4
  %292 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %293 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %294, %291
  store i32 %295, i32* %293, align 4
  %296 = load i32, i32* %32, align 4
  %297 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %298 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 8
  %300 = add nsw i32 %299, %296
  store i32 %300, i32* %298, align 8
  %301 = load i32, i32* %33, align 4
  %302 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %303 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %302, i32 0, i32 7
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, %301
  store i32 %305, i32* %303, align 4
  %306 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %307 = call i32 @arrange_container(%struct.sway_container* %306)
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.maxnum.f64(double, double) #1

declare dso_local i32 @floating_calculate_constraints(i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.minnum.f64(double, double) #1

declare dso_local i32 @view_get_constraints(i64, double*, double*, double*, double*) #2

declare dso_local i32 @arrange_container(%struct.sway_container*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

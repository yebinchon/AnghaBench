; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_apply_vert_layout.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_apply_vert_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { i64, double, double, i32, i32, %struct.sway_container*, %struct.sway_workspace* }
%struct.sway_workspace = type { double }
%struct.wlr_box = type { i32, double, i32, i32 }

@L_TABBED = common dso_local global i32 0, align 4
@L_STACKED = common dso_local global i32 0, align 4
@MIN_SANE_H = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Arranging %p vertically\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.wlr_box*)* @apply_vert_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_vert_layout(%struct.TYPE_3__* %0, %struct.wlr_box* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.wlr_box*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_container*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sway_container*, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.sway_container*, align 8
  %16 = alloca %struct.sway_workspace*, align 8
  %17 = alloca %struct.sway_container*, align 8
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.sway_container*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.wlr_box* %1, %struct.wlr_box** %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %287

29:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  store double 0.000000e+00, double* %6, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load %struct.sway_container**, %struct.sway_container*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %39, i64 %41
  %43 = load %struct.sway_container*, %struct.sway_container** %42, align 8
  store %struct.sway_container* %43, %struct.sway_container** %8, align 8
  %44 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %45 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sitofp i64 %46 to double
  %48 = load double, double* %6, align 8
  %49 = fadd double %48, %47
  store double %49, double* %6, align 8
  %50 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %51 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %36
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %36
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %30

61:                                               ; preds = %30
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %118, %61
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %121

68:                                               ; preds = %62
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load %struct.sway_container**, %struct.sway_container*** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %71, i64 %73
  %75 = load %struct.sway_container*, %struct.sway_container** %74, align 8
  store %struct.sway_container* %75, %struct.sway_container** %11, align 8
  %76 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %77 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %68
  %81 = load double, double* %6, align 8
  %82 = fcmp ole double %81, 0.000000e+00
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %85 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %84, i32 0, i32 0
  store i64 1, i64* %85, align 8
  br label %110

86:                                               ; preds = %80
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load double, double* %6, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sitofp i32 %98 to double
  %100 = fdiv double %93, %99
  %101 = fptosi double %100 to i64
  %102 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %103 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %109

104:                                              ; preds = %86
  %105 = load double, double* %6, align 8
  %106 = fptosi double %105 to i64
  %107 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %108 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %104, %92
  br label %110

110:                                              ; preds = %109, %83
  br label %111

111:                                              ; preds = %110, %68
  %112 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %113 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sitofp i64 %114 to double
  %116 = load double, double* %9, align 8
  %117 = fadd double %116, %115
  store double %117, double* %9, align 8
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %62

121:                                              ; preds = %62
  store i32 0, i32* %12, align 4
  br label %122

122:                                              ; preds = %143, %121
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %122
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load %struct.sway_container**, %struct.sway_container*** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %131, i64 %133
  %135 = load %struct.sway_container*, %struct.sway_container** %134, align 8
  store %struct.sway_container* %135, %struct.sway_container** %13, align 8
  %136 = load double, double* %9, align 8
  %137 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %138 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = sitofp i64 %139 to double
  %141 = fdiv double %140, %136
  %142 = fptosi double %141 to i64
  store i64 %142, i64* %138, align 8
  br label %143

143:                                              ; preds = %128
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %122

146:                                              ; preds = %122
  store double 0.000000e+00, double* %14, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load %struct.sway_container**, %struct.sway_container*** %148, align 8
  %150 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %149, i64 0
  %151 = load %struct.sway_container*, %struct.sway_container** %150, align 8
  store %struct.sway_container* %151, %struct.sway_container** %15, align 8
  %152 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %153 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %152, i32 0, i32 6
  %154 = load %struct.sway_workspace*, %struct.sway_workspace** %153, align 8
  store %struct.sway_workspace* %154, %struct.sway_workspace** %16, align 8
  %155 = load %struct.sway_workspace*, %struct.sway_workspace** %16, align 8
  %156 = icmp ne %struct.sway_workspace* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %146
  %158 = load %struct.sway_workspace*, %struct.sway_workspace** %16, align 8
  %159 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %158, i32 0, i32 0
  %160 = load double, double* %159, align 8
  store double %160, double* %14, align 8
  br label %161

161:                                              ; preds = %157, %146
  %162 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  store %struct.sway_container* %162, %struct.sway_container** %17, align 8
  br label %163

163:                                              ; preds = %177, %161
  %164 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %165 = icmp ne %struct.sway_container* %164, null
  br i1 %165, label %166, label %181

166:                                              ; preds = %163
  %167 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %168 = call i32 @container_parent_layout(%struct.sway_container* %167)
  store i32 %168, i32* %18, align 4
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* @L_TABBED, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %166
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* @L_STACKED, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172, %166
  store double 0.000000e+00, double* %14, align 8
  br label %177

177:                                              ; preds = %176, %172
  %178 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %179 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %178, i32 0, i32 5
  %180 = load %struct.sway_container*, %struct.sway_container** %179, align 8
  store %struct.sway_container* %180, %struct.sway_container** %17, align 8
  br label %163

181:                                              ; preds = %163
  %182 = load double, double* %14, align 8
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sub nsw i32 %185, 1
  %187 = sitofp i32 %186 to double
  %188 = fmul double %182, %187
  %189 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %190 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @MIN_SANE_H, align 4
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = mul nsw i32 %192, %195
  %197 = sub nsw i32 %191, %196
  %198 = call i32 @fmax(i32 0, i32 %197)
  %199 = call double @fmin(double %188, i32 %198)
  store double %199, double* %19, align 8
  %200 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %201 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sitofp i32 %202 to double
  %204 = load double, double* %19, align 8
  %205 = fsub double %203, %204
  store double %205, double* %20, align 8
  %206 = load double, double* %19, align 8
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %209, 1
  %211 = sitofp i32 %210 to double
  %212 = fdiv double %206, %211
  store double %212, double* %14, align 8
  %213 = load i32, i32* @SWAY_DEBUG, align 4
  %214 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %215 = call i32 @sway_log(i32 %213, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.wlr_box* %214)
  %216 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %217 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %216, i32 0, i32 1
  %218 = load double, double* %217, align 8
  store double %218, double* %21, align 8
  store i32 0, i32* %22, align 4
  br label %219

219:                                              ; preds = %284, %181
  %220 = load i32, i32* %22, align 4
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %287

225:                                              ; preds = %219
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 1
  %228 = load %struct.sway_container**, %struct.sway_container*** %227, align 8
  %229 = load i32, i32* %22, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %228, i64 %230
  %232 = load %struct.sway_container*, %struct.sway_container** %231, align 8
  store %struct.sway_container* %232, %struct.sway_container** %23, align 8
  %233 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %234 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.sway_container*, %struct.sway_container** %23, align 8
  %237 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %236, i32 0, i32 4
  store i32 %235, i32* %237, align 4
  %238 = load double, double* %21, align 8
  %239 = load %struct.sway_container*, %struct.sway_container** %23, align 8
  %240 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %239, i32 0, i32 1
  store double %238, double* %240, align 8
  %241 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %242 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.sway_container*, %struct.sway_container** %23, align 8
  %245 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 8
  %246 = load %struct.sway_container*, %struct.sway_container** %23, align 8
  %247 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = sitofp i64 %248 to double
  %250 = load double, double* %20, align 8
  %251 = fmul double %249, %250
  %252 = call double @llvm.floor.f64(double %251)
  %253 = load %struct.sway_container*, %struct.sway_container** %23, align 8
  %254 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %253, i32 0, i32 2
  store double %252, double* %254, align 8
  %255 = load %struct.sway_container*, %struct.sway_container** %23, align 8
  %256 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %255, i32 0, i32 2
  %257 = load double, double* %256, align 8
  %258 = load double, double* %14, align 8
  %259 = fadd double %257, %258
  %260 = load double, double* %21, align 8
  %261 = fadd double %260, %259
  store double %261, double* %21, align 8
  %262 = load i32, i32* %22, align 4
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = sub nsw i32 %265, 1
  %267 = icmp eq i32 %262, %266
  br i1 %267, label %268, label %283

268:                                              ; preds = %225
  %269 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %270 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %269, i32 0, i32 1
  %271 = load double, double* %270, align 8
  %272 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %273 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = sitofp i32 %274 to double
  %276 = fadd double %271, %275
  %277 = load %struct.sway_container*, %struct.sway_container** %23, align 8
  %278 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %277, i32 0, i32 1
  %279 = load double, double* %278, align 8
  %280 = fsub double %276, %279
  %281 = load %struct.sway_container*, %struct.sway_container** %23, align 8
  %282 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %281, i32 0, i32 2
  store double %280, double* %282, align 8
  br label %283

283:                                              ; preds = %268, %225
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %22, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %22, align 4
  br label %219

287:                                              ; preds = %28, %219
  ret void
}

declare dso_local i32 @container_parent_layout(%struct.sway_container*) #1

declare dso_local double @fmin(double, i32) #1

declare dso_local i32 @fmax(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*, %struct.wlr_box*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

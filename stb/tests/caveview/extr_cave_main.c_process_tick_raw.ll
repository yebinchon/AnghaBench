; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_process_tick_raw.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_process_tick_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@controls = common dso_local global i32 0, align 4
@EFFECTIVE_ACCEL = common dso_local global float 0.000000e+00, align 4
@cam_vel = common dso_local global float* null, align 8
@STATIC_FRICTION = common dso_local global float 0.000000e+00, align 4
@DYNAMIC_FRICTION = common dso_local global float 0.000000e+00, align 4
@camloc = common dso_local global float* null, align 8
@view_x_vel = common dso_local global float 0.000000e+00, align 4
@view_z_vel = common dso_local global float 0.000000e+00, align 4
@pending_view_x = common dso_local global float 0.000000e+00, align 4
@pending_view_z = common dso_local global float 0.000000e+00, align 4
@camang = common dso_local global float* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_tick_raw(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store float %0, float* %2, align 4
  %10 = bitcast [3 x float]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  %11 = load i32, i32* @controls, align 4
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load float, float* @EFFECTIVE_ACCEL, align 4
  br label %26

16:                                               ; preds = %1
  %17 = load i32, i32* @controls, align 4
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load float, float* @EFFECTIVE_ACCEL, align 4
  %22 = fneg float %21
  br label %24

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi float [ %22, %20 ], [ 0.000000e+00, %23 ]
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi float [ %15, %14 ], [ %25, %24 ]
  %28 = getelementptr inbounds [3 x float], [3 x float]* %4, i64 0, i64 0
  store float %27, float* %28, align 4
  %29 = load i32, i32* @controls, align 4
  %30 = and i32 %29, 12
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load float, float* @EFFECTIVE_ACCEL, align 4
  br label %44

34:                                               ; preds = %26
  %35 = load i32, i32* @controls, align 4
  %36 = and i32 %35, 12
  %37 = icmp eq i32 %36, 8
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load float, float* @EFFECTIVE_ACCEL, align 4
  %40 = fneg float %39
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi float [ %40, %38 ], [ 0.000000e+00, %41 ]
  br label %44

44:                                               ; preds = %42, %32
  %45 = phi float [ %33, %32 ], [ %43, %42 ]
  %46 = getelementptr inbounds [3 x float], [3 x float]* %4, i64 0, i64 1
  store float %45, float* %46, align 4
  %47 = load i32, i32* @controls, align 4
  %48 = and i32 %47, 48
  %49 = icmp eq i32 %48, 16
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load float, float* @EFFECTIVE_ACCEL, align 4
  br label %62

52:                                               ; preds = %44
  %53 = load i32, i32* @controls, align 4
  %54 = and i32 %53, 48
  %55 = icmp eq i32 %54, 32
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load float, float* @EFFECTIVE_ACCEL, align 4
  %58 = fneg float %57
  br label %60

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi float [ %58, %56 ], [ 0.000000e+00, %59 ]
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi float [ %51, %50 ], [ %61, %60 ]
  %64 = getelementptr inbounds [3 x float], [3 x float]* %4, i64 0, i64 2
  store float %63, float* %64, align 4
  %65 = getelementptr inbounds [3 x float], [3 x float]* %5, i64 0, i64 0
  %66 = getelementptr inbounds [3 x float], [3 x float]* %4, i64 0, i64 0
  %67 = load float, float* %66, align 4
  %68 = getelementptr inbounds [3 x float], [3 x float]* %4, i64 0, i64 1
  %69 = load float, float* %68, align 4
  %70 = call i32 @camera_to_worldspace(float* %65, float %67, float %69, i32 0)
  %71 = getelementptr inbounds [3 x float], [3 x float]* %4, i64 0, i64 2
  %72 = load float, float* %71, align 4
  %73 = getelementptr inbounds [3 x float], [3 x float]* %5, i64 0, i64 2
  %74 = load float, float* %73, align 4
  %75 = fadd float %74, %72
  store float %75, float* %73, align 4
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %93, %62
  %77 = load i32, i32* %3, align 4
  %78 = icmp slt i32 %77, 3
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x float], [3 x float]* %5, i64 0, i64 %81
  %83 = load float, float* %82, align 4
  store float %83, float* %6, align 4
  %84 = load float, float* %6, align 4
  %85 = load float, float* %2, align 4
  %86 = fmul float %84, %85
  %87 = load float*, float** @cam_vel, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %87, i64 %89
  %91 = load float, float* %90, align 4
  %92 = fadd float %91, %86
  store float %92, float* %90, align 4
  br label %93

93:                                               ; preds = %79
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %76

96:                                               ; preds = %76
  %97 = load float*, float** @cam_vel, align 8
  %98 = getelementptr inbounds float, float* %97, i64 0
  %99 = load float, float* %98, align 4
  %100 = fcmp une float %99, 0.000000e+00
  br i1 %100, label %111, label %101

101:                                              ; preds = %96
  %102 = load float*, float** @cam_vel, align 8
  %103 = getelementptr inbounds float, float* %102, i64 1
  %104 = load float, float* %103, align 4
  %105 = fcmp une float %104, 0.000000e+00
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load float*, float** @cam_vel, align 8
  %108 = getelementptr inbounds float, float* %107, i64 2
  %109 = load float, float* %108, align 4
  %110 = fcmp une float %109, 0.000000e+00
  br i1 %110, label %111, label %173

111:                                              ; preds = %106, %101, %96
  %112 = load float*, float** @cam_vel, align 8
  %113 = getelementptr inbounds float, float* %112, i64 0
  %114 = load float, float* %113, align 4
  %115 = load float*, float** @cam_vel, align 8
  %116 = getelementptr inbounds float, float* %115, i64 0
  %117 = load float, float* %116, align 4
  %118 = fmul float %114, %117
  %119 = load float*, float** @cam_vel, align 8
  %120 = getelementptr inbounds float, float* %119, i64 1
  %121 = load float, float* %120, align 4
  %122 = load float*, float** @cam_vel, align 8
  %123 = getelementptr inbounds float, float* %122, i64 1
  %124 = load float, float* %123, align 4
  %125 = fmul float %121, %124
  %126 = fadd float %118, %125
  %127 = load float*, float** @cam_vel, align 8
  %128 = getelementptr inbounds float, float* %127, i64 2
  %129 = load float, float* %128, align 4
  %130 = load float*, float** @cam_vel, align 8
  %131 = getelementptr inbounds float, float* %130, i64 2
  %132 = load float, float* %131, align 4
  %133 = fmul float %129, %132
  %134 = fadd float %126, %133
  %135 = call i64 @sqrt(float %134)
  %136 = sitofp i64 %135 to float
  store float %136, float* %7, align 4
  %137 = load float, float* %7, align 4
  store float %137, float* %8, align 4
  %138 = load float, float* @STATIC_FRICTION, align 4
  %139 = load float, float* @DYNAMIC_FRICTION, align 4
  %140 = load float, float* %7, align 4
  %141 = fmul float %139, %140
  %142 = fadd float %138, %141
  store float %142, float* %9, align 4
  %143 = load float, float* %7, align 4
  %144 = load float, float* %9, align 4
  %145 = load float, float* %2, align 4
  %146 = fmul float %144, %145
  %147 = fsub float %143, %146
  store float %147, float* %8, align 4
  %148 = load float, float* %8, align 4
  %149 = fcmp olt float %148, 0.000000e+00
  br i1 %149, label %150, label %151

150:                                              ; preds = %111
  store float 0.000000e+00, float* %8, align 4
  br label %151

151:                                              ; preds = %150, %111
  %152 = load float, float* %8, align 4
  %153 = load float, float* %7, align 4
  %154 = fdiv float %152, %153
  %155 = load float*, float** @cam_vel, align 8
  %156 = getelementptr inbounds float, float* %155, i64 0
  %157 = load float, float* %156, align 4
  %158 = fmul float %157, %154
  store float %158, float* %156, align 4
  %159 = load float, float* %8, align 4
  %160 = load float, float* %7, align 4
  %161 = fdiv float %159, %160
  %162 = load float*, float** @cam_vel, align 8
  %163 = getelementptr inbounds float, float* %162, i64 1
  %164 = load float, float* %163, align 4
  %165 = fmul float %164, %161
  store float %165, float* %163, align 4
  %166 = load float, float* %8, align 4
  %167 = load float, float* %7, align 4
  %168 = fdiv float %166, %167
  %169 = load float*, float** @cam_vel, align 8
  %170 = getelementptr inbounds float, float* %169, i64 2
  %171 = load float, float* %170, align 4
  %172 = fmul float %171, %168
  store float %172, float* %170, align 4
  br label %173

173:                                              ; preds = %151, %106
  %174 = load float*, float** @cam_vel, align 8
  %175 = getelementptr inbounds float, float* %174, i64 0
  %176 = load float, float* %175, align 4
  %177 = load float, float* %2, align 4
  %178 = fmul float %176, %177
  %179 = load float*, float** @camloc, align 8
  %180 = getelementptr inbounds float, float* %179, i64 0
  %181 = load float, float* %180, align 4
  %182 = fadd float %181, %178
  store float %182, float* %180, align 4
  %183 = load float*, float** @cam_vel, align 8
  %184 = getelementptr inbounds float, float* %183, i64 1
  %185 = load float, float* %184, align 4
  %186 = load float, float* %2, align 4
  %187 = fmul float %185, %186
  %188 = load float*, float** @camloc, align 8
  %189 = getelementptr inbounds float, float* %188, i64 1
  %190 = load float, float* %189, align 4
  %191 = fadd float %190, %187
  store float %191, float* %189, align 4
  %192 = load float*, float** @cam_vel, align 8
  %193 = getelementptr inbounds float, float* %192, i64 2
  %194 = load float, float* %193, align 4
  %195 = load float, float* %2, align 4
  %196 = fmul float %194, %195
  %197 = load float*, float** @camloc, align 8
  %198 = getelementptr inbounds float, float* %197, i64 2
  %199 = load float, float* %198, align 4
  %200 = fadd float %199, %196
  store float %200, float* %198, align 4
  %201 = load float, float* %2, align 4
  %202 = call i64 @pow(double 7.500000e-01, float %201)
  %203 = sitofp i64 %202 to float
  %204 = load float, float* @view_x_vel, align 4
  %205 = fmul float %204, %203
  store float %205, float* @view_x_vel, align 4
  %206 = load float, float* %2, align 4
  %207 = call i64 @pow(double 7.500000e-01, float %206)
  %208 = sitofp i64 %207 to float
  %209 = load float, float* @view_z_vel, align 4
  %210 = fmul float %209, %208
  store float %210, float* @view_z_vel, align 4
  %211 = load float, float* @pending_view_x, align 4
  %212 = load float, float* @view_x_vel, align 4
  %213 = fsub float %211, %212
  %214 = load float, float* %2, align 4
  %215 = fmul float %213, %214
  %216 = fmul float %215, 6.000000e+01
  %217 = load float, float* @view_x_vel, align 4
  %218 = fadd float %217, %216
  store float %218, float* @view_x_vel, align 4
  %219 = load float, float* @pending_view_z, align 4
  %220 = load float, float* @view_z_vel, align 4
  %221 = fsub float %219, %220
  %222 = load float, float* %2, align 4
  %223 = fmul float %221, %222
  %224 = fmul float %223, 6.000000e+01
  %225 = load float, float* @view_z_vel, align 4
  %226 = fadd float %225, %224
  store float %226, float* @view_z_vel, align 4
  %227 = load float, float* @view_x_vel, align 4
  %228 = load float, float* %2, align 4
  %229 = fmul float %227, %228
  %230 = load float, float* @pending_view_x, align 4
  %231 = fsub float %230, %229
  store float %231, float* @pending_view_x, align 4
  %232 = load float, float* @view_z_vel, align 4
  %233 = load float, float* %2, align 4
  %234 = fmul float %232, %233
  %235 = load float, float* @pending_view_z, align 4
  %236 = fsub float %235, %234
  store float %236, float* @pending_view_z, align 4
  %237 = load float, float* @view_x_vel, align 4
  %238 = load float, float* %2, align 4
  %239 = fmul float %237, %238
  %240 = load float*, float** @camang, align 8
  %241 = getelementptr inbounds float, float* %240, i64 0
  %242 = load float, float* %241, align 4
  %243 = fadd float %242, %239
  store float %243, float* %241, align 4
  %244 = load float, float* @view_z_vel, align 4
  %245 = load float, float* %2, align 4
  %246 = fmul float %244, %245
  %247 = load float*, float** @camang, align 8
  %248 = getelementptr inbounds float, float* %247, i64 2
  %249 = load float, float* %248, align 4
  %250 = fadd float %249, %246
  store float %250, float* %248, align 4
  %251 = load float*, float** @camang, align 8
  %252 = getelementptr inbounds float, float* %251, i64 0
  %253 = load float, float* %252, align 4
  %254 = call float @stb_clamp(float %253, i32 -90, i32 90)
  %255 = load float*, float** @camang, align 8
  %256 = getelementptr inbounds float, float* %255, i64 0
  store float %254, float* %256, align 4
  %257 = load float*, float** @camang, align 8
  %258 = getelementptr inbounds float, float* %257, i64 2
  %259 = load float, float* %258, align 4
  %260 = call i64 @fmod(float %259, i32 360)
  %261 = sitofp i64 %260 to float
  %262 = load float*, float** @camang, align 8
  %263 = getelementptr inbounds float, float* %262, i64 2
  store float %261, float* %263, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @camera_to_worldspace(float*, float, float, i32) #2

declare dso_local i64 @sqrt(float) #2

declare dso_local i64 @pow(double, float) #2

declare dso_local float @stb_clamp(float, i32, i32) #2

declare dso_local i64 @fmod(float, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

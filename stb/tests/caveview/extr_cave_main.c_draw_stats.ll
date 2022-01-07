; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_draw_stats.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_draw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@draw_stats.last_frame_time = internal global float 0.000000e+00, align 4
@chunk_server_activity = common dso_local global float 0.000000e+00, align 4
@chunk_server_status = common dso_local global float* null, align 8
@chunk_server_pos = common dso_local global i64 0, align 8
@pos_y = common dso_local global i32 0, align 4
@text_color = common dso_local global double* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"Frame time: %6.2fms, CPU frame render time: %5.2fms\00", align 1
@render_time = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Tris: %4.1fM drawn of %4.1fM in range\00", align 1
@quads_rendered = common dso_local global i32 0, align 4
@quads_considered = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Vbuf storage: %dMB in frustum of %dMB in range of %dMB in cache\00", align 1
@chunk_storage_rendered = common dso_local global i32 0, align 4
@chunk_storage_considered = common dso_local global i32 0, align 4
@chunk_storage_total = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"Num mesh builds started this frame: %d; num uploaded this frame: %d\0A\00", align 1
@num_meshes_started = common dso_local global i32 0, align 4
@num_meshes_uploaded = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"QChunks: %3d in frustum of %3d valid of %3d in range\00", align 1
@chunks_in_frustum = common dso_local global i32 0, align 4
@chunks_considered = common dso_local global i32 0, align 4
@chunk_locations = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Mesh worker threads active: %d\00", align 1
@num_threads_active = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"View distance: %d blocks\00", align 1
@view_dist_in_chunks = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GL_RENDERER = common dso_local global i32 0, align 4
@is_synchronous_debug = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [47 x i8] c"SLOWNESS: Synchronous debug output is enabled!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_stats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = call float (...) @SDL_GetPerformanceCounter()
  store float %5, float* %2, align 4
  store float 0.000000e+00, float* %3, align 4
  %6 = load float, float* %2, align 4
  %7 = load float, float* @draw_stats.last_frame_time, align 4
  %8 = fsub float %6, %7
  %9 = call i64 (...) @SDL_GetPerformanceFrequency()
  %10 = sitofp i64 %9 to float
  %11 = fdiv float %8, %10
  store float %11, float* %4, align 4
  %12 = load float, float* %2, align 4
  store float %12, float* @draw_stats.last_frame_time, align 4
  %13 = load float, float* @chunk_server_activity, align 4
  %14 = load float*, float** @chunk_server_status, align 8
  %15 = load i64, i64* @chunk_server_pos, align 8
  %16 = getelementptr inbounds float, float* %14, i64 %15
  store float %13, float* %16, align 4
  %17 = load i64, i64* @chunk_server_pos, align 8
  %18 = add i64 %17, 1
  %19 = urem i64 %18, 32
  store i64 %19, i64* @chunk_server_pos, align 8
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %32, %0
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %21, 32
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load float*, float** @chunk_server_status, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %24, i64 %26
  %28 = load float, float* %27, align 4
  %29 = fdiv float %28, 3.200000e+01
  %30 = load float, float* %3, align 4
  %31 = fadd float %30, %29
  store float %31, float* %3, align 4
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %20

35:                                               ; preds = %20
  %36 = call i32 @stb_easy_font_spacing(double -7.500000e-01)
  store i32 10, i32* @pos_y, align 4
  %37 = load double*, double** @text_color, align 8
  %38 = getelementptr inbounds double, double* %37, i64 2
  store double 1.000000e+00, double* %38, align 8
  %39 = load double*, double** @text_color, align 8
  %40 = getelementptr inbounds double, double* %39, i64 1
  store double 1.000000e+00, double* %40, align 8
  %41 = load double*, double** @text_color, align 8
  %42 = getelementptr inbounds double, double* %41, i64 0
  store double 1.000000e+00, double* %42, align 8
  %43 = load float, float* %4, align 4
  %44 = fmul float %43, 1.000000e+03
  %45 = fpext float %44 to double
  %46 = load i32, i32* @render_time, align 4
  %47 = mul nsw i32 %46, 1000
  %48 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), double %45, i32 %47)
  %49 = load i32, i32* @quads_rendered, align 4
  %50 = mul nsw i32 2, %49
  %51 = sitofp i32 %50 to float
  %52 = fdiv float %51, 1.000000e+06
  %53 = fpext float %52 to double
  %54 = load i32, i32* @quads_considered, align 4
  %55 = mul nsw i32 2, %54
  %56 = sitofp i32 %55 to float
  %57 = fdiv float %56, 1.000000e+06
  %58 = fpext float %57 to double
  %59 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), double %53, double %58)
  %60 = load i32, i32* @chunk_storage_rendered, align 4
  %61 = ashr i32 %60, 20
  %62 = load i32, i32* @chunk_storage_considered, align 4
  %63 = ashr i32 %62, 20
  %64 = load i32, i32* @chunk_storage_total, align 4
  %65 = ashr i32 %64, 20
  %66 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %63, i32 %65)
  %67 = load i32, i32* @num_meshes_started, align 4
  %68 = load i32, i32* @num_meshes_uploaded, align 4
  %69 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* @chunks_in_frustum, align 4
  %71 = load i32, i32* @chunks_considered, align 4
  %72 = load i32, i32* @chunk_locations, align 4
  %73 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* @num_threads_active, align 4
  %75 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @view_dist_in_chunks, align 4
  %77 = mul nsw i32 %76, 16
  %78 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @GL_RENDERER, align 4
  %80 = call i32 @glGetString(i32 %79)
  %81 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  %82 = load i64, i64* @is_synchronous_debug, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %35
  %85 = load double*, double** @text_color, align 8
  %86 = getelementptr inbounds double, double* %85, i64 0
  store double 1.000000e+00, double* %86, align 8
  %87 = load double*, double** @text_color, align 8
  %88 = getelementptr inbounds double, double* %87, i64 1
  store double 5.000000e-01, double* %88, align 8
  %89 = load double*, double** @text_color, align 8
  %90 = getelementptr inbounds double, double* %89, i64 2
  store double 5.000000e-01, double* %90, align 8
  %91 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %92

92:                                               ; preds = %84, %35
  ret void
}

declare dso_local float @SDL_GetPerformanceCounter(...) #1

declare dso_local i64 @SDL_GetPerformanceFrequency(...) #1

declare dso_local i32 @stb_easy_font_spacing(double) #1

declare dso_local i32 @print(i8*, ...) #1

declare dso_local i32 @glGetString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

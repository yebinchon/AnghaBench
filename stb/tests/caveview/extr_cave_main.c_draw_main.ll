; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_draw_main.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_draw_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_LIGHTING = common dso_local global i32 0, align 4
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_LESS = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_CW = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@player_zoom = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@camang = common dso_local global i32* null, align 8
@camloc = common dso_local global i32* null, align 8
@start_time = common dso_local global float 0.000000e+00, align 4
@end_time = common dso_local global float 0.000000e+00, align 4
@render_time = common dso_local global float 0.000000e+00, align 4
@screen_x = common dso_local global i32 0, align 4
@screen_y = common dso_local global i32 0, align 4
@GL_GREATER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_main() #0 {
  %1 = load i32, i32* @GL_CULL_FACE, align 4
  %2 = call i32 @glEnable(i32 %1)
  %3 = load i32, i32* @GL_TEXTURE_2D, align 4
  %4 = call i32 @glDisable(i32 %3)
  %5 = load i32, i32* @GL_LIGHTING, align 4
  %6 = call i32 @glDisable(i32 %5)
  %7 = load i32, i32* @GL_DEPTH_TEST, align 4
  %8 = call i32 @glEnable(i32 %7)
  %9 = load i32, i32* @GL_LESS, align 4
  %10 = call i32 @glDepthFunc(i32 %9)
  %11 = call i32 @glClearDepth(i32 1)
  %12 = load i32, i32* @GL_TRUE, align 4
  %13 = call i32 @glDepthMask(i32 %12)
  %14 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %15 = call i32 @glDisable(i32 %14)
  %16 = call i32 @glClearColor(float 0x3FE3333340000000, float 0x3FE6666660000000, float 0x3FECCCCCC0000000, float 0.000000e+00)
  %17 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %18 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @glClear(i32 %19)
  %21 = load i32, i32* @GL_SRC_ALPHA, align 4
  %22 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  %23 = call i32 @glBlendFunc(i32 %21, i32 %22)
  %24 = call i32 @glColor3f(i32 1, i32 1, i32 1)
  %25 = load i32, i32* @GL_CW, align 4
  %26 = call i32 @glFrontFace(i32 %25)
  %27 = load i32, i32* @GL_TEXTURE_2D, align 4
  %28 = call i32 @glEnable(i32 %27)
  %29 = load i32, i32* @GL_BLEND, align 4
  %30 = call i32 @glDisable(i32 %29)
  %31 = load i32, i32* @GL_PROJECTION, align 4
  %32 = call i32 @glMatrixMode(i32 %31)
  %33 = call i32 (...) @glLoadIdentity()
  %34 = load i32, i32* @player_zoom, align 4
  %35 = call i32 @stbgl_Perspective(i32 %34, i32 90, i32 70, double 6.250000e-02, i32 3000)
  %36 = load i32, i32* @GL_MODELVIEW, align 4
  %37 = call i32 @glMatrixMode(i32 %36)
  %38 = call i32 (...) @glLoadIdentity()
  %39 = call i32 (...) @stbgl_initCamera_zup_facing_y()
  %40 = load i32*, i32** @camang, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32 @glRotatef(i32 %43, i32 1, i32 0, i32 0)
  %45 = load i32*, i32** @camang, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i32 @glRotatef(i32 %48, i32 0, i32 0, i32 1)
  %50 = load i32*, i32** @camloc, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 0, %52
  %54 = load i32*, i32** @camloc, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 0, %56
  %58 = load i32*, i32** @camloc, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i32 @glTranslatef(i32 %53, i32 %57, i32 %61)
  %63 = call float (...) @SDL_GetPerformanceCounter()
  store float %63, float* @start_time, align 4
  %64 = load i32*, i32** @camloc, align 8
  %65 = call i32 @render_caves(i32* %64)
  %66 = call float (...) @SDL_GetPerformanceCounter()
  store float %66, float* @end_time, align 4
  %67 = load float, float* @end_time, align 4
  %68 = load float, float* @start_time, align 4
  %69 = fsub float %67, %68
  %70 = call i64 (...) @SDL_GetPerformanceFrequency()
  %71 = sitofp i64 %70 to float
  %72 = fdiv float %69, %71
  store float %72, float* @render_time, align 4
  %73 = load i32, i32* @GL_PROJECTION, align 4
  %74 = call i32 @glMatrixMode(i32 %73)
  %75 = call i32 (...) @glLoadIdentity()
  %76 = load i32, i32* @screen_x, align 4
  %77 = sdiv i32 %76, 2
  %78 = load i32, i32* @screen_y, align 4
  %79 = sdiv i32 %78, 2
  %80 = call i32 @gluOrtho2D(i32 0, i32 %77, i32 %79, i32 0)
  %81 = load i32, i32* @GL_MODELVIEW, align 4
  %82 = call i32 @glMatrixMode(i32 %81)
  %83 = call i32 (...) @glLoadIdentity()
  %84 = load i32, i32* @GL_TEXTURE_2D, align 4
  %85 = call i32 @glDisable(i32 %84)
  %86 = load i32, i32* @GL_BLEND, align 4
  %87 = call i32 @glDisable(i32 %86)
  %88 = load i32, i32* @GL_CULL_FACE, align 4
  %89 = call i32 @glDisable(i32 %88)
  %90 = call i32 (...) @draw_stats()
  ret void
}

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @glDepthFunc(i32) #1

declare dso_local i32 @glClearDepth(i32) #1

declare dso_local i32 @glDepthMask(i32) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glBlendFunc(i32, i32) #1

declare dso_local i32 @glColor3f(i32, i32, i32) #1

declare dso_local i32 @glFrontFace(i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @stbgl_Perspective(i32, i32, i32, double, i32) #1

declare dso_local i32 @stbgl_initCamera_zup_facing_y(...) #1

declare dso_local i32 @glRotatef(i32, i32, i32, i32) #1

declare dso_local i32 @glTranslatef(i32, i32, i32) #1

declare dso_local float @SDL_GetPerformanceCounter(...) #1

declare dso_local i32 @render_caves(i32*) #1

declare dso_local i64 @SDL_GetPerformanceFrequency(...) #1

declare dso_local i32 @gluOrtho2D(i32, i32, i32, i32) #1

declare dso_local i32 @draw_stats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

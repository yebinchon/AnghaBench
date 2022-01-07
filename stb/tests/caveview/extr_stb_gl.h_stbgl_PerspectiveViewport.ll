; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_PerspectiveViewport.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_PerspectiveViewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stbgl_PerspectiveViewport(i32 %0, i32 %1, i32 %2, i32 %3, float %4, float %5, float %6, float %7, float %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store float %8, float* %18, align 4
  %19 = load float, float* %17, align 4
  %20 = fcmp ole float %19, 0x3F1A36E2E0000000
  br i1 %20, label %21, label %22

21:                                               ; preds = %9
  store float 0x3F1A36E2E0000000, float* %17, align 4
  br label %22

22:                                               ; preds = %21, %9
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @glViewport(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @glScissor(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @GL_PROJECTION, align 4
  %34 = call i32 @glMatrixMode(i32 %33)
  %35 = call i32 (...) @glLoadIdentity()
  %36 = load float, float* %14, align 4
  %37 = load float, float* %15, align 4
  %38 = load float, float* %16, align 4
  %39 = load float, float* %17, align 4
  %40 = load float, float* %18, align 4
  %41 = call i32 @stbgl_Perspective(float %36, float %37, float %38, float %39, float %40)
  %42 = load i32, i32* @GL_MODELVIEW, align 4
  %43 = call i32 @glMatrixMode(i32 %42)
  ret void
}

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glScissor(i32, i32, i32, i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @stbgl_Perspective(float, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

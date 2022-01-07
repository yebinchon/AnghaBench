; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_drawRectTC.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_drawRectTC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_POLYGON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stbgl_drawRectTC(float %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7) #0 {
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store float %0, float* %9, align 4
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %17 = load i32, i32* @GL_POLYGON, align 4
  %18 = call i32 @glBegin(i32 %17)
  %19 = load float, float* %13, align 4
  %20 = load float, float* %14, align 4
  %21 = call i32 @glTexCoord2f(float %19, float %20)
  %22 = load float, float* %9, align 4
  %23 = load float, float* %10, align 4
  %24 = call i32 @glVertex2f(float %22, float %23)
  %25 = load float, float* %15, align 4
  %26 = load float, float* %14, align 4
  %27 = call i32 @glTexCoord2f(float %25, float %26)
  %28 = load float, float* %11, align 4
  %29 = load float, float* %10, align 4
  %30 = call i32 @glVertex2f(float %28, float %29)
  %31 = load float, float* %15, align 4
  %32 = load float, float* %16, align 4
  %33 = call i32 @glTexCoord2f(float %31, float %32)
  %34 = load float, float* %11, align 4
  %35 = load float, float* %12, align 4
  %36 = call i32 @glVertex2f(float %34, float %35)
  %37 = load float, float* %13, align 4
  %38 = load float, float* %16, align 4
  %39 = call i32 @glTexCoord2f(float %37, float %38)
  %40 = load float, float* %9, align 4
  %41 = load float, float* %12, align 4
  %42 = call i32 @glVertex2f(float %40, float %41)
  %43 = call i32 (...) @glEnd()
  ret void
}

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glTexCoord2f(float, float) #1

declare dso_local i32 @glVertex2f(float, float) #1

declare dso_local i32 @glEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

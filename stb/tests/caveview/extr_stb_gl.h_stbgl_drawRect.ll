; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_drawRect.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_drawRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_POLYGON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stbgl_drawRect(float %0, float %1, float %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load i32, i32* @GL_POLYGON, align 4
  %10 = call i32 @glBegin(i32 %9)
  %11 = call i32 @glTexCoord2f(i32 0, i32 0)
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = call i32 @glVertex2f(float %12, float %13)
  %15 = call i32 @glTexCoord2f(i32 1, i32 0)
  %16 = load float, float* %7, align 4
  %17 = load float, float* %6, align 4
  %18 = call i32 @glVertex2f(float %16, float %17)
  %19 = call i32 @glTexCoord2f(i32 1, i32 1)
  %20 = load float, float* %7, align 4
  %21 = load float, float* %8, align 4
  %22 = call i32 @glVertex2f(float %20, float %21)
  %23 = call i32 @glTexCoord2f(i32 0, i32 1)
  %24 = load float, float* %5, align 4
  %25 = load float, float* %8, align 4
  %26 = call i32 @glVertex2f(float %24, float %25)
  %27 = call i32 (...) @glEnd()
  ret void
}

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glTexCoord2f(i32, i32) #1

declare dso_local i32 @glVertex2f(float, float) #1

declare dso_local i32 @glEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

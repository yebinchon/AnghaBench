; ModuleID = '/home/carl/AnghaBench/stb/tests/oversample/extr_main.c_draw_init.c'
source_filename = "/home/carl/AnghaBench/stb/tests/oversample/extr_main.c_draw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_LIGHTING = common dso_local global i32 0, align 4
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@sx = common dso_local global i32 0, align 4
@sy = common dso_local global i32 0, align 4
@black_on_white = common dso_local global i64 0, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_init() #0 {
  %1 = load i32, i32* @GL_CULL_FACE, align 4
  %2 = call i32 @glDisable(i32 %1)
  %3 = load i32, i32* @GL_TEXTURE_2D, align 4
  %4 = call i32 @glDisable(i32 %3)
  %5 = load i32, i32* @GL_LIGHTING, align 4
  %6 = call i32 @glDisable(i32 %5)
  %7 = load i32, i32* @GL_DEPTH_TEST, align 4
  %8 = call i32 @glDisable(i32 %7)
  %9 = load i32, i32* @sx, align 4
  %10 = load i32, i32* @sy, align 4
  %11 = call i32 @glViewport(i32 0, i32 0, i32 %9, i32 %10)
  %12 = load i64, i64* @black_on_white, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @glClearColor(i32 255, i32 255, i32 255, i32 0)
  br label %18

16:                                               ; preds = %0
  %17 = call i32 @glClearColor(i32 0, i32 0, i32 0, i32 0)
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %20 = call i32 @glClear(i32 %19)
  %21 = load i32, i32* @GL_PROJECTION, align 4
  %22 = call i32 @glMatrixMode(i32 %21)
  %23 = call i32 (...) @glLoadIdentity()
  %24 = load i32, i32* @sx, align 4
  %25 = load i32, i32* @sy, align 4
  %26 = call i32 @gluOrtho2D(i32 0, i32 %24, i32 %25, i32 0)
  %27 = load i32, i32* @GL_MODELVIEW, align 4
  %28 = call i32 @glMatrixMode(i32 %27)
  %29 = call i32 (...) @glLoadIdentity()
  ret void
}

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glClearColor(i32, i32, i32, i32) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @gluOrtho2D(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

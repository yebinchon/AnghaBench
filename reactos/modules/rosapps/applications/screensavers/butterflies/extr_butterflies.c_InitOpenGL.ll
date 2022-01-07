; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/butterflies/extr_butterflies.c_InitOpenGL.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/butterflies/extr_butterflies.c_InitOpenGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@GL_LEQUAL = common dso_local global i32 0, align 4
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_SMOOTH = common dso_local global i32 0, align 4
@GL_PERSPECTIVE_CORRECTION_HINT = common dso_local global i32 0, align 4
@GL_NICEST = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_ONE = common dso_local global i32 0, align 4
@GL_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitOpenGL(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %4, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @glViewport(i32 0, i32 0, i32 %10, i32 %11)
  %13 = load i32, i32* @GL_PROJECTION, align 4
  %14 = call i32 @glMatrixMode(i32 %13)
  %15 = call i32 (...) @glLoadIdentity()
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sdiv i32 %16, %17
  %19 = call i32 @gluPerspective(float 4.500000e+01, i32 %18, float 1.000000e+00, float 1.000000e+03)
  %20 = load i32, i32* @GL_MODELVIEW, align 4
  %21 = call i32 @glMatrixMode(i32 %20)
  %22 = call i32 (...) @glLoadIdentity()
  %23 = call i32 (...) @LoadGLTextures()
  %24 = call i32 @glClearColor(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01)
  %25 = call i32 @glClearDepth(float 1.000000e+00)
  %26 = load i32, i32* @GL_LEQUAL, align 4
  %27 = call i32 @glDepthFunc(i32 %26)
  %28 = load i32, i32* @GL_DEPTH_TEST, align 4
  %29 = call i32 @glDisable(i32 %28)
  %30 = load i32, i32* @GL_SMOOTH, align 4
  %31 = call i32 @glShadeModel(i32 %30)
  %32 = load i32, i32* @GL_PERSPECTIVE_CORRECTION_HINT, align 4
  %33 = load i32, i32* @GL_NICEST, align 4
  %34 = call i32 @glHint(i32 %32, i32 %33)
  %35 = load i32, i32* @GL_TEXTURE_2D, align 4
  %36 = call i32 @glEnable(i32 %35)
  %37 = load i32, i32* @GL_ONE, align 4
  %38 = load i32, i32* @GL_SRC_ALPHA, align 4
  %39 = call i32 @glBlendFunc(i32 %37, i32 %38)
  %40 = load i32, i32* @GL_BLEND, align 4
  %41 = call i32 @glEnable(i32 %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %48, %9
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 50
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @SetObject(i32 %46)
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %42

51:                                               ; preds = %42
  ret void
}

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @gluPerspective(float, i32, float, float) #1

declare dso_local i32 @LoadGLTextures(...) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glClearDepth(float) #1

declare dso_local i32 @glDepthFunc(i32) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @glShadeModel(i32) #1

declare dso_local i32 @glHint(i32, i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glBlendFunc(i32, i32) #1

declare dso_local i32 @SetObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

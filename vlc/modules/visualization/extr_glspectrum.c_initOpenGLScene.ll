; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/extr_glspectrum.c_initOpenGLScene.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/extr_glspectrum.c_initOpenGLScene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@GL_LIGHTING = common dso_local global i32 0, align 4
@GL_FRONT = common dso_local global i32 0, align 4
@GL_AMBIENT_AND_DIFFUSE = common dso_local global i32 0, align 4
@GL_COLOR_MATERIAL = common dso_local global i32 0, align 4
@GL_LIGHT0 = common dso_local global i32 0, align 4
@GL_DIFFUSE = common dso_local global i32 0, align 4
@lightZeroColor = common dso_local global i32 0, align 4
@GL_POSITION = common dso_local global i32 0, align 4
@lightZeroPosition = common dso_local global i32 0, align 4
@GL_SMOOTH = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initOpenGLScene to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initOpenGLScene() #0 {
  %1 = load i32, i32* @GL_CULL_FACE, align 4
  %2 = call i32 @glEnable(i32 %1)
  %3 = load i32, i32* @GL_DEPTH_TEST, align 4
  %4 = call i32 @glEnable(i32 %3)
  %5 = load i32, i32* @GL_TRUE, align 4
  %6 = call i32 @glDepthMask(i32 %5)
  %7 = load i32, i32* @GL_PROJECTION, align 4
  %8 = call i32 @glMatrixMode(i32 %7)
  %9 = call i32 @glFrustum(float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 1.000000e+01)
  %10 = load i32, i32* @GL_MODELVIEW, align 4
  %11 = call i32 @glMatrixMode(i32 %10)
  %12 = call i32 @glTranslatef(double 0.000000e+00, double -2.000000e+00, double -2.000000e+00)
  %13 = load i32, i32* @GL_LIGHTING, align 4
  %14 = call i32 @glEnable(i32 %13)
  %15 = load i32, i32* @GL_FRONT, align 4
  %16 = load i32, i32* @GL_AMBIENT_AND_DIFFUSE, align 4
  %17 = call i32 @glColorMaterial(i32 %15, i32 %16)
  %18 = load i32, i32* @GL_COLOR_MATERIAL, align 4
  %19 = call i32 @glEnable(i32 %18)
  %20 = load i32, i32* @GL_LIGHT0, align 4
  %21 = call i32 @glEnable(i32 %20)
  %22 = load i32, i32* @GL_LIGHT0, align 4
  %23 = load i32, i32* @GL_DIFFUSE, align 4
  %24 = load i32, i32* @lightZeroColor, align 4
  %25 = call i32 @glLightfv(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @GL_LIGHT0, align 4
  %27 = load i32, i32* @GL_POSITION, align 4
  %28 = load i32, i32* @lightZeroPosition, align 4
  %29 = call i32 @glLightfv(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @GL_SMOOTH, align 4
  %31 = call i32 @glShadeModel(i32 %30)
  %32 = load i32, i32* @GL_BLEND, align 4
  %33 = call i32 @glEnable(i32 %32)
  %34 = load i32, i32* @GL_SRC_ALPHA, align 4
  %35 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  %36 = call i32 @glBlendFunc(i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glDepthMask(i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glFrustum(float, float, float, float, float, float) #1

declare dso_local i32 @glTranslatef(double, double, double) #1

declare dso_local i32 @glColorMaterial(i32, i32) #1

declare dso_local i32 @glLightfv(i32, i32, i32) #1

declare dso_local i32 @glShadeModel(i32) #1

declare dso_local i32 @glBlendFunc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

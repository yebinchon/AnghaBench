; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/cylfrac/extr_cylfrac.c_DrawScene.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/cylfrac/extr_cylfrac.c_DrawScene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@angle = common dso_local global i32 0, align 4
@colorh = common dso_local global i32 0, align 4
@rval = common dso_local global i32 0, align 4
@gval = common dso_local global i32 0, align 4
@bval = common dso_local global i32 0, align 4
@lvls = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DrawScene(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @BeginPaint(i32 %8, i32* %7)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %11 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @glClear(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = sitofp i32 %14 to double
  %16 = fmul double %15, 1.000000e-02
  %17 = fptosi double %16 to i32
  %18 = call i32 @glRotatef(i32 %17, double 0.000000e+00, double 1.000000e+00, double -5.000000e-01)
  %19 = load i32, i32* %6, align 4
  %20 = sitofp i32 %19 to double
  %21 = fmul double %20, 1.000000e-02
  %22 = load i32, i32* @angle, align 4
  %23 = sitofp i32 %22 to double
  %24 = fadd double %23, %21
  %25 = fptosi double %24 to i32
  store i32 %25, i32* @angle, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sitofp i32 %26 to double
  %28 = fmul double %27, 3.000000e-03
  %29 = load i32, i32* @colorh, align 4
  %30 = sitofp i32 %29 to double
  %31 = fadd double %30, %28
  %32 = fptosi double %31 to i32
  store i32 %32, i32* @colorh, align 4
  %33 = load i32, i32* @colorh, align 4
  %34 = sitofp i32 %33 to double
  %35 = fcmp ogt double %34, 3.600000e+02
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load i32, i32* @colorh, align 4
  %38 = sitofp i32 %37 to double
  %39 = fsub double %38, 3.600000e+02
  %40 = fptosi double %39 to i32
  store i32 %40, i32* @colorh, align 4
  br label %41

41:                                               ; preds = %36, %3
  %42 = load i32, i32* @colorh, align 4
  %43 = call i32 @HLStoRGB(i32 %42, double 1.000000e+00, double 0x3FE6666666666666, i32* @rval, i32* @gval, i32* @bval)
  %44 = load i32, i32* @lvls, align 4
  %45 = load i32, i32* @angle, align 4
  %46 = call i32 @DrawCylinder(i32 %44, i32 %45, double 2.000000e-01)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @SwapBuffers(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @EndPaint(i32 %49, i32* %7)
  ret void
}

declare dso_local i32 @BeginPaint(i32, i32*) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glRotatef(i32, double, double, double) #1

declare dso_local i32 @HLStoRGB(i32, double, double, i32*, i32*, i32*) #1

declare dso_local i32 @DrawCylinder(i32, i32, double) #1

declare dso_local i32 @SwapBuffers(i32) #1

declare dso_local i32 @EndPaint(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

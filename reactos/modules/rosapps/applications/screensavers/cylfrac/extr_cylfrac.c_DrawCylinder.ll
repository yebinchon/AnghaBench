; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/cylfrac/extr_cylfrac.c_DrawCylinder.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/cylfrac/extr_cylfrac.c_DrawCylinder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rval = common dso_local global i32 0, align 4
@gval = common dso_local global i32 0, align 4
@bval = common dso_local global i32 0, align 4
@cylinder = common dso_local global i32 0, align 4
@wfactor = common dso_local global float 0.000000e+00, align 4
@cylquality = common dso_local global i32 0, align 4
@rotfactor = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DrawCylinder(i32 %0, float %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %8 = call i32 (...) @glPushMatrix()
  %9 = load i32, i32* @rval, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sdiv i32 %9, %10
  %12 = load i32, i32* @gval, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sdiv i32 %12, %13
  %15 = load i32, i32* @bval, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sdiv i32 %15, %16
  %18 = call i32 @glColor3f(i32 %11, i32 %14, i32 %17)
  %19 = load float, float* %5, align 4
  %20 = fpext float %19 to double
  %21 = call i32 @glRotatef(double %20, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %22 = load i32, i32* @cylinder, align 4
  %23 = load float, float* %6, align 4
  %24 = load float, float* %6, align 4
  %25 = load float, float* @wfactor, align 4
  %26 = fmul float %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = sitofp i32 %27 to double
  %29 = fmul double %28, 5.000000e-01
  %30 = fptosi double %29 to i32
  %31 = load i32, i32* @cylquality, align 4
  %32 = call i32 @gluCylinder(i32 %22, float %23, float %26, i32 %30, i32 %31, i32 1)
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 0, %33
  %35 = sitofp i32 %34 to double
  %36 = fmul double %35, 5.000000e-01
  %37 = call i32 @glTranslatef(double 0.000000e+00, i32 0, double %36)
  %38 = load i32, i32* @cylinder, align 4
  %39 = load float, float* %6, align 4
  %40 = load float, float* @wfactor, align 4
  %41 = fmul float %39, %40
  %42 = load float, float* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sitofp i32 %43 to double
  %45 = fmul double %44, 5.000000e-01
  %46 = fptosi double %45 to i32
  %47 = load i32, i32* @cylquality, align 4
  %48 = call i32 @gluCylinder(i32 %38, float %41, float %42, i32 %46, i32 %47, i32 1)
  %49 = load i32, i32* %4, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %71

51:                                               ; preds = %3
  %52 = load float, float* %5, align 4
  %53 = load float, float* @rotfactor, align 4
  %54 = fmul float %52, %53
  store float %54, float* %7, align 4
  %55 = call i32 @glRotatef(double 9.000000e+01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load float, float* %7, align 4
  %59 = load float, float* %6, align 4
  %60 = load float, float* @wfactor, align 4
  %61 = fmul float %59, %60
  call void @DrawCylinder(i32 %57, float %58, float %61)
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @glTranslatef(double 0.000000e+00, i32 %62, double 0.000000e+00)
  %64 = load i32, i32* %4, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load float, float* %7, align 4
  %67 = fneg float %66
  %68 = load float, float* %6, align 4
  %69 = load float, float* @wfactor, align 4
  %70 = fmul float %68, %69
  call void @DrawCylinder(i32 %65, float %67, float %70)
  br label %71

71:                                               ; preds = %51, %3
  %72 = call i32 (...) @glPopMatrix()
  ret void
}

declare dso_local i32 @glPushMatrix(...) #1

declare dso_local i32 @glColor3f(i32, i32, i32) #1

declare dso_local i32 @glRotatef(double, double, double, double) #1

declare dso_local i32 @gluCylinder(i32, float, float, i32, i32, i32) #1

declare dso_local i32 @glTranslatef(double, i32, double) #1

declare dso_local i32 @glPopMatrix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

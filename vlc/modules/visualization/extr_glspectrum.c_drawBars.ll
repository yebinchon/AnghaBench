; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/extr_glspectrum.c_drawBars.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/extr_glspectrum.c_drawBars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_VERTEX_ARRAY = common dso_local global i32 0, align 4
@GL_NORMAL_ARRAY = common dso_local global i32 0, align 4
@SPECTRUM_WIDTH = common dso_local global i32 0, align 4
@NB_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*)* @drawBars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawBars(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store float* %0, float** %2, align 8
  %5 = call i32 (...) @glPushMatrix()
  %6 = call i32 @glTranslatef(float -2.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %7 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %8 = call i32 @glEnableClientState(i32 %7)
  %9 = load i32, i32* @GL_NORMAL_ARRAY, align 4
  %10 = call i32 @glEnableClientState(i32 %9)
  %11 = load i32, i32* @SPECTRUM_WIDTH, align 4
  %12 = load i32, i32* @NB_BANDS, align 4
  %13 = udiv i32 %11, %12
  %14 = uitofp i32 %13 to float
  store float %14, float* %3, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %37, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @NB_BANDS, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = call i32 (...) @glPushMatrix()
  %21 = load float*, float** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %21, i64 %23
  %25 = load float, float* %24, align 4
  %26 = call i32 @glScalef(float 1.000000e+00, float %25, float 1.000000e+00)
  %27 = load float*, float** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  %31 = load float, float* %30, align 4
  %32 = call i32 @setBarColor(float %31)
  %33 = call i32 (...) @drawBar()
  %34 = call i32 (...) @glPopMatrix()
  %35 = load float, float* %3, align 4
  %36 = call i32 @glTranslatef(float %35, float 0.000000e+00, float 0.000000e+00)
  br label %37

37:                                               ; preds = %19
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %15

40:                                               ; preds = %15
  %41 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %42 = call i32 @glDisableClientState(i32 %41)
  %43 = load i32, i32* @GL_NORMAL_ARRAY, align 4
  %44 = call i32 @glDisableClientState(i32 %43)
  %45 = call i32 (...) @glPopMatrix()
  ret void
}

declare dso_local i32 @glPushMatrix(...) #1

declare dso_local i32 @glTranslatef(float, float, float) #1

declare dso_local i32 @glEnableClientState(i32) #1

declare dso_local i32 @glScalef(float, float, float) #1

declare dso_local i32 @setBarColor(float) #1

declare dso_local i32 @drawBar(...) #1

declare dso_local i32 @glPopMatrix(...) #1

declare dso_local i32 @glDisableClientState(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

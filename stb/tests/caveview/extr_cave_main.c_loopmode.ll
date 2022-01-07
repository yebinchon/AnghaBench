; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_loopmode.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_loopmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initialized = common dso_local global i32 0, align 4
@global_timer = common dso_local global float 0.000000e+00, align 4
@carried_dt = common dso_local global float 0.000000e+00, align 4
@TICKRATE = common dso_local global double 0.000000e+00, align 8
@global_hack = common dso_local global i32 0, align 4
@tex2_alpha = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @loopmode(float %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float %0, float* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @initialized, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %63

15:                                               ; preds = %11
  %16 = load float, float* %5, align 4
  %17 = fpext float %16 to double
  %18 = fcmp ogt double %17, 0x3FB3333333333333
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store float 0x3FB3333340000000, float* %5, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load float, float* %5, align 4
  %22 = load float, float* @global_timer, align 4
  %23 = fadd float %22, %21
  store float %23, float* @global_timer, align 4
  %24 = load float, float* %5, align 4
  %25 = load float, float* @carried_dt, align 4
  %26 = fadd float %25, %24
  store float %26, float* @carried_dt, align 4
  br label %27

27:                                               ; preds = %52, %20
  %28 = load float, float* @carried_dt, align 4
  %29 = fpext float %28 to double
  %30 = load double, double* @TICKRATE, align 8
  %31 = fdiv double 1.000000e+00, %30
  %32 = fcmp ogt double %29, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  %34 = load i32, i32* @global_hack, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load i32, i32* @global_hack, align 4
  %38 = sitofp i32 %37 to float
  %39 = fdiv float %38, 6.000000e+01
  %40 = load i32, i32* @tex2_alpha, align 4
  %41 = sitofp i32 %40 to float
  %42 = fadd float %41, %39
  %43 = fptosi float %42 to i32
  store i32 %43, i32* @tex2_alpha, align 4
  %44 = load i32, i32* @tex2_alpha, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 0, i32* @tex2_alpha, align 4
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i32, i32* @tex2_alpha, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* @tex2_alpha, align 4
  br label %51

51:                                               ; preds = %50, %47
  br label %52

52:                                               ; preds = %51, %33
  %53 = load double, double* @TICKRATE, align 8
  %54 = fdiv double 1.000000e+00, %53
  %55 = load float, float* @carried_dt, align 4
  %56 = fpext float %55 to double
  %57 = fsub double %56, %54
  %58 = fptrunc double %57 to float
  store float %58, float* @carried_dt, align 4
  br label %27

59:                                               ; preds = %27
  %60 = load float, float* %5, align 4
  %61 = call i32 @process_tick(float %60)
  %62 = call i32 (...) @draw()
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %14, %10
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @process_tick(float) #1

declare dso_local i32 @draw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

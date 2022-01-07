; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_getTimestep.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_getTimestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getTimestep.lastTime = internal global double -1.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @getTimestep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @getTimestep(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca double, align 8
  store float %0, float* %2, align 4
  %5 = load double, double* @getTimestep.lastTime, align 8
  %6 = fcmp oeq double %5, -1.000000e+00
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = call double (...) @SDL_GetTicks()
  %9 = fdiv double %8, 1.000000e+03
  %10 = load float, float* %2, align 4
  %11 = fpext float %10 to double
  %12 = fsub double %9, %11
  store double %12, double* @getTimestep.lastTime, align 8
  br label %13

13:                                               ; preds = %7, %1
  br label %14

14:                                               ; preds = %27, %13
  %15 = call double (...) @SDL_GetTicks()
  %16 = fdiv double %15, 1.000000e+03
  store double %16, double* %4, align 8
  %17 = load double, double* %4, align 8
  %18 = load double, double* @getTimestep.lastTime, align 8
  %19 = fsub double %17, %18
  %20 = fptrunc double %19 to float
  store float %20, float* %3, align 4
  %21 = load float, float* %3, align 4
  %22 = load float, float* %2, align 4
  %23 = fcmp oge float %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load double, double* %4, align 8
  store double %25, double* @getTimestep.lastTime, align 8
  %26 = load float, float* %3, align 4
  ret float %26

27:                                               ; preds = %14
  %28 = call i32 @SDL_Delay(i32 1)
  br label %14
}

declare dso_local double @SDL_GetTicks(...) #1

declare dso_local i32 @SDL_Delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

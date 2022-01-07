; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_matd_mul.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_matd_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([4 x double]*, [4 x double]*, [4 x double]*)* @matd_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matd_mul([4 x double]* %0, [4 x double]* %1, [4 x double]* %2) #0 {
  %4 = alloca [4 x double]*, align 8
  %5 = alloca [4 x double]*, align 8
  %6 = alloca [4 x double]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store [4 x double]* %0, [4 x double]** %4, align 8
  store [4 x double]* %1, [4 x double]** %5, align 8
  store [4 x double]* %2, [4 x double]** %6, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %58, %3
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %61

14:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %54, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %57

18:                                               ; preds = %15
  store double 0.000000e+00, double* %10, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %42, %18
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load [4 x double]*, [4 x double]** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x double], [4 x double]* %23, i64 %25
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x double], [4 x double]* %26, i64 0, i64 %28
  %30 = load double, double* %29, align 8
  %31 = load [4 x double]*, [4 x double]** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x double], [4 x double]* %31, i64 %33
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x double], [4 x double]* %34, i64 0, i64 %36
  %38 = load double, double* %37, align 8
  %39 = fmul double %30, %38
  %40 = load double, double* %10, align 8
  %41 = fadd double %40, %39
  store double %41, double* %10, align 8
  br label %42

42:                                               ; preds = %22
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load double, double* %10, align 8
  %47 = load [4 x double]*, [4 x double]** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x double], [4 x double]* %47, i64 %49
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x double], [4 x double]* %50, i64 0, i64 %52
  store double %46, double* %53, align 8
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %15

57:                                               ; preds = %15
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %11

61:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

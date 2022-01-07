; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_pointBeneathLine.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_pointBeneathLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double, double, double, double, double)* @pointBeneathLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pointBeneathLine(double %0, double %1, double %2, double %3, double %4, double %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  %15 = load double, double* %8, align 8
  %16 = load double, double* %10, align 8
  %17 = fcmp oeq double %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load double, double* %9, align 8
  %20 = load double, double* %11, align 8
  %21 = fcmp oeq double %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 2, i32* %7, align 4
  br label %100

23:                                               ; preds = %18, %6
  %24 = load double, double* %10, align 8
  %25 = load double, double* %12, align 8
  %26 = fcmp olt double %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load double, double* %8, align 8
  %29 = load double, double* %10, align 8
  %30 = fcmp ole double %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load double, double* %8, align 8
  %33 = load double, double* %12, align 8
  %34 = fcmp ogt double %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  store i32 0, i32* %7, align 4
  br label %100

36:                                               ; preds = %31
  br label %76

37:                                               ; preds = %23
  %38 = load double, double* %10, align 8
  %39 = load double, double* %12, align 8
  %40 = fcmp ogt double %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load double, double* %8, align 8
  %43 = load double, double* %12, align 8
  %44 = fcmp ole double %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load double, double* %8, align 8
  %47 = load double, double* %10, align 8
  %48 = fcmp ogt double %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41
  store i32 0, i32* %7, align 4
  br label %100

50:                                               ; preds = %45
  br label %75

51:                                               ; preds = %37
  %52 = load double, double* %8, align 8
  %53 = load double, double* %10, align 8
  %54 = fcmp une double %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %100

56:                                               ; preds = %51
  %57 = load double, double* %9, align 8
  %58 = load double, double* %11, align 8
  %59 = fcmp olt double %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load double, double* %9, align 8
  %62 = load double, double* %13, align 8
  %63 = fcmp olt double %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  br label %100

65:                                               ; preds = %60, %56
  %66 = load double, double* %9, align 8
  %67 = load double, double* %11, align 8
  %68 = fcmp ogt double %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load double, double* %9, align 8
  %71 = load double, double* %13, align 8
  %72 = fcmp ogt double %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %100

74:                                               ; preds = %69, %65
  store i32 2, i32* %7, align 4
  br label %100

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %75, %36
  %77 = load double, double* %11, align 8
  %78 = load double, double* %13, align 8
  %79 = load double, double* %11, align 8
  %80 = fsub double %78, %79
  %81 = load double, double* %8, align 8
  %82 = load double, double* %10, align 8
  %83 = fsub double %81, %82
  %84 = fmul double %80, %83
  %85 = load double, double* %12, align 8
  %86 = load double, double* %10, align 8
  %87 = fsub double %85, %86
  %88 = fdiv double %84, %87
  %89 = fadd double %77, %88
  store double %89, double* %14, align 8
  %90 = load double, double* %9, align 8
  %91 = load double, double* %14, align 8
  %92 = fcmp oeq double %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %76
  store i32 2, i32* %7, align 4
  br label %100

94:                                               ; preds = %76
  %95 = load double, double* %9, align 8
  %96 = load double, double* %14, align 8
  %97 = fcmp olt double %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 1, i32* %7, align 4
  br label %100

99:                                               ; preds = %94
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %99, %98, %93, %74, %73, %64, %55, %49, %35, %22
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

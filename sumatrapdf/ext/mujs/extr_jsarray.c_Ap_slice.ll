; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_slice.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Ap_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ap_slice(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @js_newarray(i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @js_getlength(i32* %11, i32 0)
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @js_tointeger(i32* %13, i32 1)
  %15 = sitofp i32 %14 to double
  store double %15, double* %7, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @js_isdefined(i32* %16, i32 2)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @js_tointeger(i32* %20, i32 2)
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %21, %19 ], [ %23, %22 ]
  %26 = sitofp i32 %25 to double
  store double %26, double* %8, align 8
  %27 = load double, double* %7, align 8
  %28 = fcmp olt double %27, 0.000000e+00
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load double, double* %7, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sitofp i32 %31 to double
  %33 = fadd double %30, %32
  store double %33, double* %7, align 8
  br label %34

34:                                               ; preds = %29, %24
  %35 = load double, double* %8, align 8
  %36 = fcmp olt double %35, 0.000000e+00
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load double, double* %8, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sitofp i32 %39 to double
  %41 = fadd double %38, %40
  store double %41, double* %8, align 8
  br label %42

42:                                               ; preds = %37, %34
  %43 = load double, double* %7, align 8
  %44 = fcmp olt double %43, 0.000000e+00
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %58

46:                                               ; preds = %42
  %47 = load double, double* %7, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sitofp i32 %48 to double
  %50 = fcmp ogt double %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = sitofp i32 %52 to double
  br label %56

54:                                               ; preds = %46
  %55 = load double, double* %7, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi double [ %53, %51 ], [ %55, %54 ]
  br label %58

58:                                               ; preds = %56, %45
  %59 = phi double [ 0.000000e+00, %45 ], [ %57, %56 ]
  %60 = fptosi double %59 to i32
  store i32 %60, i32* %4, align 4
  %61 = load double, double* %8, align 8
  %62 = fcmp olt double %61, 0.000000e+00
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %76

64:                                               ; preds = %58
  %65 = load double, double* %8, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sitofp i32 %66 to double
  %68 = fcmp ogt double %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %3, align 4
  %71 = sitofp i32 %70 to double
  br label %74

72:                                               ; preds = %64
  %73 = load double, double* %8, align 8
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi double [ %71, %69 ], [ %73, %72 ]
  br label %76

76:                                               ; preds = %74, %63
  %77 = phi double [ 0.000000e+00, %63 ], [ %75, %74 ]
  %78 = fptosi double %77 to i32
  store i32 %78, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %93, %76
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = load i32*, i32** %2, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i64 @js_hasindex(i32* %84, i32 0, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32*, i32** %2, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @js_setindex(i32* %89, i32 -2, i32 %90)
  br label %92

92:                                               ; preds = %88, %83
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %79

98:                                               ; preds = %79
  ret void
}

declare dso_local i32 @js_newarray(i32*) #1

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local i32 @js_tointeger(i32*, i32) #1

declare dso_local i64 @js_isdefined(i32*, i32) #1

declare dso_local i64 @js_hasindex(i32*, i32, i32) #1

declare dso_local i32 @js_setindex(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

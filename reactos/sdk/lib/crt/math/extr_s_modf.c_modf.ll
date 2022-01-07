; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_s_modf.c_modf.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_s_modf.c_modf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @modf(double %0, double* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double* %1, double** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load double, double* %4, align 8
  %16 = call i32 @EXTRACT_WORDS(i32 %13, i32 %14, double %15)
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 20
  %19 = and i32 %18, 2047
  %20 = sub nsw i32 %19, 1023
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 20
  br i1 %22, label %23, label %65

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load double*, double** %5, align 8
  %28 = load double, double* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, -2147483648
  %31 = call i32 @INSERT_WORDS(double %28, i32 %30, i32 0)
  %32 = load double, double* %4, align 8
  store double %32, double* %3, align 8
  br label %113

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 1048575, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %33
  %43 = load double, double* %4, align 8
  %44 = load double*, double** %5, align 8
  store double %43, double* %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load double, double* %4, align 8
  %47 = call i32 @GET_HIGH_WORD(i32 %45, double %46)
  %48 = load double, double* %4, align 8
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, -2147483648
  %51 = call i32 @INSERT_WORDS(double %48, i32 %50, i32 0)
  %52 = load double, double* %4, align 8
  store double %52, double* %3, align 8
  br label %113

53:                                               ; preds = %33
  %54 = load double*, double** %5, align 8
  %55 = load double, double* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %9, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = call i32 @INSERT_WORDS(double %55, i32 %59, i32 0)
  %61 = load double, double* %4, align 8
  %62 = load double*, double** %5, align 8
  %63 = load double, double* %62, align 8
  %64 = fsub double %61, %63
  store double %64, double* %3, align 8
  br label %113

65:                                               ; preds = %2
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 51
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load double, double* %4, align 8
  %70 = load double, double* @one, align 8
  %71 = fmul double %69, %70
  %72 = load double*, double** %5, align 8
  store double %71, double* %72, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load double, double* %4, align 8
  %75 = call i32 @GET_HIGH_WORD(i32 %73, double %74)
  %76 = load double, double* %4, align 8
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %77, -2147483648
  %79 = call i32 @INSERT_WORDS(double %76, i32 %78, i32 0)
  %80 = load double, double* %4, align 8
  store double %80, double* %3, align 8
  br label %113

81:                                               ; preds = %65
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, 20
  %84 = ashr i32 -1, %83
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %81
  %90 = load double, double* %4, align 8
  %91 = load double*, double** %5, align 8
  store double %90, double* %91, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load double, double* %4, align 8
  %94 = call i32 @GET_HIGH_WORD(i32 %92, double %93)
  %95 = load double, double* %4, align 8
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, -2147483648
  %98 = call i32 @INSERT_WORDS(double %95, i32 %97, i32 0)
  %99 = load double, double* %4, align 8
  store double %99, double* %3, align 8
  br label %113

100:                                              ; preds = %81
  %101 = load double*, double** %5, align 8
  %102 = load double, double* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %9, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  %108 = call i32 @INSERT_WORDS(double %102, i32 %103, i32 %107)
  %109 = load double, double* %4, align 8
  %110 = load double*, double** %5, align 8
  %111 = load double, double* %110, align 8
  %112 = fsub double %109, %111
  store double %112, double* %3, align 8
  br label %113

113:                                              ; preds = %100, %89, %68, %53, %42, %26
  %114 = load double, double* %3, align 8
  ret double %114
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @INSERT_WORDS(double, i32, i32) #1

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

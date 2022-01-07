; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_ary_correl.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_ary_correl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @ary_correl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ary_correl(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @strm_get_args(i32* %21, i32 %22, i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %9, i32* %11)
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %13, align 8
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %108, %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %111

29:                                               ; preds = %25
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = call i32 @strm_array_p(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @strm_ary_len(i32 %39)
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %29
  br label %108

43:                                               ; preds = %38
  %44 = load i32, i32* %17, align 4
  %45 = call i32* @strm_ary_ptr(i32 %44)
  store i32* %45, i32** %18, align 8
  %46 = load i32*, i32** %18, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call double @strm_value_float(i32 %48)
  %50 = load double, double* %12, align 8
  %51 = fsub double %49, %50
  store double %51, double* %19, align 8
  %52 = load double, double* %19, align 8
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  %55 = sitofp i32 %54 to double
  %56 = fdiv double %52, %55
  %57 = load double, double* %12, align 8
  %58 = fadd double %57, %56
  store double %58, double* %12, align 8
  %59 = load i32*, i32** %18, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call double @strm_value_float(i32 %61)
  %63 = load double, double* %13, align 8
  %64 = fsub double %62, %63
  store double %64, double* %20, align 8
  %65 = load double, double* %20, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %65, %68
  %70 = load double, double* %13, align 8
  %71 = fadd double %70, %69
  store double %71, double* %13, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sitofp i32 %72 to double
  %74 = load double, double* %19, align 8
  %75 = fmul double %73, %74
  %76 = load double, double* %19, align 8
  %77 = fmul double %75, %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = sitofp i32 %79 to double
  %81 = fdiv double %77, %80
  %82 = load double, double* %14, align 8
  %83 = fadd double %82, %81
  store double %83, double* %14, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sitofp i32 %84 to double
  %86 = load double, double* %20, align 8
  %87 = fmul double %85, %86
  %88 = load double, double* %20, align 8
  %89 = fmul double %87, %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  %92 = sitofp i32 %91 to double
  %93 = fdiv double %89, %92
  %94 = load double, double* %15, align 8
  %95 = fadd double %94, %93
  store double %95, double* %15, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sitofp i32 %96 to double
  %98 = load double, double* %19, align 8
  %99 = fmul double %97, %98
  %100 = load double, double* %20, align 8
  %101 = fmul double %99, %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  %104 = sitofp i32 %103 to double
  %105 = fdiv double %101, %104
  %106 = load double, double* %16, align 8
  %107 = fadd double %106, %105
  store double %107, double* %16, align 8
  br label %108

108:                                              ; preds = %43, %42
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %25

111:                                              ; preds = %25
  %112 = load double, double* %14, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sitofp i32 %114 to double
  %116 = fdiv double %112, %115
  %117 = call double @sqrt(double %116) #3
  store double %117, double* %14, align 8
  %118 = load double, double* %15, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sitofp i32 %120 to double
  %122 = fdiv double %118, %121
  %123 = call double @sqrt(double %122) #3
  store double %123, double* %15, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sitofp i32 %125 to double
  %127 = load double, double* %14, align 8
  %128 = fmul double %126, %127
  %129 = load double, double* %15, align 8
  %130 = fmul double %128, %129
  %131 = load double, double* %16, align 8
  %132 = fdiv double %131, %130
  store double %132, double* %16, align 8
  %133 = load double, double* %16, align 8
  %134 = call i32 @strm_float_value(double %133)
  %135 = load i32*, i32** %8, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* @STRM_OK, align 4
  ret i32 %136
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32**, i32*) #1

declare dso_local i32 @strm_array_p(i32) #1

declare dso_local i32 @strm_ary_len(i32) #1

declare dso_local i32* @strm_ary_ptr(i32) #1

declare dso_local double @strm_value_float(i32) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @strm_float_value(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

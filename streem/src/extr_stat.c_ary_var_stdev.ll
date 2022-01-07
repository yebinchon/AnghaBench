; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_ary_var_stdev.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_ary_var_stdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"a|v\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32)* @ary_var_stdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ary_var_stdev(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @strm_get_args(i32* %21, i32 %22, i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32** %13, i32* %15, i32* %12)
  store double 0.000000e+00, double* %17, align 8
  store double 0.000000e+00, double* %16, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %61, %27
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call double @strm_value_float(i32 %37)
  store double %38, double* %18, align 8
  %39 = load double, double* %16, align 8
  %40 = load double, double* %18, align 8
  %41 = fsub double %40, %39
  store double %41, double* %18, align 8
  %42 = load double, double* %18, align 8
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %42, %45
  %47 = load double, double* %16, align 8
  %48 = fadd double %47, %46
  store double %48, double* %16, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sitofp i32 %49 to double
  %51 = load double, double* %18, align 8
  %52 = fmul double %50, %51
  %53 = load double, double* %18, align 8
  %54 = fmul double %52, %53
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  %57 = sitofp i32 %56 to double
  %58 = fdiv double %54, %57
  %59 = load double, double* %17, align 8
  %60 = fadd double %59, %58
  store double %60, double* %17, align 8
  br label %61

61:                                               ; preds = %32
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %28

64:                                               ; preds = %28
  br label %113

65:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %109, %65
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %112

70:                                               ; preds = %66
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @convert_number(i32* %71, i32 %76, i32 %77)
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = call i32 @strm_number_p(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %70
  %83 = load i32, i32* @STRM_NG, align 4
  store i32 %83, i32* %6, align 4
  br label %129

84:                                               ; preds = %70
  %85 = load i32, i32* %19, align 4
  %86 = call double @strm_value_float(i32 %85)
  store double %86, double* %20, align 8
  %87 = load double, double* %16, align 8
  %88 = load double, double* %20, align 8
  %89 = fsub double %88, %87
  store double %89, double* %20, align 8
  %90 = load double, double* %20, align 8
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  %93 = sitofp i32 %92 to double
  %94 = fdiv double %90, %93
  %95 = load double, double* %16, align 8
  %96 = fadd double %95, %94
  store double %96, double* %16, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sitofp i32 %97 to double
  %99 = load double, double* %20, align 8
  %100 = fmul double %98, %99
  %101 = load double, double* %20, align 8
  %102 = fmul double %100, %101
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  %105 = sitofp i32 %104 to double
  %106 = fdiv double %102, %105
  %107 = load double, double* %17, align 8
  %108 = fadd double %107, %106
  store double %108, double* %17, align 8
  br label %109

109:                                              ; preds = %84
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %66

112:                                              ; preds = %66
  br label %113

113:                                              ; preds = %112, %64
  %114 = load double, double* %17, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sitofp i32 %116 to double
  %118 = fdiv double %114, %117
  store double %118, double* %17, align 8
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load double, double* %17, align 8
  %123 = call double @sqrt(double %122) #3
  store double %123, double* %17, align 8
  br label %124

124:                                              ; preds = %121, %113
  %125 = load double, double* %17, align 8
  %126 = call i32 @strm_float_value(double %125)
  %127 = load i32*, i32** %10, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* @STRM_OK, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %124, %82
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32**, i32*, i32*) #1

declare dso_local double @strm_value_float(i32) #1

declare dso_local i32 @convert_number(i32*, i32, i32) #1

declare dso_local i32 @strm_number_p(i32) #1

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

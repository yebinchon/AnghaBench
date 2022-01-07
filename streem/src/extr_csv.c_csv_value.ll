; ModuleID = '/home/carl/AnghaBench/streem/src/extr_csv.c_csv_value.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_csv.c_csv_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_STR = common dso_local global i32 0, align 4
@TYPE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @csv_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csv_value(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %9, align 8
  store i64 0, i64* %10, align 8
  store double 1.000000e+00, double* %12, align 8
  %19 = load i32, i32* @TYPE_STR, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %69 [
    i32 128, label %21
    i32 129, label %21
  ]

21:                                               ; preds = %3, %3
  br label %22

22:                                               ; preds = %28, %21
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 @isspace(i32 %25) #3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  br label %22

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %65, %31
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %64 [
    i32 48, label %40
    i32 49, label %40
    i32 50, label %40
    i32 51, label %40
    i32 52, label %40
    i32 53, label %40
    i32 54, label %40
    i32 55, label %40
    i32 56, label %40
    i32 57, label %40
    i32 46, label %56
  ]

40:                                               ; preds = %36, %36, %36, %36, %36, %36, %36, %36, %36, %36
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @TYPE_STR, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 130, i32* %13, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i64, i64* %10, align 8
  %47 = mul nsw i64 %46, 10
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 48
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %47, %52
  store i64 %53, i64* %10, align 8
  %54 = load double, double* %12, align 8
  %55 = fmul double %54, 1.000000e+01
  store double %55, double* %12, align 8
  br label %65

56:                                               ; preds = %36
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, 131
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @TYPE_TIME, align 4
  store i32 %60, i32* %13, align 4
  br label %65

61:                                               ; preds = %56
  store i32 131, i32* %13, align 4
  %62 = load i64, i64* %10, align 8
  %63 = sitofp i64 %62 to double
  store double %63, double* %11, align 8
  store i64 0, i64* %10, align 8
  store double 1.000000e+00, double* %12, align 8
  br label %65

64:                                               ; preds = %36
  store i32 128, i32* %13, align 4
  br label %65

65:                                               ; preds = %64, %61, %59, %45
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  br label %32

68:                                               ; preds = %32
  br label %69

69:                                               ; preds = %3, %68
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  switch i32 %71, label %84 [
    i32 130, label %72
    i32 131, label %75
  ]

72:                                               ; preds = %70
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @strm_int_value(i64 %73)
  store i32 %74, i32* %4, align 4
  br label %89

75:                                               ; preds = %70
  %76 = load i64, i64* %10, align 8
  %77 = sitofp i64 %76 to double
  %78 = load double, double* %12, align 8
  %79 = fdiv double %77, %78
  %80 = load double, double* %11, align 8
  %81 = fadd double %80, %79
  store double %81, double* %11, align 8
  %82 = load double, double* %11, align 8
  %83 = call i32 @strm_float_value(double %82)
  store i32 %83, i32* %4, align 4
  br label %89

84:                                               ; preds = %70
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @csv_string(i8* %85, i32 %86, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %84, %75, %72
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #1

declare dso_local i32 @strm_int_value(i64) #2

declare dso_local i32 @strm_float_value(double) #2

declare dso_local i32 @csv_string(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

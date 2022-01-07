; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_cur_token_double.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_cur_token_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cur_token_len = common dso_local global i64 0, align 8
@NOT_FOUND = common dso_local global double 0.000000e+00, align 8
@cur_token = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @cur_token_double() #0 {
  %1 = alloca double, align 8
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = load i64, i64* @cur_token_len, align 8
  %6 = icmp ule i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load double, double* @NOT_FOUND, align 8
  store double %8, double* %1, align 8
  br label %32

9:                                                ; preds = %0
  %10 = load i8*, i8** @cur_token, align 8
  %11 = load i64, i64* @cur_token_len, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %2, align 1
  %14 = load i8*, i8** @cur_token, align 8
  %15 = load i64, i64* @cur_token_len, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8 0, i8* %16, align 1
  store i8* null, i8** %3, align 8
  %17 = load i8*, i8** @cur_token, align 8
  %18 = call double @strtod(i8* %17, i8** %3)
  store double %18, double* %4, align 8
  %19 = load i8, i8* %2, align 1
  %20 = load i8*, i8** @cur_token, align 8
  %21 = load i64, i64* @cur_token_len, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %19, i8* %22, align 1
  %23 = load i8*, i8** %3, align 8
  %24 = load i8*, i8** @cur_token, align 8
  %25 = load i64, i64* @cur_token_len, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = icmp ne i8* %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %9
  %29 = load double, double* @NOT_FOUND, align 8
  store double %29, double* %1, align 8
  br label %32

30:                                               ; preds = %9
  %31 = load double, double* %4, align 8
  store double %31, double* %1, align 8
  br label %32

32:                                               ; preds = %30, %28, %7
  %33 = load double, double* %1, align 8
  ret double %33
}

declare dso_local double @strtod(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

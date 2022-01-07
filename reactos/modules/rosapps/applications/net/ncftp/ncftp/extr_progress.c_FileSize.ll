; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_progress.c_FileSize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_progress.c_FileSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kGigabyte = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [3 x i8] c"TB\00", align 1
@kTerabyte = common dso_local global double 0.000000e+00, align 8
@kMegabyte = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@kKilobyte = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"kB\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"B\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @FileSize(double %0, i8** %1, double* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i8**, align 8
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  store double %0, double* %4, align 8
  store i8** %1, i8*** %5, align 8
  store double* %2, double** %6, align 8
  %10 = load double, double* %4, align 8
  %11 = load double, double* @kGigabyte, align 8
  %12 = fmul double 9.995000e+02, %11
  %13 = fcmp ogt double %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %15 = load double, double* @kTerabyte, align 8
  store double %15, double* %7, align 8
  br label %38

16:                                               ; preds = %3
  %17 = load double, double* %4, align 8
  %18 = load double, double* @kMegabyte, align 8
  %19 = fmul double 9.995000e+02, %18
  %20 = fcmp ogt double %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %22 = load double, double* @kGigabyte, align 8
  store double %22, double* %7, align 8
  br label %37

23:                                               ; preds = %16
  %24 = load double, double* %4, align 8
  %25 = load double, double* @kKilobyte, align 8
  %26 = fmul double 9.995000e+02, %25
  %27 = fcmp ogt double %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  %29 = load double, double* @kMegabyte, align 8
  store double %29, double* %7, align 8
  br label %36

30:                                               ; preds = %23
  %31 = load double, double* %4, align 8
  %32 = fcmp ogt double %31, 9.995000e+02
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  store double 1.024000e+03, double* %7, align 8
  br label %35

34:                                               ; preds = %30
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  store double 1.000000e+00, double* %7, align 8
  br label %35

35:                                               ; preds = %34, %33
  br label %36

36:                                               ; preds = %35, %28
  br label %37

37:                                               ; preds = %36, %21
  br label %38

38:                                               ; preds = %37, %14
  %39 = load i8**, i8*** %5, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  %43 = load i8**, i8*** %5, align 8
  store i8* %42, i8** %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load double*, double** %6, align 8
  %46 = icmp ne double* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load double, double* %7, align 8
  %49 = load double*, double** %6, align 8
  store double %48, double* %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load double, double* %4, align 8
  %52 = load double, double* %7, align 8
  %53 = fdiv double %51, %52
  store double %53, double* %8, align 8
  %54 = load double, double* %8, align 8
  %55 = fcmp olt double %54, 0.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store double 0.000000e+00, double* %8, align 8
  br label %57

57:                                               ; preds = %56, %50
  %58 = load double, double* %8, align 8
  ret double %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

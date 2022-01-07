; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_fmttime.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_fmttime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Invalid Date\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%02d:%02d:%02d.%03dZ\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%02d:%02d:%02d.%03d-%02d:%02d\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%02d:%02d:%02d.%03d+%02d:%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, double, double)* @fmttime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fmttime(i8* %0, double %1, double %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %14 = load double, double* %6, align 8
  %15 = call i32 @HourFromTime(double %14)
  store i32 %15, i32* %8, align 4
  %16 = load double, double* %6, align 8
  %17 = call i32 @MinFromTime(double %16)
  store i32 %17, i32* %9, align 4
  %18 = load double, double* %6, align 8
  %19 = call i32 @SecFromTime(double %18)
  store i32 %19, i32* %10, align 4
  %20 = load double, double* %6, align 8
  %21 = call i32 @msFromTime(double %20)
  store i32 %21, i32* %11, align 4
  %22 = load double, double* %7, align 8
  %23 = call double @llvm.fabs.f64(double %22)
  %24 = call i32 @HourFromTime(double %23)
  store i32 %24, i32* %12, align 4
  %25 = load double, double* %7, align 8
  %26 = call double @llvm.fabs.f64(double %25)
  %27 = call i32 @MinFromTime(double %26)
  store i32 %27, i32* %13, align 4
  %28 = load double, double* %6, align 8
  %29 = call i32 @isfinite(double %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %66

32:                                               ; preds = %3
  %33 = load double, double* %7, align 8
  %34 = fcmp oeq double %33, 0.000000e+00
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i8*, i8*, i32, i32, i32, i32, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40)
  br label %64

42:                                               ; preds = %32
  %43 = load double, double* %7, align 8
  %44 = fcmp olt double %43, 0.000000e+00
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 (i8*, i8*, i32, i32, i32, i32, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  br label %63

54:                                               ; preds = %42
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 (i8*, i8*, i32, i32, i32, i32, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %45
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i8*, i8** %5, align 8
  store i8* %65, i8** %4, align 8
  br label %66

66:                                               ; preds = %64, %31
  %67 = load i8*, i8** %4, align 8
  ret i8* %67
}

declare dso_local i32 @HourFromTime(double) #1

declare dso_local i32 @MinFromTime(double) #1

declare dso_local i32 @SecFromTime(double) #1

declare dso_local i32 @msFromTime(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @isfinite(double) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_parse_step.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_parse_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Invalid double or percentage\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Percentage is larger than 100%%\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Percentage is less than 0%%\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_step(double* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @atoi(i8* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i32 @isdigit(i8 signext %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %11, %2
  %19 = load i32, i32* %6, align 4
  %20 = sitofp i32 %19 to double
  %21 = load double*, double** %4, align 8
  store double %20, double* %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strchr(i8* %22, i8 signext 37)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @SUCCESS, align 4
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %18
  %28 = load double*, double** %4, align 8
  %29 = load double, double* %28, align 8
  %30 = fdiv double %29, 1.000000e+02
  store double %30, double* %28, align 8
  %31 = load double*, double** %4, align 8
  %32 = load double, double* %31, align 8
  %33 = fcmp oge double %32, 1.000000e+00
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load double*, double** %4, align 8
  store double 0x3FEFAE147AE147AE, double* %35, align 8
  %36 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %3, align 4
  br label %46

37:                                               ; preds = %27
  %38 = load double*, double** %4, align 8
  %39 = load double, double* %38, align 8
  %40 = fcmp olt double %39, 0.000000e+00
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load double*, double** %4, align 8
  store double 1.000000e+00, double* %42, align 8
  %43 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @SUCCESS, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %41, %34, %25, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_BuildColorantList.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_BuildColorantList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAXCHANNELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, double*)* @BuildColorantList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BuildColorantList(i8* %0, i64 %1, double* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca double*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store double* %2, double** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %10, align 1
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @cmsMAXCHANNELS, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @cmsMAXCHANNELS, align 8
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %14, %3
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %41, %16
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %23 = load double*, double** %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds double, double* %23, i64 %24
  %26 = load double, double* %25, align 8
  %27 = fdiv double %26, 6.553500e+04
  %28 = call i32 @snprintf(i8* %22, i32 31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), double %27)
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 31
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %32 = call i32 @strcat(i8* %30, i8* %31)
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %5, align 8
  %35 = sub i64 %34, 1
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strcat(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %17

44:                                               ; preds = %17
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

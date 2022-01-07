; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/rosperf/extr_rosperf.c_ReportTimes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/rosperf/extr_rosperf.c_ReportTimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i32] [i32 37, i32 55, i32 100, i32 32, i32 37, i32 115, i32 32, i32 64, i32 32, i32 37, i32 56, i32 46, i32 52, i32 102, i32 32, i32 109, i32 115, i32 101, i32 99, i32 32, i32 40, i32 37, i32 56, i32 46, i32 49, i32 102, i32 47, i32 115, i32 101, i32 99, i32 41, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 116, i32 114, i32 101, i32 112, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 114, i32 101, i32 112, i32 115, i32 0], align 4
@.str.3 = private unnamed_addr constant [47 x i32] [i32 37, i32 54, i32 100, i32 32, i32 37, i32 115, i32 114, i32 101, i32 112, i32 115, i32 32, i32 64, i32 32, i32 48, i32 46, i32 48, i32 32, i32 109, i32 115, i32 101, i32 99, i32 32, i32 40, i32 117, i32 110, i32 109, i32 101, i32 97, i32 115, i32 117, i32 114, i32 97, i32 98, i32 108, i32 121, i32 32, i32 102, i32 97, i32 115, i32 116, i32 41, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 116, i32 0], align 4
@.str.5 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i8*, i64)* @ReportTimes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReportTimes(i64 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 0, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %4
  %14 = load i64, i64* %5, align 8
  %15 = sitofp i64 %14 to double
  %16 = load i32, i32* %6, align 4
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %15, %17
  store double %18, double* %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sitofp i32 %19 to double
  %21 = fmul double %20, 1.000000e+03
  %22 = load i64, i64* %5, align 8
  %23 = sitofp i64 %22 to double
  %24 = fdiv double %21, %23
  store double %24, double* %10, align 8
  %25 = load double, double* %10, align 8
  %26 = call double @RoundTo3Digits(double %25)
  store double %26, double* %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.2, i64 0, i64 0)
  %32 = bitcast i32* %31 to i8*
  %33 = load double, double* %9, align 8
  %34 = load double, double* %10, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (i8*, i32, i8*, ...) @wprintf(i8* bitcast ([37 x i32]* @.str to i8*), i32 %27, i8* %32, double %33, double %34, i8* %35)
  br label %46

37:                                               ; preds = %4
  %38 = load i32, i32* %6, align 4
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.5, i64 0, i64 0)
  %43 = bitcast i32* %42 to i8*
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 (i8*, i32, i8*, ...) @wprintf(i8* bitcast ([47 x i32]* @.str.3 to i8*), i32 %38, i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %37, %13
  ret void
}

declare dso_local double @RoundTo3Digits(double) #1

declare dso_local i32 @wprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

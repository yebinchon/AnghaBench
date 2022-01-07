; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbLoadDoubleValue.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbLoadDoubleValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_NegInf = common dso_local global double 0.000000e+00, align 8
@R_PosInf = common dso_local global double 0.000000e+00, align 8
@R_Nan = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [4 x i8] c"%lg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbLoadDoubleValue(i32* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca double*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store double* %1, double** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 (i32*, ...) @rioRead(i32* %8, i8* %7, i32 1)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load i8, i8* %7, align 1
  %14 = zext i8 %13 to i32
  switch i32 %14, label %24 [
    i32 255, label %15
    i32 254, label %18
    i32 253, label %21
  ]

15:                                               ; preds = %12
  %16 = load double, double* @R_NegInf, align 8
  %17 = load double*, double** %5, align 8
  store double %16, double* %17, align 8
  store i32 0, i32* %3, align 4
  br label %39

18:                                               ; preds = %12
  %19 = load double, double* @R_PosInf, align 8
  %20 = load double*, double** %5, align 8
  store double %19, double* %20, align 8
  store i32 0, i32* %3, align 4
  br label %39

21:                                               ; preds = %12
  %22 = load double, double* @R_Nan, align 8
  %23 = load double*, double** %5, align 8
  store double %22, double* %23, align 8
  store i32 0, i32* %3, align 4
  br label %39

24:                                               ; preds = %12
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = call i64 (i32*, ...) @rioRead(i32* %25, i8* %26, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %39

32:                                               ; preds = %24
  %33 = load i8, i8* %7, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %34
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %37 = load double*, double** %5, align 8
  %38 = call i32 @sscanf(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %31, %21, %18, %15, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @rioRead(i32*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

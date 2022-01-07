; ModuleID = '/home/carl/AnghaBench/streem/src/extr_time.c_time_minus.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_time.c_time_minus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_time = type { i32 }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"wrong # of arguments\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @time_minus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time_minus(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.strm_time*, align 8
  %11 = alloca %struct.strm_time*, align 8
  %12 = alloca %struct.timeval, align 4
  %13 = alloca double, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @strm_raise(i32* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @STRM_NG, align 4
  store i32 %19, i32* %5, align 4
  br label %60

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strm_number_p(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call double @strm_value_float(i32 %29)
  store double %30, double* %13, align 8
  %31 = load double, double* %13, align 8
  %32 = fneg double %31
  %33 = call i32 @strm_float_value(double %32)
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @time_plus(i32* %36, i32 %37, i32* %38, i32* %39)
  store i32 %40, i32* %5, align 4
  br label %60

41:                                               ; preds = %20
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.strm_time* @get_time(i32 %44)
  store %struct.strm_time* %45, %struct.strm_time** %10, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.strm_time* @get_time(i32 %48)
  store %struct.strm_time* %49, %struct.strm_time** %11, align 8
  %50 = load %struct.strm_time*, %struct.strm_time** %10, align 8
  %51 = getelementptr inbounds %struct.strm_time, %struct.strm_time* %50, i32 0, i32 0
  %52 = load %struct.strm_time*, %struct.strm_time** %11, align 8
  %53 = getelementptr inbounds %struct.strm_time, %struct.strm_time* %52, i32 0, i32 0
  %54 = call i32 @timersub(i32* %51, i32* %53, %struct.timeval* %12)
  %55 = call double @timeval_to_num(%struct.timeval* %12)
  store double %55, double* %13, align 8
  %56 = load double, double* %13, align 8
  %57 = call i32 @strm_float_value(double %56)
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @STRM_OK, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %41, %26, %16
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @strm_raise(i32*, i8*) #1

declare dso_local i64 @strm_number_p(i32) #1

declare dso_local double @strm_value_float(i32) #1

declare dso_local i32 @strm_float_value(double) #1

declare dso_local i32 @time_plus(i32*, i32, i32*, i32*) #1

declare dso_local %struct.strm_time* @get_time(i32) #1

declare dso_local i32 @timersub(i32*, i32*, %struct.timeval*) #1

declare dso_local double @timeval_to_num(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

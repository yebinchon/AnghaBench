; ModuleID = '/home/carl/AnghaBench/streem/src/extr_time.c_time_plus.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_time.c_time_plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_time = type { i32, i32 }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"wrong # of arguments\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"number required\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @time_plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time_plus(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.strm_time*, align 8
  %11 = alloca %struct.timeval, align 4
  %12 = alloca %struct.timeval, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @strm_raise(i32* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @STRM_NG, align 4
  store i32 %18, i32* %5, align 4
  br label %47

19:                                               ; preds = %4
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.strm_time* @get_time(i32 %22)
  store %struct.strm_time* %23, %struct.strm_time** %10, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strm_number_p(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %19
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @strm_raise(i32* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @STRM_NG, align 4
  store i32 %32, i32* %5, align 4
  br label %47

33:                                               ; preds = %19
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strm_value_float(i32 %36)
  %38 = call i32 @num_to_timeval(i32 %37, %struct.timeval* %11)
  %39 = load %struct.strm_time*, %struct.strm_time** %10, align 8
  %40 = getelementptr inbounds %struct.strm_time, %struct.strm_time* %39, i32 0, i32 1
  %41 = call i32 @timeradd(i32* %40, %struct.timeval* %11, %struct.timeval* %12)
  %42 = load %struct.strm_time*, %struct.strm_time** %10, align 8
  %43 = getelementptr inbounds %struct.strm_time, %struct.strm_time* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @time_alloc(%struct.timeval* %12, i32 %44, i32* %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %33, %29, %15
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @strm_raise(i32*, i8*) #1

declare dso_local %struct.strm_time* @get_time(i32) #1

declare dso_local i32 @strm_number_p(i32) #1

declare dso_local i32 @num_to_timeval(i32, %struct.timeval*) #1

declare dso_local i32 @strm_value_float(i32) #1

declare dso_local i32 @timeradd(i32*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @time_alloc(%struct.timeval*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

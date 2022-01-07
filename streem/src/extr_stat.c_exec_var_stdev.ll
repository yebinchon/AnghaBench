; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_exec_var_stdev.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_exec_var_stdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stdev_data = type { double, double, i32, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"|v\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@strm_filter = common dso_local global i32 0, align 4
@iter_stdev = common dso_local global i32 0, align 4
@stdev_finish = common dso_local global i32 0, align 4
@iter_stdevf = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32)* @exec_var_stdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_var_stdev(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stdev_data*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @strm_get_args(i32* %14, i32 %15, i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %13)
  %18 = call %struct.stdev_data* @malloc(i32 32)
  store %struct.stdev_data* %18, %struct.stdev_data** %12, align 8
  %19 = load %struct.stdev_data*, %struct.stdev_data** %12, align 8
  %20 = icmp ne %struct.stdev_data* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @STRM_NG, align 4
  store i32 %22, i32* %6, align 4
  br label %58

23:                                               ; preds = %5
  %24 = load %struct.stdev_data*, %struct.stdev_data** %12, align 8
  %25 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.stdev_data*, %struct.stdev_data** %12, align 8
  %27 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %26, i32 0, i32 1
  store double 0.000000e+00, double* %27, align 8
  %28 = load %struct.stdev_data*, %struct.stdev_data** %12, align 8
  %29 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %28, i32 0, i32 0
  store double 0.000000e+00, double* %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.stdev_data*, %struct.stdev_data** %12, align 8
  %32 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %23
  %36 = load i32, i32* @strm_filter, align 4
  %37 = load i32, i32* @iter_stdev, align 4
  %38 = load i32, i32* @stdev_finish, align 4
  %39 = load %struct.stdev_data*, %struct.stdev_data** %12, align 8
  %40 = bitcast %struct.stdev_data* %39 to i8*
  %41 = call i32 @strm_stream_new(i32 %36, i32 %37, i32 %38, i8* %40)
  %42 = call i32 @strm_stream_value(i32 %41)
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  br label %56

44:                                               ; preds = %23
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.stdev_data*, %struct.stdev_data** %12, align 8
  %47 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @strm_filter, align 4
  %49 = load i32, i32* @iter_stdevf, align 4
  %50 = load i32, i32* @stdev_finish, align 4
  %51 = load %struct.stdev_data*, %struct.stdev_data** %12, align 8
  %52 = bitcast %struct.stdev_data* %51 to i8*
  %53 = call i32 @strm_stream_new(i32 %48, i32 %49, i32 %50, i8* %52)
  %54 = call i32 @strm_stream_value(i32 %53)
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %44, %35
  %57 = load i32, i32* @STRM_OK, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %21
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*) #1

declare dso_local %struct.stdev_data* @malloc(i32) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_exec_sum_avg.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_exec_sum_avg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sum_data = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"|v\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@strm_filter = common dso_local global i32 0, align 4
@iter_sum = common dso_local global i32 0, align 4
@avg_finish = common dso_local global i32 0, align 4
@sum_finish = common dso_local global i32 0, align 4
@iter_sumf = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32)* @exec_sum_avg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_sum_avg(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sum_data*, align 8
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
  %18 = call %struct.sum_data* @malloc(i32 32)
  store %struct.sum_data* %18, %struct.sum_data** %12, align 8
  %19 = load %struct.sum_data*, %struct.sum_data** %12, align 8
  %20 = icmp ne %struct.sum_data* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @STRM_NG, align 4
  store i32 %22, i32* %6, align 4
  br label %72

23:                                               ; preds = %5
  %24 = load %struct.sum_data*, %struct.sum_data** %12, align 8
  %25 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.sum_data*, %struct.sum_data** %12, align 8
  %27 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.sum_data*, %struct.sum_data** %12, align 8
  %29 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %23
  %33 = call i32 (...) @strm_nil_value()
  %34 = load %struct.sum_data*, %struct.sum_data** %12, align 8
  %35 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @strm_filter, align 4
  %37 = load i32, i32* @iter_sum, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @avg_finish, align 4
  br label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @sum_finish, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load %struct.sum_data*, %struct.sum_data** %12, align 8
  %47 = bitcast %struct.sum_data* %46 to i8*
  %48 = call i32 @strm_stream_new(i32 %36, i32 %37, i32 %45, i8* %47)
  %49 = call i32 @strm_stream_value(i32 %48)
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  br label %70

51:                                               ; preds = %23
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.sum_data*, %struct.sum_data** %12, align 8
  %54 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @strm_filter, align 4
  %56 = load i32, i32* @iter_sumf, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @avg_finish, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @sum_finish, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load %struct.sum_data*, %struct.sum_data** %12, align 8
  %66 = bitcast %struct.sum_data* %65 to i8*
  %67 = call i32 @strm_stream_new(i32 %55, i32 %56, i32 %64, i8* %66)
  %68 = call i32 @strm_stream_value(i32 %67)
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %44
  %71 = load i32, i32* @STRM_OK, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %21
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*) #1

declare dso_local %struct.sum_data* @malloc(i32) #1

declare dso_local i32 @strm_nil_value(...) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

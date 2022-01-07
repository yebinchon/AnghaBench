; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_exec_mvavg.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_exec_mvavg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvavg_data = type { i32, i8*, i32, i8*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"i|v\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@strm_filter = common dso_local global i32 0, align 4
@iter_mvavg = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_mvavg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_mvavg(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mvavg_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @strm_get_args(i32* %13, i32 %14, i32* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12)
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = add i64 40, %19
  %21 = trunc i64 %20 to i32
  %22 = call %struct.mvavg_data* @malloc(i32 %21)
  store %struct.mvavg_data* %22, %struct.mvavg_data** %10, align 8
  %23 = load %struct.mvavg_data*, %struct.mvavg_data** %10, align 8
  %24 = icmp ne %struct.mvavg_data* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @STRM_NG, align 4
  store i32 %26, i32* %5, align 4
  br label %61

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.mvavg_data*, %struct.mvavg_data** %10, align 8
  %30 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.mvavg_data*, %struct.mvavg_data** %10, align 8
  %32 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load i8*, i8** @FALSE, align 8
  %34 = load %struct.mvavg_data*, %struct.mvavg_data** %10, align 8
  %35 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = call i32 (...) @strm_nil_value()
  %40 = load %struct.mvavg_data*, %struct.mvavg_data** %10, align 8
  %41 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** @FALSE, align 8
  %43 = load %struct.mvavg_data*, %struct.mvavg_data** %10, align 8
  %44 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  br label %52

45:                                               ; preds = %27
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.mvavg_data*, %struct.mvavg_data** %10, align 8
  %48 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** @TRUE, align 8
  %50 = load %struct.mvavg_data*, %struct.mvavg_data** %10, align 8
  %51 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %45, %38
  %53 = load i32, i32* @strm_filter, align 4
  %54 = load i32, i32* @iter_mvavg, align 4
  %55 = load %struct.mvavg_data*, %struct.mvavg_data** %10, align 8
  %56 = bitcast %struct.mvavg_data* %55 to i8*
  %57 = call i32 @strm_stream_new(i32 %53, i32 %54, i32* null, i8* %56)
  %58 = call i32 @strm_stream_value(i32 %57)
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @STRM_OK, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %52, %25
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.mvavg_data* @malloc(i32) #1

declare dso_local i32 @strm_nil_value(...) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

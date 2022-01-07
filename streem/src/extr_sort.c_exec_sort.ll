; ModuleID = '/home/carl/AnghaBench/streem/src/extr_sort.c_exec_sort.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_sort.c_exec_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_data = type { i32, i8*, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"|v\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@SORT_FIRST_CAPA = common dso_local global i32 0, align 4
@strm_filter = common dso_local global i32 0, align 4
@iter_sort = common dso_local global i32 0, align 4
@finish_sort = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_sort(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sort_data*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call i32 (...) @strm_nil_value()
  store i32 %12, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @strm_get_args(i32* %13, i32 %14, i32* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  %17 = call i8* @malloc(i32 32)
  %18 = bitcast i8* %17 to %struct.sort_data*
  store %struct.sort_data* %18, %struct.sort_data** %10, align 8
  %19 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %20 = icmp ne %struct.sort_data* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @STRM_NG, align 4
  store i32 %22, i32* %5, align 4
  br label %57

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %26 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %28 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @SORT_FIRST_CAPA, align 4
  %30 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %31 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @SORT_FIRST_CAPA, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i8* @malloc(i32 %35)
  %37 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %38 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %40 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %23
  %44 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %45 = call i32 @free(%struct.sort_data* %44)
  %46 = load i32, i32* @STRM_NG, align 4
  store i32 %46, i32* %5, align 4
  br label %57

47:                                               ; preds = %23
  %48 = load i32, i32* @strm_filter, align 4
  %49 = load i32, i32* @iter_sort, align 4
  %50 = load i32, i32* @finish_sort, align 4
  %51 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %52 = bitcast %struct.sort_data* %51 to i8*
  %53 = call i32 @strm_stream_new(i32 %48, i32 %49, i32 %50, i8* %52)
  %54 = call i32 @strm_stream_value(i32 %53)
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @STRM_OK, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %47, %43, %21
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @strm_nil_value(...) #1

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.sort_data*) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

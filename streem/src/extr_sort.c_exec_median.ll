; ModuleID = '/home/carl/AnghaBench/streem/src/extr_sort.c_exec_median.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_sort.c_exec_median.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_data = type { i32, i8*, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"|v\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@SORT_FIRST_CAPA = common dso_local global i32 0, align 4
@strm_filter = common dso_local global i32 0, align 4
@iter_median = common dso_local global i32 0, align 4
@finish_median = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_median to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_median(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
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
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @strm_get_args(i32* %12, i32 %13, i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  %16 = call i8* @malloc(i32 32)
  %17 = bitcast i8* %16 to %struct.sort_data*
  store %struct.sort_data* %17, %struct.sort_data** %10, align 8
  %18 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %19 = icmp ne %struct.sort_data* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @STRM_NG, align 4
  store i32 %21, i32* %5, align 4
  br label %63

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (...) @strm_nil_value()
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %32 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %34 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @SORT_FIRST_CAPA, align 4
  %36 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %37 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @SORT_FIRST_CAPA, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  %42 = call i8* @malloc(i32 %41)
  %43 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %44 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %46 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %29
  %50 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %51 = call i32 @free(%struct.sort_data* %50)
  %52 = load i32, i32* @STRM_NG, align 4
  store i32 %52, i32* %5, align 4
  br label %63

53:                                               ; preds = %29
  %54 = load i32, i32* @strm_filter, align 4
  %55 = load i32, i32* @iter_median, align 4
  %56 = load i32, i32* @finish_median, align 4
  %57 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  %58 = bitcast %struct.sort_data* %57 to i8*
  %59 = call i32 @strm_stream_new(i32 %54, i32 %55, i32 %56, i8* %58)
  %60 = call i32 @strm_stream_value(i32 %59)
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @STRM_OK, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %53, %49, %20
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strm_nil_value(...) #1

declare dso_local i32 @free(%struct.sort_data*) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/streem/src/extr_sort.c_exec_sortby.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_sort.c_exec_sortby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sortby_data = type { i32, i8*, i64, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@SORT_FIRST_CAPA = common dso_local global i32 0, align 4
@strm_filter = common dso_local global i32 0, align 4
@iter_sortby = common dso_local global i32 0, align 4
@finish_sortby = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_sortby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_sortby(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sortby_data*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @strm_get_args(i32* %12, i32 %13, i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %11)
  %16 = call i8* @malloc(i32 40)
  %17 = bitcast i8* %16 to %struct.sortby_data*
  store %struct.sortby_data* %17, %struct.sortby_data** %10, align 8
  %18 = load %struct.sortby_data*, %struct.sortby_data** %10, align 8
  %19 = icmp ne %struct.sortby_data* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @STRM_NG, align 4
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.sortby_data*, %struct.sortby_data** %10, align 8
  %25 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %24, i32 0, i32 4
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.sortby_data*, %struct.sortby_data** %10, align 8
  %28 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.sortby_data*, %struct.sortby_data** %10, align 8
  %30 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @SORT_FIRST_CAPA, align 4
  %32 = load %struct.sortby_data*, %struct.sortby_data** %10, align 8
  %33 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @SORT_FIRST_CAPA, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = call i8* @malloc(i32 %37)
  %39 = load %struct.sortby_data*, %struct.sortby_data** %10, align 8
  %40 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.sortby_data*, %struct.sortby_data** %10, align 8
  %42 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %22
  %46 = load %struct.sortby_data*, %struct.sortby_data** %10, align 8
  %47 = call i32 @free(%struct.sortby_data* %46)
  %48 = load i32, i32* @STRM_NG, align 4
  store i32 %48, i32* %5, align 4
  br label %59

49:                                               ; preds = %22
  %50 = load i32, i32* @strm_filter, align 4
  %51 = load i32, i32* @iter_sortby, align 4
  %52 = load i32, i32* @finish_sortby, align 4
  %53 = load %struct.sortby_data*, %struct.sortby_data** %10, align 8
  %54 = bitcast %struct.sortby_data* %53 to i8*
  %55 = call i32 @strm_stream_new(i32 %50, i32 %51, i32 %52, i8* %54)
  %56 = call i32 @strm_stream_value(i32 %55)
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @STRM_OK, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %49, %45, %20
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.sortby_data*) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

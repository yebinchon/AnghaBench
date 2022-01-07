; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_exec_slice.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_exec_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slice_data = type { i32, i8*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@strm_filter = common dso_local global i32 0, align 4
@iter_slice = common dso_local global i32 0, align 4
@finish_slice = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_slice(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.slice_data*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @strm_get_args(i32* %12, i32 %13, i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %11)
  %16 = call i8* @malloc(i32 24)
  %17 = bitcast i8* %16 to %struct.slice_data*
  store %struct.slice_data* %17, %struct.slice_data** %10, align 8
  %18 = load %struct.slice_data*, %struct.slice_data** %10, align 8
  %19 = icmp ne %struct.slice_data* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @STRM_NG, align 4
  store i32 %21, i32* %5, align 4
  br label %53

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.slice_data*, %struct.slice_data** %10, align 8
  %25 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.slice_data*, %struct.slice_data** %10, align 8
  %27 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i8* @malloc(i32 %31)
  %33 = load %struct.slice_data*, %struct.slice_data** %10, align 8
  %34 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.slice_data*, %struct.slice_data** %10, align 8
  %36 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %22
  %40 = load %struct.slice_data*, %struct.slice_data** %10, align 8
  %41 = call i32 @free(%struct.slice_data* %40)
  %42 = load i32, i32* @STRM_NG, align 4
  store i32 %42, i32* %5, align 4
  br label %53

43:                                               ; preds = %22
  %44 = load i32, i32* @strm_filter, align 4
  %45 = load i32, i32* @iter_slice, align 4
  %46 = load i32, i32* @finish_slice, align 4
  %47 = load %struct.slice_data*, %struct.slice_data** %10, align 8
  %48 = bitcast %struct.slice_data* %47 to i8*
  %49 = call i32 @strm_stream_new(i32 %44, i32 %45, i32 %46, i8* %48)
  %50 = call i32 @strm_stream_value(i32 %49)
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @STRM_OK, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %43, %39, %20
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.slice_data*) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

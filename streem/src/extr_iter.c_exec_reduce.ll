; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_exec_reduce.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_exec_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reduce_data = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"v|v\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@strm_filter = common dso_local global i32 0, align 4
@iter_reduce = common dso_local global i32 0, align 4
@reduce_finish = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i8**)* @exec_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_reduce(i32* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.reduce_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i8**, i8*** %8, align 8
  %16 = call i32 @strm_get_args(i32* %13, i32 %14, i8** %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %11, i8** %12)
  %17 = call %struct.reduce_data* @malloc(i32 24)
  store %struct.reduce_data* %17, %struct.reduce_data** %10, align 8
  %18 = load %struct.reduce_data*, %struct.reduce_data** %10, align 8
  %19 = icmp ne %struct.reduce_data* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @STRM_NG, align 4
  store i32 %21, i32* %5, align 4
  br label %55

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* @TRUE, align 4
  %27 = load %struct.reduce_data*, %struct.reduce_data** %10, align 8
  %28 = getelementptr inbounds %struct.reduce_data, %struct.reduce_data* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load %struct.reduce_data*, %struct.reduce_data** %10, align 8
  %31 = getelementptr inbounds %struct.reduce_data, %struct.reduce_data* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load %struct.reduce_data*, %struct.reduce_data** %10, align 8
  %34 = getelementptr inbounds %struct.reduce_data, %struct.reduce_data* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %45

35:                                               ; preds = %22
  %36 = load i32, i32* @FALSE, align 4
  %37 = load %struct.reduce_data*, %struct.reduce_data** %10, align 8
  %38 = getelementptr inbounds %struct.reduce_data, %struct.reduce_data* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = call i8* (...) @strm_nil_value()
  %40 = load %struct.reduce_data*, %struct.reduce_data** %10, align 8
  %41 = getelementptr inbounds %struct.reduce_data, %struct.reduce_data* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.reduce_data*, %struct.reduce_data** %10, align 8
  %44 = getelementptr inbounds %struct.reduce_data, %struct.reduce_data* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %35, %25
  %46 = load i32, i32* @strm_filter, align 4
  %47 = load i32, i32* @iter_reduce, align 4
  %48 = load i32, i32* @reduce_finish, align 4
  %49 = load %struct.reduce_data*, %struct.reduce_data** %10, align 8
  %50 = bitcast %struct.reduce_data* %49 to i8*
  %51 = call i32 @strm_stream_new(i32 %46, i32 %47, i32 %48, i8* %50)
  %52 = call i8* @strm_stream_value(i32 %51)
  %53 = load i8**, i8*** %9, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* @STRM_OK, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %45, %20
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @strm_get_args(i32*, i32, i8**, i8*, i8**, i8**) #1

declare dso_local %struct.reduce_data* @malloc(i32) #1

declare dso_local i8* @strm_nil_value(...) #1

declare dso_local i8* @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_exec_take.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_exec_take.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.take_data = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"negative iteration\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@strm_filter = common dso_local global i32 0, align 4
@iter_take = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_take to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_take(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.take_data*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @strm_get_args(i32* %12, i32 %13, i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64* %11)
  %16 = load i64, i64* %11, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @strm_raise(i32* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @STRM_NG, align 4
  store i32 %21, i32* %5, align 4
  br label %40

22:                                               ; preds = %4
  %23 = call %struct.take_data* @malloc(i32 8)
  store %struct.take_data* %23, %struct.take_data** %10, align 8
  %24 = load %struct.take_data*, %struct.take_data** %10, align 8
  %25 = icmp ne %struct.take_data* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @STRM_NG, align 4
  store i32 %27, i32* %5, align 4
  br label %40

28:                                               ; preds = %22
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.take_data*, %struct.take_data** %10, align 8
  %31 = getelementptr inbounds %struct.take_data, %struct.take_data* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @strm_filter, align 4
  %33 = load i32, i32* @iter_take, align 4
  %34 = load %struct.take_data*, %struct.take_data** %10, align 8
  %35 = bitcast %struct.take_data* %34 to i8*
  %36 = call i32 @strm_stream_new(i32 %32, i32 %33, i32* null, i8* %35)
  %37 = call i32 @strm_stream_value(i32 %36)
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @STRM_OK, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %28, %26, %18
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i64*) #1

declare dso_local i32 @strm_raise(i32*, i8*) #1

declare dso_local %struct.take_data* @malloc(i32) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

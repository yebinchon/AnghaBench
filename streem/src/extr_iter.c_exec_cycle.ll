; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_exec_cycle.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_exec_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cycle_data = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"A|i\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid count number\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@strm_producer = common dso_local global i32 0, align 4
@gen_cycle = common dso_local global i32 0, align 4
@fin_cycle = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_cycle(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.cycle_data*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 -1, i64* %11, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @strm_get_args(i32* %13, i32 %14, i32* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %10, i64* %11)
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i64, i64* %11, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @strm_raise(i32* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @STRM_NG, align 4
  store i32 %25, i32* %5, align 4
  br label %43

26:                                               ; preds = %19, %4
  %27 = call %struct.cycle_data* @malloc(i32 16)
  store %struct.cycle_data* %27, %struct.cycle_data** %12, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.cycle_data*, %struct.cycle_data** %12, align 8
  %30 = getelementptr inbounds %struct.cycle_data, %struct.cycle_data* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.cycle_data*, %struct.cycle_data** %12, align 8
  %33 = getelementptr inbounds %struct.cycle_data, %struct.cycle_data* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* @strm_producer, align 4
  %35 = load i32, i32* @gen_cycle, align 4
  %36 = load i32, i32* @fin_cycle, align 4
  %37 = load %struct.cycle_data*, %struct.cycle_data** %12, align 8
  %38 = bitcast %struct.cycle_data* %37 to i8*
  %39 = call i32 @strm_stream_new(i32 %34, i32 %35, i32 %36, i8* %38)
  %40 = call i32 @strm_stream_value(i32 %39)
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @STRM_OK, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %26, %22
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*, i64*) #1

declare dso_local i32 @strm_raise(i32*, i8*) #1

declare dso_local %struct.cycle_data* @malloc(i32) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

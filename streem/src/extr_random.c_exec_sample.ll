; ModuleID = '/home/carl/AnghaBench/streem/src/extr_random.c_exec_sample.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_random.c_exec_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sample_data = type { i32, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@strm_filter = common dso_local global i32 0, align 4
@iter_sample = common dso_local global i32 0, align 4
@finish_sample = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_sample(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sample_data*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @strm_get_args(i32* %12, i32 %13, i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %11)
  %16 = load i32, i32* %11, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = add i64 16, %18
  %20 = trunc i64 %19 to i32
  %21 = call %struct.sample_data* @malloc(i32 %20)
  store %struct.sample_data* %21, %struct.sample_data** %10, align 8
  %22 = load %struct.sample_data*, %struct.sample_data** %10, align 8
  %23 = icmp ne %struct.sample_data* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @STRM_NG, align 4
  store i32 %25, i32* %5, align 4
  br label %45

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.sample_data*, %struct.sample_data** %10, align 8
  %29 = getelementptr inbounds %struct.sample_data, %struct.sample_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sample_data*, %struct.sample_data** %10, align 8
  %31 = getelementptr inbounds %struct.sample_data, %struct.sample_data* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.sample_data*, %struct.sample_data** %10, align 8
  %33 = getelementptr inbounds %struct.sample_data, %struct.sample_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @xorshift128init(i32 %34)
  %36 = load i32, i32* @strm_filter, align 4
  %37 = load i32, i32* @iter_sample, align 4
  %38 = load i32, i32* @finish_sample, align 4
  %39 = load %struct.sample_data*, %struct.sample_data** %10, align 8
  %40 = bitcast %struct.sample_data* %39 to i8*
  %41 = call i32 @strm_stream_new(i32 %36, i32 %37, i32 %38, i8* %40)
  %42 = call i32 @strm_stream_value(i32 %41)
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @STRM_OK, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %26, %24
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*) #1

declare dso_local %struct.sample_data* @malloc(i32) #1

declare dso_local i32 @xorshift128init(i32) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

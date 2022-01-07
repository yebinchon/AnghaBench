; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_exec_seq.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_exec_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_data = type { double, double, double }

@.str = private unnamed_addr constant [5 x i8] c"|fff\00", align 1
@strm_producer = common dso_local global i32 0, align 4
@gen_seq = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_seq(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.seq_data*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store double 1.000000e+00, double* %9, align 8
  store double -1.000000e+00, double* %10, align 8
  store double 1.000000e+00, double* %11, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @strm_get_args(i32* %14, i32 %15, i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), double* %9, double* %10, double* %12)
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %24 [
    i32 1, label %19
    i32 3, label %21
  ]

19:                                               ; preds = %4
  %20 = load double, double* %9, align 8
  store double %20, double* %10, align 8
  store double 1.000000e+00, double* %9, align 8
  br label %25

21:                                               ; preds = %4
  %22 = load double, double* %10, align 8
  store double %22, double* %11, align 8
  %23 = load double, double* %12, align 8
  store double %23, double* %10, align 8
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %21, %19
  %26 = call %struct.seq_data* @malloc(i32 24)
  store %struct.seq_data* %26, %struct.seq_data** %13, align 8
  %27 = load double, double* %9, align 8
  %28 = load %struct.seq_data*, %struct.seq_data** %13, align 8
  %29 = getelementptr inbounds %struct.seq_data, %struct.seq_data* %28, i32 0, i32 0
  store double %27, double* %29, align 8
  %30 = load double, double* %11, align 8
  %31 = load %struct.seq_data*, %struct.seq_data** %13, align 8
  %32 = getelementptr inbounds %struct.seq_data, %struct.seq_data* %31, i32 0, i32 1
  store double %30, double* %32, align 8
  %33 = load double, double* %10, align 8
  %34 = load %struct.seq_data*, %struct.seq_data** %13, align 8
  %35 = getelementptr inbounds %struct.seq_data, %struct.seq_data* %34, i32 0, i32 2
  store double %33, double* %35, align 8
  %36 = load i32, i32* @strm_producer, align 4
  %37 = load i32, i32* @gen_seq, align 4
  %38 = load %struct.seq_data*, %struct.seq_data** %13, align 8
  %39 = bitcast %struct.seq_data* %38 to i8*
  %40 = call i32 @strm_stream_new(i32 %36, i32 %37, i32* null, i8* %39)
  %41 = call i32 @strm_stream_value(i32 %40)
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @STRM_OK, align 4
  ret i32 %43
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, double*, double*, double*) #1

declare dso_local %struct.seq_data* @malloc(i32) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

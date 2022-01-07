; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_exec_correl.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_exec_correl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.correl_data = type { i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STRM_NG = common dso_local global i32 0, align 4
@strm_filter = common dso_local global i32 0, align 4
@iter_correl = common dso_local global i32 0, align 4
@correl_finish = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_correl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_correl(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.correl_data*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @strm_get_args(i32* %11, i32 %12, i32* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = call %struct.correl_data* @malloc(i32 48)
  store %struct.correl_data* %15, %struct.correl_data** %10, align 8
  %16 = load %struct.correl_data*, %struct.correl_data** %10, align 8
  %17 = icmp ne %struct.correl_data* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @STRM_NG, align 4
  store i32 %19, i32* %5, align 4
  br label %42

20:                                               ; preds = %4
  %21 = load %struct.correl_data*, %struct.correl_data** %10, align 8
  %22 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.correl_data*, %struct.correl_data** %10, align 8
  %24 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.correl_data*, %struct.correl_data** %10, align 8
  %26 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.correl_data*, %struct.correl_data** %10, align 8
  %28 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.correl_data*, %struct.correl_data** %10, align 8
  %30 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.correl_data*, %struct.correl_data** %10, align 8
  %32 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @strm_filter, align 4
  %34 = load i32, i32* @iter_correl, align 4
  %35 = load i32, i32* @correl_finish, align 4
  %36 = load %struct.correl_data*, %struct.correl_data** %10, align 8
  %37 = bitcast %struct.correl_data* %36 to i8*
  %38 = call i32 @strm_stream_new(i32 %33, i32 %34, i32 %35, i8* %37)
  %39 = call i32 @strm_stream_value(i32 %38)
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @STRM_OK, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %20, %18
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*) #1

declare dso_local %struct.correl_data* @malloc(i32) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

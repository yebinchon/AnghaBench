; ModuleID = '/home/carl/AnghaBench/streem/src/extr_graph.c_exec_bgraph.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_graph.c_exec_bgraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bar_data = type { i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"|s\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@refcnt = common dso_local global i64 0, align 8
@SIGWINCH = common dso_local global i32 0, align 4
@sigupdate = common dso_local global i32 0, align 4
@winch = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@interrupt = common dso_local global i32 0, align 4
@strm_consumer = common dso_local global i32 0, align 4
@iter_bar = common dso_local global i32 0, align 4
@fin_bar = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_bgraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_bgraph(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bar_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @strm_get_args(i32* %13, i32 %14, i32* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %11, i32* %12)
  %17 = call i8* @malloc(i32 16)
  %18 = bitcast i8* %17 to %struct.bar_data*
  store %struct.bar_data* %18, %struct.bar_data** %10, align 8
  %19 = load %struct.bar_data*, %struct.bar_data** %10, align 8
  %20 = icmp ne %struct.bar_data* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @STRM_NG, align 4
  store i32 %22, i32* %5, align 4
  br label %65

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  %25 = call i8* @malloc(i32 %24)
  %26 = load %struct.bar_data*, %struct.bar_data** %10, align 8
  %27 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.bar_data*, %struct.bar_data** %10, align 8
  %29 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @memcpy(i8* %30, i8* %31, i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.bar_data*, %struct.bar_data** %10, align 8
  %36 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* @refcnt, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %23
  %40 = load i64, i64* @refcnt, align 8
  %41 = call i32 @strm_atomic_inc(i64 %40)
  %42 = load i32, i32* @SIGWINCH, align 4
  %43 = load i32, i32* @sigupdate, align 4
  %44 = call i32 @strm_signal(i32 %42, i32 %43, i32* @winch)
  %45 = load i32, i32* @SIGINT, align 4
  %46 = load i32, i32* @sigupdate, align 4
  %47 = call i32 @strm_signal(i32 %45, i32 %46, i32* @interrupt)
  br label %48

48:                                               ; preds = %39, %23
  %49 = load %struct.bar_data*, %struct.bar_data** %10, align 8
  %50 = call i32 @init_bar(%struct.bar_data* %49)
  %51 = load i32, i32* @STRM_NG, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @STRM_NG, align 4
  store i32 %54, i32* %5, align 4
  br label %65

55:                                               ; preds = %48
  %56 = load i32, i32* @strm_consumer, align 4
  %57 = load i32, i32* @iter_bar, align 4
  %58 = load i32, i32* @fin_bar, align 4
  %59 = load %struct.bar_data*, %struct.bar_data** %10, align 8
  %60 = bitcast %struct.bar_data* %59 to i8*
  %61 = call i32 @strm_stream_new(i32 %56, i32 %57, i32 %58, i8* %60)
  %62 = call i32 @strm_stream_value(i32 %61)
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @STRM_OK, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %55, %53, %21
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i8**, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strm_atomic_inc(i64) #1

declare dso_local i32 @strm_signal(i32, i32, i32*) #1

declare dso_local i32 @init_bar(%struct.bar_data*) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

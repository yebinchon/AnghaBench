; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_exec_uniq.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_exec_uniq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniq_data = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"|v\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@strm_filter = common dso_local global i32 0, align 4
@iter_uniq = common dso_local global i32 0, align 4
@iter_uniqf = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i8**)* @exec_uniq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_uniq(i32* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.uniq_data*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = call i8* (...) @strm_nil_value()
  store i8* %12, i8** %11, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i8**, i8*** %8, align 8
  %16 = call i32 @strm_get_args(i32* %13, i32 %14, i8** %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %11)
  %17 = call %struct.uniq_data* @malloc(i32 24)
  store %struct.uniq_data* %17, %struct.uniq_data** %10, align 8
  %18 = load %struct.uniq_data*, %struct.uniq_data** %10, align 8
  %19 = icmp ne %struct.uniq_data* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @STRM_NG, align 4
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %4
  %23 = call i8* (...) @strm_nil_value()
  %24 = load %struct.uniq_data*, %struct.uniq_data** %10, align 8
  %25 = getelementptr inbounds %struct.uniq_data, %struct.uniq_data* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.uniq_data*, %struct.uniq_data** %10, align 8
  %28 = getelementptr inbounds %struct.uniq_data, %struct.uniq_data* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = load %struct.uniq_data*, %struct.uniq_data** %10, align 8
  %31 = getelementptr inbounds %struct.uniq_data, %struct.uniq_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @strm_filter, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = call i64 @strm_nil_p(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* @iter_uniq, align 4
  br label %40

38:                                               ; preds = %22
  %39 = load i32, i32* @iter_uniqf, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.uniq_data*, %struct.uniq_data** %10, align 8
  %43 = bitcast %struct.uniq_data* %42 to i8*
  %44 = call i32 @strm_stream_new(i32 %32, i32 %41, i32* null, i8* %43)
  %45 = call i8* @strm_stream_value(i32 %44)
  %46 = load i8**, i8*** %9, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* @STRM_OK, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %40, %20
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i8* @strm_nil_value(...) #1

declare dso_local i32 @strm_get_args(i32*, i32, i8**, i8*, i8**) #1

declare dso_local %struct.uniq_data* @malloc(i32) #1

declare dso_local i8* @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32*, i8*) #1

declare dso_local i64 @strm_nil_p(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

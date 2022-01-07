; ModuleID = '/home/carl/AnghaBench/streem/src/extr_random.c_exec_rnorm.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_random.c_exec_rnorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rnorm_data = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"|s\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"seed size differ\00", align 1
@FALSE = common dso_local global i32 0, align 4
@strm_producer = common dso_local global i32 0, align 4
@gen_rnorm = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_rnorm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_rnorm(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rnorm_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @strm_get_args(i32* %13, i32 %14, i32* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %11, i32* %12)
  %17 = call %struct.rnorm_data* @malloc(i32 8)
  store %struct.rnorm_data* %17, %struct.rnorm_data** %10, align 8
  %18 = load %struct.rnorm_data*, %struct.rnorm_data** %10, align 8
  %19 = icmp ne %struct.rnorm_data* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @STRM_NG, align 4
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 4
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @strm_raise(i32* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.rnorm_data*, %struct.rnorm_data** %10, align 8
  %33 = call i32 @free(%struct.rnorm_data* %32)
  %34 = load i32, i32* @STRM_NG, align 4
  store i32 %34, i32* %5, align 4
  br label %59

35:                                               ; preds = %25
  %36 = load %struct.rnorm_data*, %struct.rnorm_data** %10, align 8
  %37 = getelementptr inbounds %struct.rnorm_data, %struct.rnorm_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @memcpy(i32 %38, i8* %39, i32 %40)
  br label %47

42:                                               ; preds = %22
  %43 = load %struct.rnorm_data*, %struct.rnorm_data** %10, align 8
  %44 = getelementptr inbounds %struct.rnorm_data, %struct.rnorm_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @xorshift128init(i32 %45)
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i32, i32* @FALSE, align 4
  %49 = load %struct.rnorm_data*, %struct.rnorm_data** %10, align 8
  %50 = getelementptr inbounds %struct.rnorm_data, %struct.rnorm_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @strm_producer, align 4
  %52 = load i32, i32* @gen_rnorm, align 4
  %53 = load %struct.rnorm_data*, %struct.rnorm_data** %10, align 8
  %54 = bitcast %struct.rnorm_data* %53 to i8*
  %55 = call i32 @strm_stream_new(i32 %51, i32 %52, i32* null, i8* %54)
  %56 = call i32 @strm_stream_value(i32 %55)
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @STRM_OK, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %47, %29, %20
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i8**, i32*) #1

declare dso_local %struct.rnorm_data* @malloc(i32) #1

declare dso_local i32 @strm_raise(i32*, i8*) #1

declare dso_local i32 @free(%struct.rnorm_data*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @xorshift128init(i32) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_exec_rbk.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_exec_rbk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbk_data = type { i32, i32 }

@rbk = common dso_local global i32 0, align 4
@t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@strm_filter = common dso_local global i32 0, align 4
@iter_rbk = common dso_local global i32 0, align 4
@rbk_finish = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_rbk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_rbk(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rbk_data*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @rbk, align 4
  %13 = call i32 @khash_t(i32 %12)
  %14 = load i32, i32* @t, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @strm_get_args(i32* %16, i32 %17, i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %11)
  %20 = load i32, i32* @rbk, align 4
  %21 = call i32 @kh_init(i32 %20)
  store i32 %21, i32* @t, align 4
  %22 = load i32, i32* @t, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @STRM_NG, align 4
  store i32 %25, i32* %5, align 4
  br label %43

26:                                               ; preds = %4
  %27 = call %struct.rbk_data* @malloc(i32 8)
  store %struct.rbk_data* %27, %struct.rbk_data** %10, align 8
  %28 = load i32, i32* @t, align 4
  %29 = load %struct.rbk_data*, %struct.rbk_data** %10, align 8
  %30 = getelementptr inbounds %struct.rbk_data, %struct.rbk_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.rbk_data*, %struct.rbk_data** %10, align 8
  %33 = getelementptr inbounds %struct.rbk_data, %struct.rbk_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @strm_filter, align 4
  %35 = load i32, i32* @iter_rbk, align 4
  %36 = load i32, i32* @rbk_finish, align 4
  %37 = load %struct.rbk_data*, %struct.rbk_data** %10, align 8
  %38 = bitcast %struct.rbk_data* %37 to i8*
  %39 = call i32 @strm_stream_new(i32 %34, i32 %35, i32 %36, i8* %38)
  %40 = call i32 @strm_stream_value(i32 %39)
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @STRM_OK, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %26, %24
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @khash_t(i32) #1

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*) #1

declare dso_local i32 @kh_init(i32) #1

declare dso_local %struct.rbk_data* @malloc(i32) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_stream_new(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

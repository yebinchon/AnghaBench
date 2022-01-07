; ModuleID = '/home/carl/AnghaBench/streem/src/extr_latch.c_exec_zip.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_latch.c_exec_zip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_data = type { i32, i32**, i64 }

@strm_producer = common dso_local global i32 0, align 4
@zip_start = common dso_local global i32 0, align 4
@zip_close = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_zip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_zip(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.zip_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = add i64 24, %15
  %17 = trunc i64 %16 to i32
  %18 = call %struct.zip_data* @malloc(i32 %17)
  store %struct.zip_data* %18, %struct.zip_data** %9, align 8
  %19 = load %struct.zip_data*, %struct.zip_data** %9, align 8
  %20 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.zip_data*, %struct.zip_data** %9, align 8
  %23 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %46, %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = call i32* (...) @strm_latch_new()
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @strm_stream_value(i32* %36)
  %38 = call i32 @strm_connect(i32* %30, i32 %35, i32 %37, i32* %12)
  %39 = load i32*, i32** %11, align 8
  %40 = load %struct.zip_data*, %struct.zip_data** %9, align 8
  %41 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* %39, i32** %45, align 8
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load i32, i32* @strm_producer, align 4
  %51 = load i32, i32* @zip_start, align 4
  %52 = load i32, i32* @zip_close, align 4
  %53 = load %struct.zip_data*, %struct.zip_data** %9, align 8
  %54 = call i32* @strm_stream_new(i32 %50, i32 %51, i32 %52, %struct.zip_data* %53)
  %55 = call i32 @strm_stream_value(i32* %54)
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @STRM_OK, align 4
  ret i32 %57
}

declare dso_local %struct.zip_data* @malloc(i32) #1

declare dso_local i32* @strm_latch_new(...) #1

declare dso_local i32 @strm_connect(i32*, i32, i32, i32*) #1

declare dso_local i32 @strm_stream_value(i32*) #1

declare dso_local i32* @strm_stream_new(i32, i32, i32, %struct.zip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

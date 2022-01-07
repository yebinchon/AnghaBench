; ModuleID = '/home/carl/AnghaBench/zstd/tests/fuzz/extr_simple_round_trip.c_roundTripTest.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/fuzz/extr_simple_round_trip.c_roundTripTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cctx = common dso_local global i32 0, align 4
@kMinClevel = common dso_local global i32 0, align 4
@kMaxClevel = common dso_local global i32 0, align 4
@dctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i8*, i64, i32*)* @roundTripTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @roundTripTest(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32*, i32** %14, align 8
  %18 = call i64 @FUZZ_dataProducer_uint32Range(i32* %17, i32 0, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %7
  %21 = load i32, i32* @cctx, align 4
  %22 = load i64, i64* %13, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = call i32 @FUZZ_setRandomParameters(i32 %21, i64 %22, i32* %23)
  %25 = load i32, i32* @cctx, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i64 @ZSTD_compress2(i32 %25, i8* %26, i64 %27, i8* %28, i64 %29)
  store i64 %30, i64* %15, align 8
  br label %43

31:                                               ; preds = %7
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* @kMinClevel, align 4
  %34 = load i32, i32* @kMaxClevel, align 4
  %35 = call i32 @FUZZ_dataProducer_int32Range(i32* %32, i32 %33, i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* @cctx, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i32, i32* %16, align 4
  %42 = call i64 @ZSTD_compressCCtx(i32 %36, i8* %37, i64 %38, i8* %39, i64 %40, i32 %41)
  store i64 %42, i64* %15, align 8
  br label %43

43:                                               ; preds = %31, %20
  %44 = load i64, i64* %15, align 8
  %45 = call i32 @FUZZ_ZASSERT(i64 %44)
  %46 = load i32, i32* @dctx, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i64 @ZSTD_decompressDCtx(i32 %46, i8* %47, i64 %48, i8* %49, i64 %50)
  ret i64 %51
}

declare dso_local i64 @FUZZ_dataProducer_uint32Range(i32*, i32, i32) #1

declare dso_local i32 @FUZZ_setRandomParameters(i32, i64, i32*) #1

declare dso_local i64 @ZSTD_compress2(i32, i8*, i64, i8*, i64) #1

declare dso_local i32 @FUZZ_dataProducer_int32Range(i32*, i32, i32) #1

declare dso_local i64 @ZSTD_compressCCtx(i32, i8*, i64, i8*, i64, i32) #1

declare dso_local i32 @FUZZ_ZASSERT(i64) #1

declare dso_local i64 @ZSTD_decompressDCtx(i32, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

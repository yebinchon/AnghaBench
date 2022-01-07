; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/test/extr_RoundTripCrash.c_roundTripTest.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/test/extr_RoundTripCrash.c_roundTripTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kMaxClevel = common dso_local global i32 0, align 4
@cctx = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Compression error : %u \0A\00", align 1
@dctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i8*, i64)* @roundTripTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @roundTripTest(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = call i64 @MIN(i32 128, i64 %19)
  store i64 %20, i64* %14, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i64, i64* %14, align 8
  %23 = call i32 @xxh32(i8* %21, i64 %22, i32 0)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @kMaxClevel, align 4
  %26 = urem i32 %24, %25
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @ZSTD_getParams(i32 %27, i64 %28, i32 0)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* @cctx, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i32, i32* %17, align 4
  %36 = call i64 @ZSTD_compressCCtx(i32 %30, i8* %31, i64 %32, i8* %33, i64 %34, i32 %35)
  store i64 %36, i64* %18, align 8
  %37 = load i64, i64* %18, align 8
  %38 = call i64 @ZSTD_isError(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %6
  %41 = load i32, i32* @stderr, align 4
  %42 = load i64, i64* %18, align 8
  %43 = call i32 @ZSTD_getErrorCode(i64 %42)
  %44 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* %18, align 8
  store i64 %45, i64* %7, align 8
  br label %53

46:                                               ; preds = %6
  %47 = load i32, i32* @dctx, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %18, align 8
  %52 = call i64 @ZSTD_decompressDCtx(i32 %47, i8* %48, i64 %49, i8* %50, i64 %51)
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %46, %40
  %54 = load i64, i64* %7, align 8
  ret i64 %54
}

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @xxh32(i8*, i64, i32) #1

declare dso_local i32 @ZSTD_getParams(i32, i64, i32) #1

declare dso_local i64 @ZSTD_compressCCtx(i32, i8*, i64, i8*, i64, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @ZSTD_getErrorCode(i64) #1

declare dso_local i64 @ZSTD_decompressDCtx(i32, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

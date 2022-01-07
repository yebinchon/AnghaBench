; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_estimateCStreamSize_usingCCtxParams.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_estimateCStreamSize_usingCCtxParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Estimate CCtx size is supported for single-threaded compression only.\00", align 1
@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i32 0, align 4
@ZSTD_BLOCKSIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_estimateCStreamSize_usingCCtxParams(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @GENERIC, align 4
  %15 = call i32 @RETURN_ERROR_IF(i32 %13, i32 %14, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = load i32, i32* @ZSTD_CONTENTSIZE_UNKNOWN, align 4
  %18 = call i64 @ZSTD_getCParamsFromCCtxParams(%struct.TYPE_8__* %16, i32 %17, i32 0)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = call i64 @ZSTD_estimateCCtxSize_usingCCtxParams(%struct.TYPE_8__* %20)
  store i64 %21, i64* %4, align 8
  %22 = load i32, i32* @ZSTD_BLOCKSIZE_MAX, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = shl i64 1, %24
  %26 = call i64 @MIN(i32 %22, i64 %25)
  store i64 %26, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = shl i64 1, %28
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @ZSTD_compressBound(i64 %32)
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @ZSTD_cwksp_alloc_size(i64 %36)
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @ZSTD_cwksp_alloc_size(i64 %38)
  %40 = add i64 %37, %39
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %41, %42
  ret i64 %43
}

declare dso_local i32 @RETURN_ERROR_IF(i32, i32, i8*) #1

declare dso_local i64 @ZSTD_getCParamsFromCCtxParams(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @ZSTD_estimateCCtxSize_usingCCtxParams(%struct.TYPE_8__*) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @ZSTD_compressBound(i64) #1

declare dso_local i64 @ZSTD_cwksp_alloc_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

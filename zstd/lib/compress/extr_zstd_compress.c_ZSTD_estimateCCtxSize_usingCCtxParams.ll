; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_estimateCCtxSize_usingCCtxParams.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_estimateCCtxSize_usingCCtxParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Estimate CCtx size is supported for single-threaded compression only.\00", align 1
@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i32 0, align 4
@ZSTD_BLOCKSIZE_MAX = common dso_local global i32 0, align 4
@WILDCOPY_OVERLENGTH = common dso_local global i32 0, align 4
@HUF_WORKSPACE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"sizeof(ZSTD_CCtx) : %u\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"estimate workspace : %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_estimateCCtxSize_usingCCtxParams(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @GENERIC, align 4
  %21 = call i32 @RETURN_ERROR_IF(i32 %19, i32 %20, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = load i32, i32* @ZSTD_CONTENTSIZE_UNKNOWN, align 4
  %24 = call { i64, i32 } @ZSTD_getCParamsFromCCtxParams(%struct.TYPE_8__* %22, i32 %23, i32 0)
  %25 = bitcast %struct.TYPE_7__* %3 to { i64, i32 }*
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  %27 = extractvalue { i64, i32 } %24, 0
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  %29 = extractvalue { i64, i32 } %24, 1
  store i32 %29, i32* %28, align 8
  %30 = load i32, i32* @ZSTD_BLOCKSIZE_MAX, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = shl i64 1, %32
  %34 = call i64 @MIN(i32 %30, i64 %33)
  store i64 %34, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 3
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 3, i32 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = udiv i64 %41, %42
  store i64 %43, i64* %6, align 8
  %44 = load i32, i32* @WILDCOPY_OVERLENGTH, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %4, align 8
  %47 = add i64 %45, %46
  %48 = call i32 @ZSTD_cwksp_alloc_size(i64 %47)
  %49 = load i64, i64* %6, align 8
  %50 = mul i64 %49, 4
  %51 = call i32 @ZSTD_cwksp_alloc_size(i64 %50)
  %52 = add nsw i32 %48, %51
  %53 = load i64, i64* %6, align 8
  %54 = mul i64 %53, 4
  %55 = call i32 @ZSTD_cwksp_alloc_size(i64 %54)
  %56 = mul nsw i32 3, %55
  %57 = add nsw i32 %52, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %7, align 8
  %59 = load i32, i32* @HUF_WORKSPACE_SIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @ZSTD_cwksp_alloc_size(i64 %60)
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %8, align 8
  %63 = call i32 @ZSTD_cwksp_alloc_size(i64 4)
  %64 = mul nsw i32 2, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %9, align 8
  %66 = call i64 @ZSTD_sizeof_matchState(%struct.TYPE_7__* %3, i32 1)
  store i64 %66, i64* %10, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @ZSTD_ldm_getTableSize(i32 %69)
  store i64 %70, i64* %11, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @ZSTD_ldm_getMaxNbSeq(i32 %73, i64 %74)
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = call i32 @ZSTD_cwksp_alloc_size(i64 %77)
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %80, %81
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %82, %83
  %85 = load i64, i64* %10, align 8
  %86 = add i64 %84, %85
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %86, %87
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %88, %89
  store i64 %90, i64* %13, align 8
  %91 = call i32 @ZSTD_cwksp_alloc_size(i64 4)
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %14, align 8
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @DEBUGLOG(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %93)
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @DEBUGLOG(i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %95)
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %13, align 8
  %99 = add i64 %97, %98
  ret i64 %99
}

declare dso_local i32 @RETURN_ERROR_IF(i32, i32, i8*) #1

declare dso_local { i64, i32 } @ZSTD_getCParamsFromCCtxParams(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @ZSTD_cwksp_alloc_size(i64) #1

declare dso_local i64 @ZSTD_sizeof_matchState(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @ZSTD_ldm_getTableSize(i32) #1

declare dso_local i32 @ZSTD_ldm_getMaxNbSeq(i32, i64) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

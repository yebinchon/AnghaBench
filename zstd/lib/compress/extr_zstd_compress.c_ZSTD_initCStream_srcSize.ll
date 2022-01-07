; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_initCStream_srcSize.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_initCStream_srcSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"ZSTD_initCStream_srcSize\00", align 1
@ZSTD_reset_session_only = common dso_local global i32 0, align 4
@ZSTD_c_compressionLevel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_initCStream_srcSize(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i64, i64* @ZSTD_CONTENTSIZE_UNKNOWN, align 8
  br label %14

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  store i64 %15, i64* %7, align 8
  %16 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @ZSTD_reset_session_only, align 4
  %19 = call i32 @ZSTD_CCtx_reset(i32* %17, i32 %18)
  %20 = call i32 @FORWARD_IF_ERROR(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @ZSTD_CCtx_refCDict(i32* %21, i32* null)
  %23 = call i32 @FORWARD_IF_ERROR(i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @ZSTD_c_compressionLevel, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ZSTD_CCtx_setParameter(i32* %24, i32 %25, i32 %26)
  %28 = call i32 @FORWARD_IF_ERROR(i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @ZSTD_CCtx_setPledgedSrcSize(i32* %29, i64 %30)
  %32 = call i32 @FORWARD_IF_ERROR(i32 %31)
  ret i64 0
}

declare dso_local i32 @DEBUGLOG(i32, i8*) #1

declare dso_local i32 @FORWARD_IF_ERROR(i32) #1

declare dso_local i32 @ZSTD_CCtx_reset(i32*, i32) #1

declare dso_local i32 @ZSTD_CCtx_refCDict(i32*, i32*) #1

declare dso_local i32 @ZSTD_CCtx_setParameter(i32*, i32, i32) #1

declare dso_local i32 @ZSTD_CCtx_setPledgedSrcSize(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

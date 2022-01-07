; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compressBegin_usingDict.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compressBegin_usingDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ZSTD_compressBegin_usingDict (dictSize=%u)\00", align 1
@ZSTD_dct_auto = common dso_local global i32 0, align 4
@ZSTD_dtlm_fast = common dso_local global i32 0, align 4
@ZSTDb_not_buffered = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_compressBegin_usingDict(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @ZSTD_CONTENTSIZE_UNKNOWN, align 4
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @ZSTD_getParams_internal(i32 %11, i32 %12, i64 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @ZSTD_assignParamsToCCtxParams(i32* %16, i32* %9)
  store i32 %17, i32* %10, align 4
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @ZSTD_dct_auto, align 4
  %25 = load i32, i32* @ZSTD_dtlm_fast, align 4
  %26 = load i32, i32* @ZSTD_CONTENTSIZE_UNKNOWN, align 4
  %27 = load i32, i32* @ZSTDb_not_buffered, align 4
  %28 = call i64 @ZSTD_compressBegin_internal(%struct.TYPE_4__* %21, i8* %22, i64 %23, i32 %24, i32 %25, i32* null, i32* %10, i32 %26, i32 %27)
  ret i64 %28
}

declare dso_local i32 @ZSTD_getParams_internal(i32, i32, i64) #1

declare dso_local i32 @ZSTD_assignParamsToCCtxParams(i32*, i32*) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i32) #1

declare dso_local i64 @ZSTD_compressBegin_internal(%struct.TYPE_4__*, i8*, i64, i32, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

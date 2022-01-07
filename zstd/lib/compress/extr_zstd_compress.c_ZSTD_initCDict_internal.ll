; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_initCDict_internal.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_initCDict_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64*, i8*, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"ZSTD_initCDict_internal (dictContentType:%u)\00", align 1
@ZSTD_dlm_byRef = common dso_local global i64 0, align 8
@memory_allocation = common dso_local global i32 0, align 4
@HUF_WORKSPACE_SIZE = common dso_local global i32 0, align 4
@ZSTDcrp_makeClean = common dso_local global i32 0, align 4
@ZSTDirp_reset = common dso_local global i32 0, align 4
@ZSTD_resetTarget_CDict = common dso_local global i32 0, align 4
@ZSTD_CLEVEL_DEFAULT = common dso_local global i32 0, align 4
@ZSTD_dtlm_full = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i8*, i64, i64, i64, i8*)* @ZSTD_initCDict_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_initCDict_internal(%struct.TYPE_10__* %0, i8* %1, i64 %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i64, i64* %11, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @DEBUGLOG(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i8*, i8** %12, align 8
  %20 = call i32 @ZSTD_checkCParams(i8* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @ZSTD_dlm_byRef, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %6
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35, %32, %6
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  br label %61

42:                                               ; preds = %35
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @ZSTD_cwksp_align(i64 %45, i32 8)
  %47 = call i8* @ZSTD_cwksp_reserve_object(i32* %44, i32 %46)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @memory_allocation, align 4
  %53 = call i32 @RETURN_ERROR_IF(i32 %51, i32 %52)
  %54 = load i8*, i8** %13, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @memcpy(i8* %57, i8* %58, i64 %59)
  br label %61

61:                                               ; preds = %42, %38
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = load i32, i32* @HUF_WORKSPACE_SIZE, align 4
  %68 = call i8* @ZSTD_cwksp_reserve_object(i32* %66, i32 %67)
  %69 = bitcast i8* %68 to i64*
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  store i64* %69, i64** %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 6
  %74 = call i32 @ZSTD_reset_compressedBlockState(i32* %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  %79 = load i32, i32* @ZSTDcrp_makeClean, align 4
  %80 = load i32, i32* @ZSTDirp_reset, align 4
  %81 = load i32, i32* @ZSTD_resetTarget_CDict, align 4
  %82 = call i64 @ZSTD_reset_matchState(%struct.TYPE_12__* %76, i32* %78, i8** %12, i32 %79, i32 %80, i32 %81)
  %83 = call i32 @FORWARD_IF_ERROR(i64 %82)
  %84 = call i32 @memset(%struct.TYPE_11__* %14, i32 0, i32 16)
  %85 = load i32, i32* @ZSTD_CLEVEL_DEFAULT, align 4
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i8* %89, i8** %90, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 6
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i32, i32* @ZSTD_dtlm_full, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load i64*, i64** %106, align 8
  %108 = call i64 @ZSTD_compress_insertDictionary(i32* %92, %struct.TYPE_12__* %94, i32* %96, %struct.TYPE_11__* %14, i8* %99, i64 %102, i64 %103, i32 %104, i64* %107)
  store i64 %108, i64* %15, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i32 @FORWARD_IF_ERROR(i64 %109)
  %111 = load i64, i64* %15, align 8
  %112 = icmp ule i64 %111, -1
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i64, i64* %15, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  ret i64 0
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTD_checkCParams(i8*) #1

declare dso_local i8* @ZSTD_cwksp_reserve_object(i32*, i32) #1

declare dso_local i32 @ZSTD_cwksp_align(i64, i32) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ZSTD_reset_compressedBlockState(i32*) #1

declare dso_local i32 @FORWARD_IF_ERROR(i64) #1

declare dso_local i64 @ZSTD_reset_matchState(%struct.TYPE_12__*, i32*, i8**, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @ZSTD_compress_insertDictionary(i32*, %struct.TYPE_12__*, i32*, %struct.TYPE_11__*, i8*, i64, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compressBegin_usingCDict_advanced.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compressBegin_usingCDict_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"ZSTD_compressBegin_usingCDict_advanced\00", align 1
@dictionary_wrong = common dso_local global i32 0, align 4
@ZSTD_USE_CDICT_PARAMS_SRCSIZE_CUTOFF = common dso_local global i64 0, align 8
@ZSTD_USE_CDICT_PARAMS_DICTSIZE_MULTIPLIER = common dso_local global i64 0, align 8
@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i64 0, align 8
@ZSTD_dictForceLoad = common dso_local global i64 0, align 8
@ZSTD_dct_auto = common dso_local global i32 0, align 4
@ZSTD_dtlm_fast = common dso_local global i32 0, align 4
@ZSTDb_not_buffered = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_compressBegin_usingCDict_advanced(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca %struct.TYPE_15__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = icmp eq %struct.TYPE_12__* %15, null
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @dictionary_wrong, align 4
  %19 = call i32 @RETURN_ERROR_IF(i32 %17, i32 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = bitcast %struct.TYPE_13__* %9 to i8*
  %23 = bitcast %struct.TYPE_13__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @ZSTD_USE_CDICT_PARAMS_SRCSIZE_CUTOFF, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %45, label %28

28:                                               ; preds = %4
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ZSTD_USE_CDICT_PARAMS_DICTSIZE_MULTIPLIER, align 8
  %34 = mul i64 %32, %33
  %35 = icmp ult i64 %29, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %28
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @ZSTD_CONTENTSIZE_UNKNOWN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40, %36, %28, %4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ZSTD_dictForceLoad, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = call i32 @ZSTD_getCParamsFromCDict(%struct.TYPE_12__* %51)
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = bitcast %struct.TYPE_15__* %24 to i8*
  %55 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  br label %68

56:                                               ; preds = %45, %40
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @ZSTD_getCParams(i64 %59, i64 %60, i64 %63)
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = bitcast %struct.TYPE_15__* %24 to i8*
  %67 = bitcast %struct.TYPE_15__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  br label %68

68:                                               ; preds = %56, %50
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @ZSTD_CONTENTSIZE_UNKNOWN, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @MIN(i64 %73, i32 524288)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @ZSTD_highbit32(i32 %79)
  %81 = add nsw i32 %80, 1
  br label %83

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %77
  %84 = phi i32 [ %81, %77 ], [ 1, %82 ]
  store i32 %84, i32* %13, align 4
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @MAX(i32 %87, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %83, %68
  %93 = load i32, i32* %7, align 4
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  store i32 %93, i32* %94, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = load i32, i32* @ZSTD_dct_auto, align 4
  %97 = load i32, i32* @ZSTD_dtlm_fast, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i32, i32* @ZSTDb_not_buffered, align 4
  %101 = call i64 @ZSTD_compressBegin_internal(%struct.TYPE_14__* %95, i32* null, i32 0, i32 %96, i32 %97, %struct.TYPE_12__* %98, %struct.TYPE_13__* %9, i64 %99, i32 %100)
  ret i64 %101
}

declare dso_local i32 @DEBUGLOG(i32, i8*) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ZSTD_getCParamsFromCDict(%struct.TYPE_12__*) #1

declare dso_local i32 @ZSTD_getCParams(i64, i64, i64) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @ZSTD_highbit32(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @ZSTD_compressBegin_internal(%struct.TYPE_14__*, i32*, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_13__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

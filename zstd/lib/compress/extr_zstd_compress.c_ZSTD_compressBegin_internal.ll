; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compressBegin_internal.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compressBegin_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i64, i8* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"ZSTD_compressBegin_internal: wlog=%u\00", align 1
@ZSTD_USE_CDICT_PARAMS_SRCSIZE_CUTOFF = common dso_local global i32 0, align 4
@ZSTD_USE_CDICT_PARAMS_DICTSIZE_MULTIPLIER = common dso_local global i32 0, align 4
@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i32 0, align 4
@ZSTD_dictForceLoad = common dso_local global i64 0, align 8
@ZSTDcrp_makeClean = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i8*, i64, i32, i32, %struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32)* @ZSTD_compressBegin_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_compressBegin_internal(%struct.TYPE_19__* %0, i8* %1, i64 %2, i32 %3, i32 %4, %struct.TYPE_17__* %5, %struct.TYPE_18__* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store %struct.TYPE_17__* %5, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_18__* %6, %struct.TYPE_18__** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ZSTD_checkCParams(i32 %29)
  %31 = call i32 @ZSTD_isError(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %9
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %40 = icmp ne %struct.TYPE_17__* %39, null
  br label %41

41:                                               ; preds = %38, %9
  %42 = phi i1 [ false, %9 ], [ %40, %38 ]
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %47 = icmp ne %struct.TYPE_17__* %46, null
  br i1 %47, label %48, label %87

48:                                               ; preds = %41
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %48
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* @ZSTD_USE_CDICT_PARAMS_SRCSIZE_CUTOFF, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %74, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %18, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ZSTD_USE_CDICT_PARAMS_DICTSIZE_MULTIPLIER, align 4
  %63 = mul nsw i32 %61, %62
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %74, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* @ZSTD_CONTENTSIZE_UNKNOWN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69, %65, %57, %53
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ZSTD_dictForceLoad, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = call i64 @ZSTD_resetCCtx_usingCDict(%struct.TYPE_19__* %81, %struct.TYPE_17__* %82, %struct.TYPE_18__* %83, i32 %84, i32 %85)
  store i64 %86, i64* %10, align 8
  br label %157

87:                                               ; preds = %74, %69, %48, %41
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* @ZSTDcrp_makeClean, align 4
  %92 = load i32, i32* %19, align 4
  %93 = bitcast %struct.TYPE_18__* %89 to { i64, i32 }*
  %94 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %93, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @ZSTD_resetCCtx_internal(%struct.TYPE_19__* %88, i64 %95, i32 %97, i32 %90, i32 %91, i32 %92)
  %99 = call i32 @FORWARD_IF_ERROR(i64 %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %101 = icmp ne %struct.TYPE_17__* %100, null
  br i1 %101, label %102, label %126

102:                                              ; preds = %87
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @ZSTD_compress_insertDictionary(i32 %106, i32* %109, i32* %111, %struct.TYPE_18__* %112, i8* %115, i64 %119, i32 %120, i32 %121, i32 %124)
  br label %145

126:                                              ; preds = %87
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = load i64, i64* %13, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @ZSTD_compress_insertDictionary(i32 %130, i32* %133, i32* %135, %struct.TYPE_18__* %136, i8* %137, i64 %138, i32 %139, i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %126, %102
  %146 = phi i64 [ %125, %102 ], [ %144, %126 ]
  store i64 %146, i64* %20, align 8
  %147 = load i64, i64* %20, align 8
  %148 = call i32 @FORWARD_IF_ERROR(i64 %147)
  %149 = load i64, i64* %20, align 8
  %150 = load i64, i64* @UINT_MAX, align 8
  %151 = icmp ule i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load i64, i64* %20, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  store i64 0, i64* %10, align 8
  br label %157

157:                                              ; preds = %145, %80
  %158 = load i64, i64* %10, align 8
  ret i64 %158
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTD_isError(i32) #1

declare dso_local i32 @ZSTD_checkCParams(i32) #1

declare dso_local i64 @ZSTD_resetCCtx_usingCDict(%struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @FORWARD_IF_ERROR(i64) #1

declare dso_local i64 @ZSTD_resetCCtx_internal(%struct.TYPE_19__*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @ZSTD_compress_insertDictionary(i32, i32*, i32*, %struct.TYPE_18__*, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

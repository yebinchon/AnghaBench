; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compressStream2.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compressStream2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i64, i64, i64, i32*, i64, %struct.TYPE_27__, %struct.TYPE_23__, i32*, i32, %struct.TYPE_24__ }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32, i32* }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_26__ = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"ZSTD_compressStream2, endOp=%u \00", align 1
@GENERIC = common dso_local global i32 0, align 4
@zcss_init = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"ZSTD_compressStream2 : transparent init stage\00", align 1
@ZSTD_e_end = common dso_local global i64 0, align 8
@zcss_load = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"completed ZSTD_compressStream2\00", align 1
@ZSTDMT_JOBSIZE_MIN = common dso_local global i64 0, align 8
@ZSTD_dct_rawContent = common dso_local global i32 0, align 4
@ZSTD_e_continue = common dso_local global i64 0, align 8
@ZSTD_e_flush = common dso_local global i64 0, align 8
@ZSTD_reset_session_only = common dso_local global i32 0, align 4
@memory_allocation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_compressStream2(%struct.TYPE_28__* %0, %struct.TYPE_25__* %1, %struct.TYPE_26__* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_27__, align 8
  %10 = alloca %struct.TYPE_24__, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @GENERIC, align 4
  %23 = call i32 @RETURN_ERROR_IF(i32 %21, i32 %22)
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @GENERIC, align 4
  %33 = call i32 @RETURN_ERROR_IF(i32 %31, i32 %32)
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %35 = icmp ne %struct.TYPE_28__* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @zcss_init, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %120

43:                                               ; preds = %4
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 6
  %46 = bitcast %struct.TYPE_27__* %9 to i8*
  %47 = bitcast %struct.TYPE_27__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 10
  %50 = bitcast %struct.TYPE_24__* %10 to i8*
  %51 = bitcast %struct.TYPE_24__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %53 = call i64 @ZSTD_initLocalDict(%struct.TYPE_28__* %52)
  %54 = call i32 @FORWARD_IF_ERROR(i64 %53)
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 10
  %57 = call i32 @memset(%struct.TYPE_24__* %56, i32 0, i32 16)
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %43
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 8
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br label %66

66:                                               ; preds = %61, %43
  %67 = phi i1 [ true, %43 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @ZSTD_e_end, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %74, %66
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 6
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, 1
  %88 = call i32 @ZSTD_getCParamsFromCCtxParams(%struct.TYPE_27__* %83, i64 %87, i32 0)
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 1
  store i32 %88, i32* %89, align 8
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 8
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %102, 1
  %104 = call i64 @ZSTD_resetCStream_internal(%struct.TYPE_28__* %90, i32* %92, i32 %94, i32 %96, i32* %99, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %9, i64 %103)
  %105 = call i32 @FORWARD_IF_ERROR(i64 %104)
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @zcss_load, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  br label %120

120:                                              ; preds = %81, %4
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %124 = load i64, i64* %8, align 8
  %125 = call i64 @ZSTD_compressStream_generic(%struct.TYPE_28__* %121, %struct.TYPE_25__* %122, %struct.TYPE_26__* %123, i64 %124)
  %126 = call i32 @FORWARD_IF_ERROR(i64 %125)
  %127 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = sub i64 %130, %133
  ret i64 %134
}

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FORWARD_IF_ERROR(i64) #1

declare dso_local i64 @ZSTD_initLocalDict(%struct.TYPE_28__*) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @ZSTD_getCParamsFromCCtxParams(%struct.TYPE_27__*, i64, i32) #1

declare dso_local i64 @ZSTD_resetCStream_internal(%struct.TYPE_28__*, i32*, i32, i32, i32*, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, i64) #1

declare dso_local i64 @ZSTD_compressStream_generic(%struct.TYPE_28__*, %struct.TYPE_25__*, %struct.TYPE_26__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

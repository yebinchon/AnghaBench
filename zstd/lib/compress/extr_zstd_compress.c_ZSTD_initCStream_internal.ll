; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_initCStream_internal.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_initCStream_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ZSTD_initCStream_internal\00", align 1
@ZSTD_reset_session_only = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_initCStream_internal(%struct.TYPE_9__* %0, i8* %1, i64 %2, i32* %3, %struct.TYPE_10__* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = load i32, i32* @ZSTD_reset_session_only, align 4
  %16 = call i32 @ZSTD_CCtx_reset(%struct.TYPE_9__* %14, i32 %15)
  %17 = call i32 @FORWARD_IF_ERROR(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @ZSTD_CCtx_setPledgedSrcSize(%struct.TYPE_9__* %18, i64 %19)
  %21 = call i32 @FORWARD_IF_ERROR(i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ZSTD_checkCParams(i32 %24)
  %26 = call i32 @ZSTD_isError(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %34 = bitcast %struct.TYPE_10__* %32 to i8*
  %35 = bitcast %struct.TYPE_10__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %6
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br label %41

41:                                               ; preds = %38, %6
  %42 = phi i1 [ false, %6 ], [ %40, %38 ]
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @ZSTD_CCtx_loadDictionary(%struct.TYPE_9__* %49, i8* %50, i64 %51)
  %53 = call i32 @FORWARD_IF_ERROR(i32 %52)
  br label %59

54:                                               ; preds = %41
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @ZSTD_CCtx_refCDict(%struct.TYPE_9__* %55, i32* %56)
  %58 = call i32 @FORWARD_IF_ERROR(i32 %57)
  br label %59

59:                                               ; preds = %54, %48
  ret i64 0
}

declare dso_local i32 @DEBUGLOG(i32, i8*) #1

declare dso_local i32 @FORWARD_IF_ERROR(i32) #1

declare dso_local i32 @ZSTD_CCtx_reset(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ZSTD_CCtx_setPledgedSrcSize(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTD_isError(i32) #1

declare dso_local i32 @ZSTD_checkCParams(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ZSTD_CCtx_loadDictionary(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i32 @ZSTD_CCtx_refCDict(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

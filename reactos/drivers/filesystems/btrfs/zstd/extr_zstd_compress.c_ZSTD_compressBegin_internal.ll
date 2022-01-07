; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_compressBegin_internal.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_compressBegin_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"ZSTD_compressBegin_internal: wlog=%u\00", align 1
@ZSTDcrp_continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i8*, i64, i32, i32, %struct.TYPE_17__*, i32, i32, i32)* @ZSTD_compressBegin_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_compressBegin_internal(%struct.TYPE_19__* %0, i8* %1, i64 %2, i32 %3, i32 %4, %struct.TYPE_17__* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_18__, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store i32 %6, i32* %22, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store %struct.TYPE_17__* %5, %struct.TYPE_17__** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ZSTD_checkCParams(i32 %29)
  %31 = call i64 @ZSTD_isError(i64 %30)
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i8*, i8** %13, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %9
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %40 = icmp ne %struct.TYPE_17__* %39, null
  br label %41

41:                                               ; preds = %38, %9
  %42 = phi i1 [ false, %9 ], [ %40, %38 ]
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %47 = icmp ne %struct.TYPE_17__* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %19, align 4
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ZSTD_resetCCtx_usingCDict(%struct.TYPE_19__* %54, %struct.TYPE_17__* %55, i32 %60, i32 %56, i32 %57)
  store i64 %61, i64* %10, align 8
  br label %100

62:                                               ; preds = %48, %41
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* @ZSTDcrp_continue, align 4
  %66 = load i32, i32* %19, align 4
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ZSTD_resetCCtx_internal(%struct.TYPE_19__* %63, i32 %69, i32 %64, i32 %65, i32 %66)
  %71 = call i32 @CHECK_F(i32 %70)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i8*, i8** %13, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @ZSTD_compress_insertDictionary(i32 %75, i32* %78, %struct.TYPE_18__* %11, i8* %79, i64 %80, i32 %81, i32 %82, i32 %85)
  store i64 %86, i64* %20, align 8
  %87 = load i64, i64* %20, align 8
  %88 = call i64 @ZSTD_isError(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %62
  %91 = load i64, i64* %20, align 8
  store i64 %91, i64* %10, align 8
  br label %100

92:                                               ; preds = %62
  %93 = load i64, i64* %20, align 8
  %94 = icmp ule i64 %93, -1
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i64, i64* %20, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  store i64 0, i64* %10, align 8
  br label %100

100:                                              ; preds = %92, %90, %53
  %101 = load i64, i64* %10, align 8
  ret i64 %101
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @ZSTD_checkCParams(i32) #1

declare dso_local i64 @ZSTD_resetCCtx_usingCDict(%struct.TYPE_19__*, %struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @CHECK_F(i32) #1

declare dso_local i32 @ZSTD_resetCCtx_internal(%struct.TYPE_19__*, i32, i32, i32, i32) #1

declare dso_local i64 @ZSTD_compress_insertDictionary(i32, i32*, %struct.TYPE_18__*, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

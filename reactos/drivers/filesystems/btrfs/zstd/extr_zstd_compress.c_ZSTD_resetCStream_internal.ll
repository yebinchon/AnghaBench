; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_resetCStream_internal.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_resetCStream_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ZSTD_resetCStream_internal\00", align 1
@ZSTD_dtlm_fast = common dso_local global i32 0, align 4
@ZSTDb_buffered = common dso_local global i32 0, align 4
@zcss_load = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i8*, i64, i32, i32*, i32, i64)* @ZSTD_resetCStream_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_resetCStream_internal(%struct.TYPE_8__* %0, i8* %1, i64 %2, i32 %3, i32* %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 %5, i32* %15, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* %14, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i32 @ZSTD_getCParamsFromCCtxParams(%struct.TYPE_9__* %8, i64 %17, i64 %18)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ZSTD_checkCParams(i32 %22)
  %24 = call i32 @ZSTD_isError(i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load i32*, i32** %13, align 8
  %33 = icmp ne i32* %32, null
  br label %34

34:                                               ; preds = %31, %7
  %35 = phi i1 [ false, %7 ], [ %33, %31 ]
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @ZSTD_dtlm_fast, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i32, i32* @ZSTDb_buffered, align 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ZSTD_compressBegin_internal(%struct.TYPE_8__* %39, i8* %40, i64 %41, i32 %42, i32 %43, i32* %44, i32 %48, i64 %45, i32 %46)
  %50 = call i32 @CHECK_F(i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 7
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %14, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = add nsw i32 %57, %64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* @zcss_load, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  ret i64 0
}

declare dso_local i32 @DEBUGLOG(i32, i8*) #1

declare dso_local i32 @ZSTD_getCParamsFromCCtxParams(%struct.TYPE_9__*, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTD_isError(i32) #1

declare dso_local i32 @ZSTD_checkCParams(i32) #1

declare dso_local i32 @CHECK_F(i32) #1

declare dso_local i32 @ZSTD_compressBegin_internal(%struct.TYPE_8__*, i8*, i64, i32, i32, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

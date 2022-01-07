; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_estimateCCtxSize_usingCCtxParams.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_estimateCCtxSize_usingCCtxParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@GENERIC = common dso_local global i32 0, align 4
@ZSTD_BLOCKSIZE_MAX = common dso_local global i32 0, align 4
@WILDCOPY_OVERLENGTH = common dso_local global i64 0, align 8
@HUF_WORKSPACE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"sizeof(ZSTD_CCtx) : %u\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"estimate workSpace : %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_estimateCCtxSize_usingCCtxParams(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__, align 8
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
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @GENERIC, align 4
  %21 = call i64 @ERROR(i32 %20)
  store i64 %21, i64* %2, align 8
  br label %78

22:                                               ; preds = %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = call { i64, i32 } @ZSTD_getCParamsFromCCtxParams(%struct.TYPE_8__* %23, i32 0, i32 0)
  %25 = bitcast %struct.TYPE_7__* %4 to { i64, i32 }*
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  %27 = extractvalue { i64, i32 } %24, 0
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  %29 = extractvalue { i64, i32 } %24, 1
  store i32 %29, i32* %28, align 8
  %30 = load i32, i32* @ZSTD_BLOCKSIZE_MAX, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = shl i64 1, %32
  %34 = call i64 @MIN(i32 %30, i64 %33)
  store i64 %34, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 3
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 3, i32 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = udiv i64 %41, %42
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* @WILDCOPY_OVERLENGTH, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %44, %45
  %47 = load i64, i64* %7, align 8
  %48 = mul i64 11, %47
  %49 = add i64 %46, %48
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* @HUF_WORKSPACE_SIZE, align 8
  store i64 %50, i64* %9, align 8
  store i64 8, i64* %10, align 8
  %51 = call i64 @ZSTD_sizeof_matchState(%struct.TYPE_7__* %4, i32 1)
  store i64 %51, i64* %11, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @ZSTD_ldm_getTableSize(i32 %54)
  store i64 %55, i64* %12, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @ZSTD_ldm_getMaxNbSeq(i32 %58, i64 %59)
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 8
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %64, %65
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %66, %67
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %68, %69
  %71 = load i64, i64* %13, align 8
  %72 = add i64 %70, %71
  store i64 %72, i64* %14, align 8
  %73 = call i32 @DEBUGLOG(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 4)
  %74 = load i64, i64* %14, align 8
  %75 = call i32 @DEBUGLOG(i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load i64, i64* %14, align 8
  %77 = add i64 4, %76
  store i64 %77, i64* %2, align 8
  br label %78

78:                                               ; preds = %22, %19
  %79 = load i64, i64* %2, align 8
  ret i64 %79
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local { i64, i32 } @ZSTD_getCParamsFromCCtxParams(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @MIN(i32, i64) #1

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

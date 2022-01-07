; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_compress.c_zstd_decompress.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_compress.c_zstd_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i32* }
%struct.TYPE_5__ = type { i64, i8*, i32* }

@zstd_mem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ZSTD_createDStream failed.\0A\00", align 1
@STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ZSTD_initDStream failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"ZSTD_decompressStream failed: %s\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zstd_decompress(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* @zstd_mem, align 4
  %17 = call i32* @ZSTD_createDStream_advanced(i32 %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %22, i32* %5, align 4
  br label %61

23:                                               ; preds = %4
  %24 = load i32*, i32** %11, align 8
  %25 = call i64 @ZSTD_initDStream(i32* %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i64 @ZSTD_isError(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @ZSTD_getErrorName(i64 %30)
  %32 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %33, i32* %10, align 4
  br label %57

34:                                               ; preds = %23
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i32* %35, i32** %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32* %40, i32** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i64 @ZSTD_decompressStream(i32* %45, %struct.TYPE_5__* %15, %struct.TYPE_6__* %14)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i64 @ZSTD_isError(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %34
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @ZSTD_getErrorName(i64 %51)
  %53 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %54, i32* %10, align 4
  br label %57

55:                                               ; preds = %34
  %56 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %55, %50, %29
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @ZSTD_freeDStream(i32* %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %20
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32* @ZSTD_createDStream_advanced(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @ZSTD_initDStream(i32*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @ZSTD_getErrorName(i64) #1

declare dso_local i64 @ZSTD_decompressStream(i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @ZSTD_freeDStream(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

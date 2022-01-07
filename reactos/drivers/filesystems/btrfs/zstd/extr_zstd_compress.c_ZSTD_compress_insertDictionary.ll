; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_compress_insertDictionary.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_compress_insertDictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"ZSTD_compress_insertDictionary (dictSize=%u)\00", align 1
@ZSTD_dct_rawContent = common dso_local global i64 0, align 8
@ZSTD_MAGIC_DICTIONARY = common dso_local global i64 0, align 8
@ZSTD_dct_auto = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"raw content dictionary detected\00", align 1
@ZSTD_dct_fullDict = common dso_local global i64 0, align 8
@dictionary_wrong = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i8*, i64, i64, i32, i8*)* @ZSTD_compress_insertDictionary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_compress_insertDictionary(i32* %0, i32* %1, i32* %2, i8* %3, i64 %4, i64 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %18 = load i64, i64* %14, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i8*, i8** %13, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %8
  %24 = load i64, i64* %14, align 8
  %25 = icmp ule i64 %24, 8
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %8
  store i64 0, i64* %9, align 8
  br label %75

27:                                               ; preds = %23
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @ZSTD_reset_compressedBlockState(i32* %28)
  %30 = load i64, i64* %15, align 8
  %31 = load i64, i64* @ZSTD_dct_rawContent, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i32, i32* %16, align 4
  %39 = call i64 @ZSTD_loadDictionaryContent(i32* %34, i32* %35, i8* %36, i64 %37, i32 %38)
  store i64 %39, i64* %9, align 8
  br label %75

40:                                               ; preds = %27
  %41 = load i8*, i8** %13, align 8
  %42 = call i64 @MEM_readLE32(i8* %41)
  %43 = load i64, i64* @ZSTD_MAGIC_DICTIONARY, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* @ZSTD_dct_auto, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32*, i32** %11, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i32, i32* %16, align 4
  %56 = call i64 @ZSTD_loadDictionaryContent(i32* %51, i32* %52, i8* %53, i64 %54, i32 %55)
  store i64 %56, i64* %9, align 8
  br label %75

57:                                               ; preds = %45
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* @ZSTD_dct_fullDict, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @dictionary_wrong, align 4
  %63 = call i64 @ERROR(i32 %62)
  store i64 %63, i64* %9, align 8
  br label %75

64:                                               ; preds = %57
  %65 = call i32 @assert(i32 0)
  br label %66

66:                                               ; preds = %64, %40
  %67 = load i32*, i32** %10, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i8*, i8** %17, align 8
  %74 = call i64 @ZSTD_loadZstdDictionary(i32* %67, i32* %68, i32* %69, i8* %70, i64 %71, i32 %72, i8* %73)
  store i64 %74, i64* %9, align 8
  br label %75

75:                                               ; preds = %66, %61, %49, %33, %26
  %76 = load i64, i64* %9, align 8
  ret i64 %76
}

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i32 @ZSTD_reset_compressedBlockState(i32*) #1

declare dso_local i64 @ZSTD_loadDictionaryContent(i32*, i32*, i8*, i64, i32) #1

declare dso_local i64 @MEM_readLE32(i8*) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ZSTD_loadZstdDictionary(i32*, i32*, i32*, i8*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compress_insertDictionary.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compress_insertDictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"ZSTD_compress_insertDictionary (dictSize=%u)\00", align 1
@ZSTD_dct_fullDict = common dso_local global i64 0, align 8
@dictionary_wrong = common dso_local global i32 0, align 4
@ZSTD_dct_rawContent = common dso_local global i64 0, align 8
@ZSTD_MAGIC_DICTIONARY = common dso_local global i64 0, align 8
@ZSTD_dct_auto = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"raw content dictionary detected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32*, i8*, i64, i64, i32, i8*)* @ZSTD_compress_insertDictionary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_compress_insertDictionary(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4, i64 %5, i64 %6, i32 %7, i8* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %20 = load i64, i64* %16, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i8*, i8** %15, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %9
  %26 = load i64, i64* %16, align 8
  %27 = icmp ult i64 %26, 8
  br i1 %27, label %28, label %35

28:                                               ; preds = %25, %9
  %29 = load i64, i64* %17, align 8
  %30 = load i64, i64* @ZSTD_dct_fullDict, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @dictionary_wrong, align 4
  %34 = call i32 @RETURN_ERROR_IF(i32 %32, i32 %33)
  store i64 0, i64* %10, align 8
  br label %85

35:                                               ; preds = %25
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @ZSTD_reset_compressedBlockState(i32* %36)
  %38 = load i64, i64* %17, align 8
  %39 = load i64, i64* @ZSTD_dct_rawContent, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load i64, i64* %16, align 8
  %47 = load i32, i32* %18, align 4
  %48 = call i64 @ZSTD_loadDictionaryContent(i32* %42, i32* %43, i32* %44, i8* %45, i64 %46, i32 %47)
  store i64 %48, i64* %10, align 8
  br label %85

49:                                               ; preds = %35
  %50 = load i8*, i8** %15, align 8
  %51 = call i64 @MEM_readLE32(i8* %50)
  %52 = load i64, i64* @ZSTD_MAGIC_DICTIONARY, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %49
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* @ZSTD_dct_auto, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load i64, i64* %16, align 8
  %65 = load i32, i32* %18, align 4
  %66 = call i64 @ZSTD_loadDictionaryContent(i32* %60, i32* %61, i32* %62, i8* %63, i64 %64, i32 %65)
  store i64 %66, i64* %10, align 8
  br label %85

67:                                               ; preds = %54
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* @ZSTD_dct_fullDict, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* @dictionary_wrong, align 4
  %73 = call i32 @RETURN_ERROR_IF(i32 %71, i32 %72)
  %74 = call i32 @assert(i32 0)
  br label %75

75:                                               ; preds = %67, %49
  %76 = load i32*, i32** %11, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = load i64, i64* %16, align 8
  %82 = load i32, i32* %18, align 4
  %83 = load i8*, i8** %19, align 8
  %84 = call i64 @ZSTD_loadZstdDictionary(i32* %76, i32* %77, i32* %78, i32* %79, i8* %80, i64 %81, i32 %82, i8* %83)
  store i64 %84, i64* %10, align 8
  br label %85

85:                                               ; preds = %75, %58, %41, %28
  %86 = load i64, i64* %10, align 8
  ret i64 %86
}

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32) #1

declare dso_local i32 @ZSTD_reset_compressedBlockState(i32*) #1

declare dso_local i64 @ZSTD_loadDictionaryContent(i32*, i32*, i32*, i8*, i64, i32) #1

declare dso_local i64 @MEM_readLE32(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ZSTD_loadZstdDictionary(i32*, i32*, i32*, i32*, i8*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

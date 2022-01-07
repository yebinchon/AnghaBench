; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_decompress.c_ZSTD_findDecompressedSize.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_decompress.c_ZSTD_findDecompressedSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_frameHeaderSize_prefix = common dso_local global i64 0, align 8
@ZSTD_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@ZSTD_skippableHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_CONTENTSIZE_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_findDecompressedSize(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %77, %41, %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %84

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @ZSTD_readLE32(i8* %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, -16
  %21 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_START, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %15
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @ZSTD_skippableHeaderSize, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @srcSize_wrong, align 4
  %29 = call i64 @ERROR(i32 %28)
  store i64 %29, i64* %3, align 8
  br label %91

30:                                               ; preds = %23
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr i8, i8* %31, i64 4
  %33 = call i64 @ZSTD_readLE32(i8* %32)
  %34 = load i64, i64* @ZSTD_skippableHeaderSize, align 8
  %35 = add i64 %33, %34
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  store i64 %40, i64* %3, align 8
  br label %91

41:                                               ; preds = %30
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr i8, i8* %42, i64 %43
  store i8* %44, i8** %4, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %5, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %5, align 8
  br label %11

48:                                               ; preds = %15
  %49 = load i8*, i8** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @ZSTD_getFrameContentSize(i8* %49, i64 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %3, align 8
  br label %91

57:                                               ; preds = %48
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %58, %59
  %61 = load i64, i64* %6, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  store i64 %64, i64* %3, align 8
  br label %91

65:                                               ; preds = %57
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %6, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @ZSTD_findFrameCompressedSize(i8* %69, i64 %70)
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @ZSTD_isError(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  store i64 %76, i64* %3, align 8
  br label %91

77:                                               ; preds = %65
  %78 = load i8*, i8** %4, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr i8, i8* %78, i64 %79
  store i8* %80, i8** %4, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %5, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %5, align 8
  br label %11

84:                                               ; preds = %11
  %85 = load i64, i64* %5, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  store i64 %88, i64* %3, align 8
  br label %91

89:                                               ; preds = %84
  %90 = load i64, i64* %6, align 8
  store i64 %90, i64* %3, align 8
  br label %91

91:                                               ; preds = %89, %87, %75, %63, %55, %39, %27
  %92 = load i64, i64* %3, align 8
  ret i64 %92
}

declare dso_local i64 @ZSTD_readLE32(i8*) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTD_getFrameContentSize(i8*, i64) #1

declare dso_local i64 @ZSTD_findFrameCompressedSize(i8*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

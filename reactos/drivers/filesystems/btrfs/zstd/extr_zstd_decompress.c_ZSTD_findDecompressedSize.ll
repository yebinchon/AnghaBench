; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_findDecompressedSize.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_findDecompressedSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_frameHeaderSize_prefix = common dso_local global i64 0, align 8
@ZSTD_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@ZSTD_skippableHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_FRAMEIDSIZE = common dso_local global i32 0, align 4
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

11:                                               ; preds = %79, %43, %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %86

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @MEM_readLE32(i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, -16
  %20 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_START, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %15
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @ZSTD_skippableHeaderSize, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @srcSize_wrong, align 4
  %28 = call i64 @ERROR(i32 %27)
  store i64 %28, i64* %3, align 8
  br label %93

29:                                               ; preds = %22
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @ZSTD_FRAMEIDSIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %30, i64 %32
  %34 = call i32 @MEM_readLE32(i8* %33)
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @ZSTD_skippableHeaderSize, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  store i64 %42, i64* %3, align 8
  br label %93

43:                                               ; preds = %29
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr i8, i8* %44, i64 %45
  store i8* %46, i8** %4, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %5, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %5, align 8
  br label %11

50:                                               ; preds = %15
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @ZSTD_getFrameContentSize(i8* %51, i64 %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i64, i64* %9, align 8
  store i64 %58, i64* %3, align 8
  br label %93

59:                                               ; preds = %50
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %60, %61
  %63 = load i64, i64* %6, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  store i64 %66, i64* %3, align 8
  br label %93

67:                                               ; preds = %59
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %6, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @ZSTD_findFrameCompressedSize(i8* %71, i64 %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i64 @ZSTD_isError(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  store i64 %78, i64* %3, align 8
  br label %93

79:                                               ; preds = %67
  %80 = load i8*, i8** %4, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr i8, i8* %80, i64 %81
  store i8* %82, i8** %4, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %5, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %5, align 8
  br label %11

86:                                               ; preds = %11
  %87 = load i64, i64* %5, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  store i64 %90, i64* %3, align 8
  br label %93

91:                                               ; preds = %86
  %92 = load i64, i64* %6, align 8
  store i64 %92, i64* %3, align 8
  br label %93

93:                                               ; preds = %91, %89, %77, %65, %57, %41, %26
  %94 = load i64, i64* %3, align 8
  ret i64 %94
}

declare dso_local i32 @MEM_readLE32(i8*) #1

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

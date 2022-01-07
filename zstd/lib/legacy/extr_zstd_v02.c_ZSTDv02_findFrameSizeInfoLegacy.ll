; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v02.c_ZSTDv02_findFrameSizeInfoLegacy.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v02.c_ZSTDv02_findFrameSizeInfoLegacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_frameHeaderSize = common dso_local global i64 0, align 8
@ZSTD_blockHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_magicNumber = common dso_local global i64 0, align 8
@prefix_unknown = common dso_local global i32 0, align 4
@BLOCKSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ZSTDv02_findFrameSizeInfoLegacy(i8* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @ZSTD_frameHeaderSize, align 8
  %20 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %21 = add i64 %19, %20
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i64*, i64** %7, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load i32, i32* @srcSize_wrong, align 4
  %27 = call i64 @ERROR(i32 %26)
  %28 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %24, i64* %25, i64 %27)
  br label %102

29:                                               ; preds = %4
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @MEM_readLE32(i8* %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @ZSTD_magicNumber, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i64*, i64** %7, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = load i32, i32* @prefix_unknown, align 4
  %39 = call i64 @ERROR(i32 %38)
  %40 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %36, i64* %37, i64 %39)
  br label %102

41:                                               ; preds = %29
  %42 = load i64, i64* @ZSTD_frameHeaderSize, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 %42
  store i32* %44, i32** %9, align 8
  %45 = load i64, i64* @ZSTD_frameHeaderSize, align 8
  %46 = load i64, i64* %10, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %41, %80
  %49 = load i32*, i32** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @ZSTD_getcBlockSize(i32* %49, i64 %50, i32* %13)
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = call i64 @ZSTD_isError(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i64*, i64** %7, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %56, i64* %57, i64 %58)
  br label %102

60:                                               ; preds = %48
  %61 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 %61
  store i32* %63, i32** %9, align 8
  %64 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %65 = load i64, i64* %10, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load i64*, i64** %7, align 8
  %72 = load i64*, i64** %8, align 8
  %73 = load i32, i32* @srcSize_wrong, align 4
  %74 = call i64 @ERROR(i32 %73)
  %75 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %71, i64* %72, i64 %74)
  br label %102

76:                                               ; preds = %60
  %77 = load i64, i64* %14, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %89

80:                                               ; preds = %76
  %81 = load i64, i64* %14, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 %81
  store i32* %83, i32** %9, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* %10, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %48

89:                                               ; preds = %79
  %90 = load i32*, i32** %9, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = bitcast i8* %91 to i32*
  %93 = ptrtoint i32* %90 to i64
  %94 = ptrtoint i32* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 4
  %97 = load i64*, i64** %7, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* @BLOCKSIZE, align 8
  %100 = mul i64 %98, %99
  %101 = load i64*, i64** %8, align 8
  store i64 %100, i64* %101, align 8
  br label %102

102:                                              ; preds = %89, %70, %55, %35, %23
  ret void
}

declare dso_local i32 @ZSTD_errorFrameSizeInfoLegacy(i64*, i64*, i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @MEM_readLE32(i8*) #1

declare dso_local i64 @ZSTD_getcBlockSize(i32*, i64, i32*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

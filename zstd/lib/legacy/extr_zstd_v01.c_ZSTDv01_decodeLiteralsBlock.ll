; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v01.c_ZSTDv01_decodeLiteralsBlock.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v01.c_ZSTDv01_decodeLiteralsBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@ZSTD_blockHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@dstSize_tooSmall = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i32**, i64*, i8*, i64)* @ZSTDv01_decodeLiteralsBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDv01_decodeLiteralsBlock(i8* %0, i8* %1, i64 %2, i32** %3, i64* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_3__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32** %3, i32*** %12, align 8
  store i64* %4, i64** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %16, align 8
  %26 = load i32*, i32** %16, align 8
  store i32* %26, i32** %17, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %18, align 8
  %29 = load i32*, i32** %18, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %19, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i64 @ZSTDv01_getcBlockSize(i8* %32, i64 %33, %struct.TYPE_3__* %20)
  store i64 %34, i64* %21, align 8
  %35 = load i64, i64* %21, align 8
  %36 = call i64 @ZSTDv01_isError(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %7
  %39 = load i64, i64* %21, align 8
  store i64 %39, i64* %8, align 8
  br label %130

40:                                               ; preds = %7
  %41 = load i64, i64* %21, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %44 = sub i64 %42, %43
  %45 = icmp ugt i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @srcSize_wrong, align 4
  %48 = call i64 @ERROR(i32 %47)
  store i64 %48, i64* %8, align 8
  br label %130

49:                                               ; preds = %40
  %50 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 %50
  store i32* %52, i32** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %120 [
    i32 129, label %55
    i32 128, label %63
    i32 131, label %96
    i32 130, label %119
  ]

55:                                               ; preds = %49
  %56 = load i32*, i32** %17, align 8
  %57 = load i32**, i32*** %12, align 8
  store i32* %56, i32** %57, align 8
  %58 = load i64, i64* %21, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 %58
  store i32* %60, i32** %17, align 8
  %61 = load i64, i64* %21, align 8
  %62 = load i64*, i64** %13, align 8
  store i64 %61, i64* %62, align 8
  br label %123

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %22, align 8
  %66 = load i64, i64* %22, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @dstSize_tooSmall, align 4
  %71 = call i64 @ERROR(i32 %70)
  store i64 %71, i64* %8, align 8
  br label %130

72:                                               ; preds = %63
  %73 = load i64, i64* %15, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @srcSize_wrong, align 4
  %77 = call i64 @ERROR(i32 %76)
  store i64 %77, i64* %8, align 8
  br label %130

78:                                               ; preds = %72
  %79 = load i32*, i32** %19, align 8
  %80 = load i64, i64* %22, align 8
  %81 = sub i64 0, %80
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32*, i32** %17, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %22, align 8
  %86 = call i32 @memset(i32* %82, i32 %84, i64 %85)
  %87 = load i32*, i32** %19, align 8
  %88 = load i64, i64* %22, align 8
  %89 = sub i64 0, %88
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32**, i32*** %12, align 8
  store i32* %90, i32** %91, align 8
  %92 = load i64, i64* %22, align 8
  %93 = load i64*, i64** %13, align 8
  store i64 %92, i64* %93, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %17, align 8
  br label %123

96:                                               ; preds = %49
  %97 = load i8*, i8** %9, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = load i64, i64* %21, align 8
  %102 = call i64 @ZSTD_decompressLiterals(i8* %97, i8* %98, i64 %99, i32* %100, i64 %101)
  store i64 %102, i64* %23, align 8
  %103 = load i64, i64* %23, align 8
  %104 = call i64 @ZSTDv01_isError(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i64, i64* %23, align 8
  store i64 %107, i64* %8, align 8
  br label %130

108:                                              ; preds = %96
  %109 = load i32*, i32** %19, align 8
  %110 = load i64, i64* %23, align 8
  %111 = sub i64 0, %110
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32**, i32*** %12, align 8
  store i32* %112, i32** %113, align 8
  %114 = load i64, i64* %23, align 8
  %115 = load i64*, i64** %13, align 8
  store i64 %114, i64* %115, align 8
  %116 = load i64, i64* %21, align 8
  %117 = load i32*, i32** %17, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 %116
  store i32* %118, i32** %17, align 8
  br label %123

119:                                              ; preds = %49
  br label %120

120:                                              ; preds = %49, %119
  %121 = load i32, i32* @GENERIC, align 4
  %122 = call i64 @ERROR(i32 %121)
  store i64 %122, i64* %8, align 8
  br label %130

123:                                              ; preds = %108, %78, %55
  %124 = load i32*, i32** %17, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = ptrtoint i32* %124 to i64
  %127 = ptrtoint i32* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 4
  store i64 %129, i64* %8, align 8
  br label %130

130:                                              ; preds = %123, %120, %106, %75, %69, %46, %38
  %131 = load i64, i64* %8, align 8
  ret i64 %131
}

declare dso_local i64 @ZSTDv01_getcBlockSize(i8*, i64, %struct.TYPE_3__*) #1

declare dso_local i64 @ZSTDv01_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @ZSTD_decompressLiterals(i8*, i8*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

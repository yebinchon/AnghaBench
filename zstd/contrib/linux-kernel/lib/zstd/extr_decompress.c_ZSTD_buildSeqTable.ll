; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_decompress.c_ZSTD_buildSeqTable.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_decompress.c_ZSTD_buildSeqTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srcSize_wrong = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@MaxSeq = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32**, i32, i32, i32, i8*, i64, i32*, i32, i8*, i64)* @ZSTD_buildSeqTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_buildSeqTable(i32* %0, i32** %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6, i32* %7, i32 %8, i8* %9, i64 %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i32* %0, i32** %13, align 8
  store i32** %1, i32*** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i8* %5, i8** %18, align 8
  store i64 %6, i64* %19, align 8
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store i64 %10, i64* %23, align 8
  %29 = load i32*, i32** %20, align 8
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** %24, align 8
  %31 = load i32, i32* %15, align 4
  switch i32 %31, label %66 [
    i32 128, label %32
    i32 131, label %55
    i32 129, label %59
    i32 130, label %67
  ]

32:                                               ; preds = %11
  %33 = load i64, i64* %19, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @srcSize_wrong, align 4
  %37 = call i64 @ERROR(i32 %36)
  store i64 %37, i64* %12, align 8
  br label %123

38:                                               ; preds = %32
  %39 = load i8*, i8** %18, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @corruption_detected, align 4
  %46 = call i64 @ERROR(i32 %45)
  store i64 %46, i64* %12, align 8
  br label %123

47:                                               ; preds = %38
  %48 = load i32*, i32** %13, align 8
  %49 = load i8*, i8** %18, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @FSE_buildDTable_rle(i32* %48, i32 %51)
  %53 = load i32*, i32** %13, align 8
  %54 = load i32**, i32*** %14, align 8
  store i32* %53, i32** %54, align 8
  store i64 1, i64* %12, align 8
  br label %123

55:                                               ; preds = %11
  %56 = load i8*, i8** %24, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = load i32**, i32*** %14, align 8
  store i32* %57, i32** %58, align 8
  store i64 0, i64* %12, align 8
  br label %123

59:                                               ; preds = %11
  %60 = load i32, i32* %21, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @corruption_detected, align 4
  %64 = call i64 @ERROR(i32 %63)
  store i64 %64, i64* %12, align 8
  br label %123

65:                                               ; preds = %59
  store i64 0, i64* %12, align 8
  br label %123

66:                                               ; preds = %11
  br label %67

67:                                               ; preds = %11, %66
  %68 = load i8*, i8** %22, align 8
  %69 = bitcast i8* %68 to i32*
  store i32* %69, i32** %26, align 8
  %70 = load i32, i32* @MaxSeq, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @ALIGN(i32 %74, i32 4)
  %76 = ashr i32 %75, 2
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %27, align 8
  %78 = load i64, i64* %27, align 8
  %79 = shl i64 %78, 2
  %80 = load i64, i64* %23, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %67
  %83 = load i32, i32* @GENERIC, align 4
  %84 = call i64 @ERROR(i32 %83)
  store i64 %84, i64* %12, align 8
  br label %123

85:                                               ; preds = %67
  %86 = load i8*, i8** %22, align 8
  %87 = bitcast i8* %86 to i32*
  %88 = load i64, i64* %27, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = bitcast i32* %89 to i8*
  store i8* %90, i8** %22, align 8
  %91 = load i64, i64* %27, align 8
  %92 = shl i64 %91, 2
  %93 = load i64, i64* %23, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %23, align 8
  %95 = load i32*, i32** %26, align 8
  %96 = load i8*, i8** %18, align 8
  %97 = load i64, i64* %19, align 8
  %98 = call i64 @FSE_readNCount(i32* %95, i32* %16, i32* %25, i8* %96, i64 %97)
  store i64 %98, i64* %28, align 8
  %99 = load i64, i64* %28, align 8
  %100 = call i32 @FSE_isError(i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %85
  %103 = load i32, i32* @corruption_detected, align 4
  %104 = call i64 @ERROR(i32 %103)
  store i64 %104, i64* %12, align 8
  br label %123

105:                                              ; preds = %85
  %106 = load i32, i32* %25, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* @corruption_detected, align 4
  %111 = call i64 @ERROR(i32 %110)
  store i64 %111, i64* %12, align 8
  br label %123

112:                                              ; preds = %105
  %113 = load i32*, i32** %13, align 8
  %114 = load i32*, i32** %26, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %25, align 4
  %117 = load i8*, i8** %22, align 8
  %118 = load i64, i64* %23, align 8
  %119 = call i32 @FSE_buildDTable_wksp(i32* %113, i32* %114, i32 %115, i32 %116, i8* %117, i64 %118)
  %120 = load i32*, i32** %13, align 8
  %121 = load i32**, i32*** %14, align 8
  store i32* %120, i32** %121, align 8
  %122 = load i64, i64* %28, align 8
  store i64 %122, i64* %12, align 8
  br label %123

123:                                              ; preds = %112, %109, %102, %82, %65, %62, %55, %47, %44, %35
  %124 = load i64, i64* %12, align 8
  ret i64 %124
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @FSE_buildDTable_rle(i32*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @FSE_readNCount(i32*, i32*, i32*, i8*, i64) #1

declare dso_local i32 @FSE_isError(i64) #1

declare dso_local i32 @FSE_buildDTable_wksp(i32*, i32*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_buildSeqTable.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_buildSeqTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srcSize_wrong = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@MaxSeq = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32**, i32, i64, i64, i8*, i64, i64*, i64*, i32*, i64, i32, i32)* @ZSTD_buildSeqTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_buildSeqTable(i32* %0, i32** %1, i32 %2, i64 %3, i64 %4, i8* %5, i64 %6, i64* %7, i64* %8, i32* %9, i64 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  store i32* %0, i32** %15, align 8
  store i32** %1, i32*** %16, align 8
  store i32 %2, i32* %17, align 4
  store i64 %3, i64* %18, align 8
  store i64 %4, i64* %19, align 8
  store i8* %5, i8** %20, align 8
  store i64 %6, i64* %21, align 8
  store i64* %7, i64** %22, align 8
  store i64* %8, i64** %23, align 8
  store i32* %9, i32** %24, align 8
  store i64 %10, i64* %25, align 8
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %38 = load i32, i32* %17, align 4
  switch i32 %38, label %133 [
    i32 128, label %39
    i32 131, label %72
    i32 129, label %75
    i32 130, label %99
  ]

39:                                               ; preds = %13
  %40 = load i64, i64* %21, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @srcSize_wrong, align 4
  %44 = call i64 @ERROR(i32 %43)
  store i64 %44, i64* %14, align 8
  br label %137

45:                                               ; preds = %39
  %46 = load i8*, i8** %20, align 8
  %47 = bitcast i8* %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %18, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @corruption_detected, align 4
  %53 = call i64 @ERROR(i32 %52)
  store i64 %53, i64* %14, align 8
  br label %137

54:                                               ; preds = %45
  %55 = load i8*, i8** %20, align 8
  %56 = bitcast i8* %55 to i64*
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %28, align 8
  %58 = load i64*, i64** %22, align 8
  %59 = load i64, i64* %28, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %29, align 8
  %62 = load i64*, i64** %23, align 8
  %63 = load i64, i64* %28, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %30, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i64, i64* %29, align 8
  %68 = load i64, i64* %30, align 8
  %69 = call i32 @ZSTD_buildSeqTable_rle(i32* %66, i64 %67, i64 %68)
  %70 = load i32*, i32** %15, align 8
  %71 = load i32**, i32*** %16, align 8
  store i32* %70, i32** %71, align 8
  store i64 1, i64* %14, align 8
  br label %137

72:                                               ; preds = %13
  %73 = load i32*, i32** %24, align 8
  %74 = load i32**, i32*** %16, align 8
  store i32* %73, i32** %74, align 8
  store i64 0, i64* %14, align 8
  br label %137

75:                                               ; preds = %13
  %76 = load i64, i64* %25, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @corruption_detected, align 4
  %80 = call i64 @ERROR(i32 %79)
  store i64 %80, i64* %14, align 8
  br label %137

81:                                               ; preds = %75
  %82 = load i32, i32* %26, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load i32, i32* %27, align 4
  %86 = icmp sgt i32 %85, 24
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load i32**, i32*** %16, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = bitcast i32* %89 to i8*
  store i8* %90, i8** %31, align 8
  %91 = load i64, i64* %19, align 8
  %92 = call i32 @SEQSYMBOL_TABLE_SIZE(i64 %91)
  %93 = sext i32 %92 to i64
  %94 = mul i64 4, %93
  store i64 %94, i64* %32, align 8
  %95 = load i8*, i8** %31, align 8
  %96 = load i64, i64* %32, align 8
  %97 = call i32 @PREFETCH_AREA(i8* %95, i64 %96)
  br label %98

98:                                               ; preds = %87, %84, %81
  store i64 0, i64* %14, align 8
  br label %137

99:                                               ; preds = %13
  %100 = load i32, i32* @MaxSeq, align 4
  %101 = add nsw i32 %100, 1
  %102 = zext i32 %101 to i64
  %103 = call i8* @llvm.stacksave()
  store i8* %103, i8** %34, align 8
  %104 = alloca i32, i64 %102, align 16
  store i64 %102, i64* %35, align 8
  %105 = load i8*, i8** %20, align 8
  %106 = load i64, i64* %21, align 8
  %107 = call i64 @FSE_readNCount(i32* %104, i64* %18, i64* %33, i8* %105, i64 %106)
  store i64 %107, i64* %36, align 8
  %108 = load i64, i64* %36, align 8
  %109 = call i32 @FSE_isError(i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %99
  %112 = load i32, i32* @corruption_detected, align 4
  %113 = call i64 @ERROR(i32 %112)
  store i64 %113, i64* %14, align 8
  store i32 1, i32* %37, align 4
  br label %131

114:                                              ; preds = %99
  %115 = load i64, i64* %33, align 8
  %116 = load i64, i64* %19, align 8
  %117 = icmp ugt i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* @corruption_detected, align 4
  %120 = call i64 @ERROR(i32 %119)
  store i64 %120, i64* %14, align 8
  store i32 1, i32* %37, align 4
  br label %131

121:                                              ; preds = %114
  %122 = load i32*, i32** %15, align 8
  %123 = load i64, i64* %18, align 8
  %124 = load i64*, i64** %22, align 8
  %125 = load i64*, i64** %23, align 8
  %126 = load i64, i64* %33, align 8
  %127 = call i32 @ZSTD_buildFSETable(i32* %122, i32* %104, i64 %123, i64* %124, i64* %125, i64 %126)
  %128 = load i32*, i32** %15, align 8
  %129 = load i32**, i32*** %16, align 8
  store i32* %128, i32** %129, align 8
  %130 = load i64, i64* %36, align 8
  store i64 %130, i64* %14, align 8
  store i32 1, i32* %37, align 4
  br label %131

131:                                              ; preds = %121, %118, %111
  %132 = load i8*, i8** %34, align 8
  call void @llvm.stackrestore(i8* %132)
  br label %137

133:                                              ; preds = %13
  %134 = call i32 @assert(i32 0)
  %135 = load i32, i32* @GENERIC, align 4
  %136 = call i64 @ERROR(i32 %135)
  store i64 %136, i64* %14, align 8
  br label %137

137:                                              ; preds = %133, %131, %98, %78, %72, %54, %51, %42
  %138 = load i64, i64* %14, align 8
  ret i64 %138
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @ZSTD_buildSeqTable_rle(i32*, i64, i64) #1

declare dso_local i32 @SEQSYMBOL_TABLE_SIZE(i64) #1

declare dso_local i32 @PREFETCH_AREA(i8*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @FSE_readNCount(i32*, i64*, i64*, i8*, i64) #1

declare dso_local i32 @FSE_isError(i64) #1

declare dso_local i32 @ZSTD_buildFSETable(i32*, i32*, i64, i64*, i64*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_findFrameSizeInfoLegacy.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_findFrameSizeInfoLegacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ZSTDv07_frameHeaderSize_min = common dso_local global i64 0, align 8
@ZSTDv07_blockHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTDv07_MAGICNUMBER = common dso_local global i64 0, align 8
@prefix_unknown = common dso_local global i32 0, align 4
@bt_end = common dso_local global i64 0, align 8
@ZSTDv07_BLOCKSIZE_ABSOLUTEMAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ZSTDv07_findFrameSizeInfoLegacy(i8* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_3__, align 8
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
  %19 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %20 = load i64, i64* @ZSTDv07_blockHeaderSize, align 8
  %21 = add i64 %19, %20
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i64*, i64** %7, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load i32, i32* @srcSize_wrong, align 4
  %27 = call i64 @ERROR(i32 %26)
  %28 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %24, i64* %25, i64 %27)
  br label %127

29:                                               ; preds = %4
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @ZSTDv07_frameHeaderSize(i8* %30, i64 %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i64 @ZSTDv07_isError(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i64*, i64** %7, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %37, i64* %38, i64 %39)
  br label %127

41:                                               ; preds = %29
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @MEM_readLE32(i8* %42)
  %44 = load i64, i64* @ZSTDv07_MAGICNUMBER, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i64*, i64** %7, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = load i32, i32* @prefix_unknown, align 4
  %50 = call i64 @ERROR(i32 %49)
  %51 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %47, i64* %48, i64 %50)
  br label %127

52:                                               ; preds = %41
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @ZSTDv07_blockHeaderSize, align 8
  %56 = add i64 %54, %55
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i64*, i64** %7, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = load i32, i32* @srcSize_wrong, align 4
  %62 = call i64 @ERROR(i32 %61)
  %63 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %59, i64* %60, i64 %62)
  br label %127

64:                                               ; preds = %52
  %65 = load i64, i64* %12, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 %65
  store i32* %67, i32** %9, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %10, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %64, %105
  %72 = load i32*, i32** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @ZSTDv07_getcBlockSize(i32* %72, i64 %73, %struct.TYPE_3__* %13)
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i64 @ZSTDv07_isError(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i64*, i64** %7, align 8
  %80 = load i64*, i64** %8, align 8
  %81 = load i64, i64* %14, align 8
  %82 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %79, i64* %80, i64 %81)
  br label %127

83:                                               ; preds = %71
  %84 = load i64, i64* @ZSTDv07_blockHeaderSize, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 %84
  store i32* %86, i32** %9, align 8
  %87 = load i64, i64* @ZSTDv07_blockHeaderSize, align 8
  %88 = load i64, i64* %10, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @bt_end, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %114

95:                                               ; preds = %83
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* %10, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i64*, i64** %7, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = load i32, i32* @srcSize_wrong, align 4
  %103 = call i64 @ERROR(i32 %102)
  %104 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %100, i64* %101, i64 %103)
  br label %127

105:                                              ; preds = %95
  %106 = load i64, i64* %14, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 %106
  store i32* %108, i32** %9, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %10, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %10, align 8
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %11, align 8
  br label %71

114:                                              ; preds = %94
  %115 = load i32*, i32** %9, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = bitcast i8* %116 to i32*
  %118 = ptrtoint i32* %115 to i64
  %119 = ptrtoint i32* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 4
  %122 = load i64*, i64** %7, align 8
  store i64 %121, i64* %122, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* @ZSTDv07_BLOCKSIZE_ABSOLUTEMAX, align 8
  %125 = mul i64 %123, %124
  %126 = load i64*, i64** %8, align 8
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %114, %99, %78, %58, %46, %36, %23
  ret void
}

declare dso_local i32 @ZSTD_errorFrameSizeInfoLegacy(i64*, i64*, i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTDv07_frameHeaderSize(i8*, i64) #1

declare dso_local i64 @ZSTDv07_isError(i64) #1

declare dso_local i64 @MEM_readLE32(i8*) #1

declare dso_local i64 @ZSTDv07_getcBlockSize(i32*, i64, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

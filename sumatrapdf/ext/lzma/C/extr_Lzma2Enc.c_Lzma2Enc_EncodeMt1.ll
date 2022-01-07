; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Lzma2Enc.c_Lzma2Enc_EncodeMt1.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Lzma2Enc.c_Lzma2Enc_EncodeMt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i32*, i32)* }

@SZ_OK = common dso_local global i64 0, align 8
@LZMA2_CHUNK_SIZE_COMPRESSED_MAX = common dso_local global i64 0, align 8
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@LZMA2_KEEP_WINDOW_SIZE = common dso_local global i32 0, align 4
@SZ_ERROR_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_11__*, i32*, i32*)* @Lzma2Enc_EncodeMt1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Lzma2Enc_EncodeMt1(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, %struct.TYPE_11__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load i64, i64* @SZ_OK, align 8
  store i64 %16, i64* %13, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %5
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @LZMA2_CHUNK_SIZE_COMPRESSED_MAX, align 8
  %26 = call i64 @IAlloc_Alloc(i32 %24, i64 %25)
  %27 = inttoptr i64 %26 to i32*
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %35, i64* %6, align 8
  br label %107

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %5
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  %41 = call i32 @Lzma2EncInt_Init(%struct.TYPE_12__* %38, i32* %40)
  %42 = call i32 @RINOK(i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* @LZMA2_KEEP_WINDOW_SIZE, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @LzmaEnc_PrepareForLzma2(i32 %45, i32* %46, i32 %47, i32 %50, i32 %53)
  %55 = call i32 @RINOK(i32 %54)
  br label %56

56:                                               ; preds = %86, %37
  %57 = load i64, i64* @LZMA2_CHUNK_SIZE_COMPRESSED_MAX, align 8
  store i64 %57, i64* %14, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = call i64 @Lzma2EncInt_EncodeSubblock(%struct.TYPE_12__* %58, i32* %61, i64* %14, %struct.TYPE_11__* %62)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @SZ_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %87

68:                                               ; preds = %56
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %12, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %12, align 8
  %77 = call i64 @Progress(i32* %72, i32 %75, i64 %76)
  store i64 %77, i64* %13, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* @SZ_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %87

82:                                               ; preds = %68
  %83 = load i64, i64* %14, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %87

86:                                               ; preds = %82
  br label %56

87:                                               ; preds = %85, %81, %67
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @LzmaEnc_Finish(i32 %90)
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* @SZ_OK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %87
  store i32 0, i32* %15, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_11__*, i32*, i32)*, i32 (%struct.TYPE_11__*, i32*, i32)** %97, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %100 = call i32 %98(%struct.TYPE_11__* %99, i32* %15, i32 1)
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i64, i64* @SZ_ERROR_WRITE, align 8
  store i64 %103, i64* %6, align 8
  br label %107

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %87
  %106 = load i64, i64* %13, align 8
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %105, %102, %34
  %108 = load i64, i64* %6, align 8
  ret i64 %108
}

declare dso_local i64 @IAlloc_Alloc(i32, i64) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @Lzma2EncInt_Init(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @LzmaEnc_PrepareForLzma2(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @Lzma2EncInt_EncodeSubblock(%struct.TYPE_12__*, i32*, i64*, %struct.TYPE_11__*) #1

declare dso_local i64 @Progress(i32*, i32, i64) #1

declare dso_local i32 @LzmaEnc_Finish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

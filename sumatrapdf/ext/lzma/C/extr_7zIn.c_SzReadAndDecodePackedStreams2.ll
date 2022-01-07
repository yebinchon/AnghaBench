; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_7zIn.c_SzReadAndDecodePackedStreams2.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_7zIn.c_SzReadAndDecodePackedStreams2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }

@SZ_ERROR_ARCHIVE = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@SZ_ERROR_CRC = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_12__*, i64, %struct.TYPE_11__*, i64**, i32**, i32**, i32*)* @SzReadAndDecodePackedStreams2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SzReadAndDecodePackedStreams2(i32* %0, i32* %1, %struct.TYPE_12__* %2, i64 %3, %struct.TYPE_11__* %4, i64** %5, i32** %6, i32** %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i64**, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_10__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %13, align 8
  store i64 %3, i64* %14, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %15, align 8
  store i64** %5, i64*** %16, align 8
  store i32** %6, i32*** %17, align 8
  store i32** %7, i32*** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %20, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %27 = load i64**, i64*** %16, align 8
  %28 = load i32**, i32*** %17, align 8
  %29 = load i32**, i32*** %18, align 8
  %30 = load i32*, i32** %19, align 8
  %31 = load i32*, i32** %19, align 8
  %32 = call i32 @SzReadStreamsInfo(i32* %25, i64* %21, %struct.TYPE_11__* %26, i32* %20, i64** %27, i32** %28, i32** %29, i32* %30, i32* %31)
  %33 = call i32 @RINOK(i32 %32)
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* %21, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %21, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %9
  %42 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %42, i32* %10, align 4
  br label %94

43:                                               ; preds = %9
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %22, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %48 = call i64 @SzFolder_GetUnpackSize(%struct.TYPE_10__* %47)
  store i64 %48, i64* %23, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i64, i64* %21, align 8
  %51 = call i32 @LookInStream_SeekTo(i32* %49, i64 %50)
  %52 = call i32 @RINOK(i32 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %54 = load i64, i64* %23, align 8
  %55 = load i32*, i32** %19, align 8
  %56 = call i32 @Buf_Create(%struct.TYPE_12__* %53, i64 %54, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %43
  %59 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %59, i32* %10, align 4
  br label %94

60:                                               ; preds = %43
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i64, i64* %21, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %23, align 8
  %71 = load i32*, i32** %19, align 8
  %72 = call i32 @SzFolder_Decode(%struct.TYPE_10__* %61, i32 %64, i32* %65, i64 %66, i32 %69, i64 %70, i32* %71)
  store i32 %72, i32* %24, align 4
  %73 = load i32, i32* %24, align 4
  %74 = call i32 @RINOK(i32 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %60
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %23, align 8
  %84 = call i64 @CrcCalc(i32 %82, i64 %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @SZ_ERROR_CRC, align 4
  store i32 %90, i32* %10, align 4
  br label %94

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %60
  %93 = load i32, i32* @SZ_OK, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %92, %89, %58, %41
  %95 = load i32, i32* %10, align 4
  ret i32 %95
}

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @SzReadStreamsInfo(i32*, i64*, %struct.TYPE_11__*, i32*, i64**, i32**, i32**, i32*, i32*) #1

declare dso_local i64 @SzFolder_GetUnpackSize(%struct.TYPE_10__*) #1

declare dso_local i32 @LookInStream_SeekTo(i32*, i64) #1

declare dso_local i32 @Buf_Create(%struct.TYPE_12__*, i64, i32*) #1

declare dso_local i32 @SzFolder_Decode(%struct.TYPE_10__*, i32, i32*, i64, i32, i64, i32*) #1

declare dso_local i64 @CrcCalc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

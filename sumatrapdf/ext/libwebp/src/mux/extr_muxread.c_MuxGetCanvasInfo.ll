; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxread.c_MuxGetCanvasInfo.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxread.c_MuxGetCanvasInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i64, i64 }

@IDX_VP8X = common dso_local global i32 0, align 4
@WEBP_MUX_OK = common dso_local global i64 0, align 8
@VP8X_CHUNK_SIZE = common dso_local global i64 0, align 8
@WEBP_MUX_BAD_DATA = common dso_local global i64 0, align 8
@ALPHA_FLAG = common dso_local global i32 0, align 4
@MAX_IMAGE_AREA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i32*, i32*, i32*)* @MuxGetCanvasInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MuxGetCanvasInfo(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = load i32, i32* @IDX_VP8X, align 4
  %21 = call i64 @MuxGet(%struct.TYPE_9__* %19, i32 %20, i32 1, %struct.TYPE_10__* %13)
  %22 = load i64, i64* @WEBP_MUX_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VP8X_CHUNK_SIZE, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* @WEBP_MUX_BAD_DATA, align 8
  store i64 %30, i64* %5, align 8
  br label %119

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 0
  %35 = call i32 @GetLE32(i64 %34)
  store i32 %35, i32* %12, align 4
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 4
  %39 = call i32 @GetLE24(i64 %38)
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 7
  %44 = call i32 @GetLE24(i64 %43)
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %91

46:                                               ; preds = %4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %14, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %10, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %46
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = call i64 @ValidateForSingleImage(%struct.TYPE_9__* %62)
  %64 = load i64, i64* @WEBP_MUX_OK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %68 = icmp ne %struct.TYPE_8__* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %10, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %66, %61, %58, %46
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %79 = icmp ne %struct.TYPE_8__* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @ALPHA_FLAG, align 4
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %85, %80
  br label %90

90:                                               ; preds = %89, %77
  br label %91

91:                                               ; preds = %90, %31
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* @MAX_IMAGE_AREA, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i64, i64* @WEBP_MUX_BAD_DATA, align 8
  store i64 %98, i64* %5, align 8
  br label %119

99:                                               ; preds = %91
  %100 = load i32*, i32** %7, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = load i32*, i32** %7, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32*, i32** %8, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = load i32*, i32** %8, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32*, i32** %9, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %12, align 4
  %116 = load i32*, i32** %9, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i64, i64* @WEBP_MUX_OK, align 8
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %117, %97, %29
  %120 = load i64, i64* %5, align 8
  ret i64 %120
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MuxGet(%struct.TYPE_9__*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @GetLE32(i64) #1

declare dso_local i32 @GetLE24(i64) #1

declare dso_local i64 @ValidateForSingleImage(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

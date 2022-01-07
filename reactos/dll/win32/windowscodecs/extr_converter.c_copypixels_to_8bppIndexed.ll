; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_converter.c_copypixels_to_8bppIndexed.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_converter.c_copypixels_to_8bppIndexed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FormatConverter = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@format_8bppIndexed = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@WINCODEC_ERR_WRONGSTATE = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.FormatConverter*, %struct.TYPE_5__*, i32, i32, i32*, i32)* @copypixels_to_8bppIndexed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copypixels_to_8bppIndexed(%struct.FormatConverter* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.FormatConverter*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [256 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store %struct.FormatConverter* %0, %struct.FormatConverter** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @format_8bppIndexed, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %6
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.FormatConverter*, %struct.FormatConverter** %8, align 8
  %33 = getelementptr inbounds %struct.FormatConverter, %struct.FormatConverter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = call i64 @IWICBitmapSource_CopyPixels(i32 %34, %struct.TYPE_5__* %35, i32 %36, i32 %37, i32* %38)
  store i64 %39, i64* %7, align 8
  br label %149

40:                                               ; preds = %28
  %41 = load i64, i64* @S_OK, align 8
  store i64 %41, i64* %7, align 8
  br label %149

42:                                               ; preds = %6
  %43 = load %struct.FormatConverter*, %struct.FormatConverter** %8, align 8
  %44 = getelementptr inbounds %struct.FormatConverter, %struct.FormatConverter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i64, i64* @WINCODEC_ERR_WRONGSTATE, align 8
  store i64 %48, i64* %7, align 8
  br label %149

49:                                               ; preds = %42
  %50 = load %struct.FormatConverter*, %struct.FormatConverter** %8, align 8
  %51 = getelementptr inbounds %struct.FormatConverter, %struct.FormatConverter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %54 = call i64 @IWICPalette_GetColors(i32 %52, i32 256, i32* %53, i32* %19)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i64, i64* %14, align 8
  store i64 %59, i64* %7, align 8
  br label %149

60:                                               ; preds = %49
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 3, %63
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  store i32 %69, i32* %18, align 4
  %70 = call i32 (...) @GetProcessHeap()
  %71 = load i32, i32* %18, align 4
  %72 = call i32* @HeapAlloc(i32 %70, i32 0, i32 %71)
  store i32* %72, i32** %15, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %60
  %76 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %76, i64* %7, align 8
  br label %149

77:                                               ; preds = %60
  %78 = load %struct.FormatConverter*, %struct.FormatConverter** %8, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i64 @copypixels_to_24bppBGR(%struct.FormatConverter* %78, %struct.TYPE_5__* %79, i32 %80, i32 %81, i32* %82, i32 %83)
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i64 @SUCCEEDED(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %144

88:                                               ; preds = %77
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %90 = icmp ne %struct.TYPE_5__* %89, null
  br i1 %90, label %91, label %144

91:                                               ; preds = %88
  %92 = load i32*, i32** %15, align 8
  store i32* %92, i32** %22, align 8
  %93 = load i32*, i32** %12, align 8
  store i32* %93, i32** %23, align 8
  store i64 0, i64* %21, align 8
  br label %94

94:                                               ; preds = %140, %91
  %95 = load i64, i64* %21, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %95, %99
  br i1 %100, label %101, label %143

101:                                              ; preds = %94
  %102 = load i32*, i32** %22, align 8
  store i32* %102, i32** %24, align 8
  store i64 0, i64* %20, align 8
  br label %103

103:                                              ; preds = %128, %101
  %104 = load i64, i64* %20, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %104, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %103
  %111 = load i32*, i32** %24, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %24, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %24, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %121 = load i32, i32* %19, align 4
  %122 = call i32 @rgb_to_palette_index(i32 %113, i32 %116, i32 %119, i32* %120, i32 %121)
  %123 = load i32*, i32** %23, align 8
  %124 = load i64, i64* %20, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 %122, i32* %125, align 4
  %126 = load i32*, i32** %24, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  store i32* %127, i32** %24, align 8
  br label %128

128:                                              ; preds = %110
  %129 = load i64, i64* %20, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %20, align 8
  br label %103

131:                                              ; preds = %103
  %132 = load i32, i32* %17, align 4
  %133 = load i32*, i32** %22, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %22, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32*, i32** %23, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %23, align 8
  br label %140

140:                                              ; preds = %131
  %141 = load i64, i64* %21, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %21, align 8
  br label %94

143:                                              ; preds = %94
  br label %144

144:                                              ; preds = %143, %88, %77
  %145 = call i32 (...) @GetProcessHeap()
  %146 = load i32*, i32** %15, align 8
  %147 = call i32 @HeapFree(i32 %145, i32 0, i32* %146)
  %148 = load i64, i64* %14, align 8
  store i64 %148, i64* %7, align 8
  br label %149

149:                                              ; preds = %144, %75, %58, %47, %40, %31
  %150 = load i64, i64* %7, align 8
  ret i64 %150
}

declare dso_local i64 @IWICBitmapSource_CopyPixels(i32, %struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i64 @IWICPalette_GetColors(i32, i32, i32*, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @copypixels_to_24bppBGR(%struct.FormatConverter*, %struct.TYPE_5__*, i32, i32, i32*, i32) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @rgb_to_palette_index(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

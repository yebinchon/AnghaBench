; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_converter.c_copypixels_to_32bppPRGBA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_converter.c_copypixels_to_32bppPRGBA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FormatConverter = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.FormatConverter*, %struct.TYPE_5__*, i32, i32, i32*, i32)* @copypixels_to_32bppPRGBA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copypixels_to_32bppPRGBA(%struct.FormatConverter* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.FormatConverter*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.FormatConverter* %0, %struct.FormatConverter** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  switch i32 %18, label %33 [
    i32 128, label %19
  ]

19:                                               ; preds = %6
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.FormatConverter*, %struct.FormatConverter** %8, align 8
  %24 = getelementptr inbounds %struct.FormatConverter, %struct.FormatConverter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @IWICBitmapSource_CopyPixels(i32 %25, %struct.TYPE_5__* %26, i32 %27, i32 %28, i32* %29)
  store i32 %30, i32* %7, align 4
  br label %157

31:                                               ; preds = %19
  %32 = load i32, i32* @S_OK, align 4
  store i32 %32, i32* %7, align 4
  br label %157

33:                                               ; preds = %6
  %34 = load %struct.FormatConverter*, %struct.FormatConverter** %8, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @copypixels_to_32bppRGBA(%struct.FormatConverter* %34, %struct.TYPE_5__* %35, i32 %36, i32 %37, i32* %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @SUCCEEDED(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %155

44:                                               ; preds = %33
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %155

47:                                               ; preds = %44
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %151, %47
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %154

54:                                               ; preds = %48
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %147, %54
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %150

61:                                               ; preds = %55
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %16, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %15, align 4
  %67 = mul nsw i32 4, %66
  %68 = add nsw i32 %65, %67
  %69 = add nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %62, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 255
  br i1 %74, label %75, label %146

75:                                               ; preds = %61
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %16, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %15, align 4
  %81 = mul nsw i32 4, %80
  %82 = add nsw i32 %79, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %76, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %17, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sdiv i32 %87, 255
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %16, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* %15, align 4
  %94 = mul nsw i32 4, %93
  %95 = add nsw i32 %92, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %89, i64 %96
  store i32 %88, i32* %97, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %16, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %15, align 4
  %103 = mul nsw i32 4, %102
  %104 = add nsw i32 %101, %103
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %98, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %17, align 4
  %110 = mul nsw i32 %108, %109
  %111 = sdiv i32 %110, 255
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %16, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %15, align 4
  %117 = mul nsw i32 4, %116
  %118 = add nsw i32 %115, %117
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %112, i64 %120
  store i32 %111, i32* %121, align 4
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %16, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %15, align 4
  %127 = mul nsw i32 4, %126
  %128 = add nsw i32 %125, %127
  %129 = add nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %122, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %17, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sdiv i32 %134, 255
  %136 = load i32*, i32** %12, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %16, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32, i32* %15, align 4
  %141 = mul nsw i32 4, %140
  %142 = add nsw i32 %139, %141
  %143 = add nsw i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %136, i64 %144
  store i32 %135, i32* %145, align 4
  br label %146

146:                                              ; preds = %75, %61
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %55

150:                                              ; preds = %55
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %16, align 4
  br label %48

154:                                              ; preds = %48
  br label %155

155:                                              ; preds = %154, %44, %33
  %156 = load i32, i32* %14, align 4
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %155, %31, %22
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i32 @IWICBitmapSource_CopyPixels(i32, %struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @copypixels_to_32bppRGBA(%struct.FormatConverter*, %struct.TYPE_5__*, i32, i32, i32*, i32) #1

declare dso_local i32 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

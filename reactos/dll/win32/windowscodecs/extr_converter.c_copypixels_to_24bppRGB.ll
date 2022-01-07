; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_converter.c_copypixels_to_24bppRGB.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_converter.c_copypixels_to_24bppRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FormatConverter = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unimplemented conversion path!\0A\00", align 1
@WINCODEC_ERR_UNSUPPORTEDOPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.FormatConverter*, %struct.TYPE_4__*, i32, i32, i8**, i32)* @copypixels_to_24bppRGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copypixels_to_24bppRGB(%struct.FormatConverter* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.FormatConverter*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8**, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i8**, align 8
  %25 = alloca [3 x i8*], align 16
  store %struct.FormatConverter* %0, %struct.FormatConverter** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  switch i32 %26, label %159 [
    i32 132, label %27
    i32 131, label %27
    i32 130, label %59
    i32 129, label %59
    i32 128, label %59
  ]

27:                                               ; preds = %6, %6
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = load %struct.FormatConverter*, %struct.FormatConverter** %8, align 8
  %32 = getelementptr inbounds %struct.FormatConverter, %struct.FormatConverter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i8**, i8*** %12, align 8
  %38 = call i32 @IWICBitmapSource_CopyPixels(i32 %33, %struct.TYPE_4__* %34, i32 %35, i32 %36, i8** %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @SUCCEEDED(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %30
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 132
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i8**, i8*** %12, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @reverse_bgr8(i32 3, i8** %46, i32 %49, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %45, %42, %30
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %7, align 4
  br label %162

57:                                               ; preds = %27
  %58 = load i32, i32* @S_OK, align 4
  store i32 %58, i32* %7, align 4
  br label %162

59:                                               ; preds = %6, %6, %6
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %62, label %157

62:                                               ; preds = %59
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 4, %65
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  store i32 %71, i32* %20, align 4
  %72 = call i32 (...) @GetProcessHeap()
  %73 = load i32, i32* %20, align 4
  %74 = call i8** @HeapAlloc(i32 %72, i32 0, i32 %73)
  store i8** %74, i8*** %18, align 8
  %75 = load i8**, i8*** %18, align 8
  %76 = icmp ne i8** %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %62
  %78 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %78, i32* %7, align 4
  br label %162

79:                                               ; preds = %62
  %80 = load %struct.FormatConverter*, %struct.FormatConverter** %8, align 8
  %81 = getelementptr inbounds %struct.FormatConverter, %struct.FormatConverter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i8**, i8*** %18, align 8
  %87 = call i32 @IWICBitmapSource_CopyPixels(i32 %82, %struct.TYPE_4__* %83, i32 %84, i32 %85, i8** %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @SUCCEEDED(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %152

91:                                               ; preds = %79
  %92 = load i8**, i8*** %18, align 8
  store i8** %92, i8*** %21, align 8
  %93 = load i8**, i8*** %12, align 8
  store i8** %93, i8*** %23, align 8
  store i32 0, i32* %17, align 4
  br label %94

94:                                               ; preds = %148, %91
  %95 = load i32, i32* %17, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %151

100:                                              ; preds = %94
  %101 = load i8**, i8*** %21, align 8
  store i8** %101, i8*** %22, align 8
  %102 = load i8**, i8*** %23, align 8
  store i8** %102, i8*** %24, align 8
  store i32 0, i32* %16, align 4
  br label %103

103:                                              ; preds = %136, %100
  %104 = load i32, i32* %16, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %139

109:                                              ; preds = %103
  %110 = load i8**, i8*** %22, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i32 1
  store i8** %111, i8*** %22, align 8
  %112 = load i8*, i8** %110, align 8
  %113 = getelementptr inbounds [3 x i8*], [3 x i8*]* %25, i64 0, i64 0
  store i8* %112, i8** %113, align 16
  %114 = load i8**, i8*** %22, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i32 1
  store i8** %115, i8*** %22, align 8
  %116 = load i8*, i8** %114, align 8
  %117 = getelementptr inbounds [3 x i8*], [3 x i8*]* %25, i64 0, i64 1
  store i8* %116, i8** %117, align 8
  %118 = load i8**, i8*** %22, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i32 1
  store i8** %119, i8*** %22, align 8
  %120 = load i8*, i8** %118, align 8
  %121 = getelementptr inbounds [3 x i8*], [3 x i8*]* %25, i64 0, i64 2
  store i8* %120, i8** %121, align 16
  %122 = load i8**, i8*** %22, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i32 1
  store i8** %123, i8*** %22, align 8
  %124 = getelementptr inbounds [3 x i8*], [3 x i8*]* %25, i64 0, i64 2
  %125 = load i8*, i8** %124, align 16
  %126 = load i8**, i8*** %24, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i32 1
  store i8** %127, i8*** %24, align 8
  store i8* %125, i8** %126, align 8
  %128 = getelementptr inbounds [3 x i8*], [3 x i8*]* %25, i64 0, i64 1
  %129 = load i8*, i8** %128, align 8
  %130 = load i8**, i8*** %24, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i32 1
  store i8** %131, i8*** %24, align 8
  store i8* %129, i8** %130, align 8
  %132 = getelementptr inbounds [3 x i8*], [3 x i8*]* %25, i64 0, i64 0
  %133 = load i8*, i8** %132, align 16
  %134 = load i8**, i8*** %24, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i32 1
  store i8** %135, i8*** %24, align 8
  store i8* %133, i8** %134, align 8
  br label %136

136:                                              ; preds = %109
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %16, align 4
  br label %103

139:                                              ; preds = %103
  %140 = load i32, i32* %19, align 4
  %141 = load i8**, i8*** %21, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8*, i8** %141, i64 %142
  store i8** %143, i8*** %21, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i8**, i8*** %23, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8*, i8** %145, i64 %146
  store i8** %147, i8*** %23, align 8
  br label %148

148:                                              ; preds = %139
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %17, align 4
  br label %94

151:                                              ; preds = %94
  br label %152

152:                                              ; preds = %151, %79
  %153 = call i32 (...) @GetProcessHeap()
  %154 = load i8**, i8*** %18, align 8
  %155 = call i32 @HeapFree(i32 %153, i32 0, i8** %154)
  %156 = load i32, i32* %15, align 4
  store i32 %156, i32* %7, align 4
  br label %162

157:                                              ; preds = %59
  %158 = load i32, i32* @S_OK, align 4
  store i32 %158, i32* %7, align 4
  br label %162

159:                                              ; preds = %6
  %160 = call i32 @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %161 = load i32, i32* @WINCODEC_ERR_UNSUPPORTEDOPERATION, align 4
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %159, %157, %152, %77, %57, %55
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @IWICBitmapSource_CopyPixels(i32, %struct.TYPE_4__*, i32, i32, i8**) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @reverse_bgr8(i32, i8**, i32, i32, i32) #1

declare dso_local i8** @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i8**) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

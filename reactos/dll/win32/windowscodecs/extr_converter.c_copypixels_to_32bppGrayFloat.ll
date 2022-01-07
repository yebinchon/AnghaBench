; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_converter.c_copypixels_to_32bppGrayFloat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_converter.c_copypixels_to_32bppGrayFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FormatConverter = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }

@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.FormatConverter*, %struct.TYPE_5__*, i32, i32, float*, i32)* @copypixels_to_32bppGrayFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copypixels_to_32bppGrayFloat(%struct.FormatConverter* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, float* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.FormatConverter*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float, align 4
  store %struct.FormatConverter* %0, %struct.FormatConverter** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store float* %4, float** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  switch i32 %20, label %35 [
    i32 131, label %21
    i32 130, label %21
    i32 128, label %21
    i32 129, label %21
  ]

21:                                               ; preds = %6, %6, %6, %6
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.FormatConverter*, %struct.FormatConverter** %8, align 8
  %26 = getelementptr inbounds %struct.FormatConverter, %struct.FormatConverter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load float*, float** %12, align 8
  %32 = call i32 @IWICBitmapSource_CopyPixels(i32 %27, %struct.TYPE_5__* %28, i32 %29, i32 %30, float* %31)
  store i32 %32, i32* %14, align 4
  br label %43

33:                                               ; preds = %21
  %34 = load i32, i32* @S_OK, align 4
  store i32 %34, i32* %7, align 4
  br label %103

35:                                               ; preds = %6
  %36 = load %struct.FormatConverter*, %struct.FormatConverter** %8, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load float*, float** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @copypixels_to_32bppBGRA(%struct.FormatConverter* %36, %struct.TYPE_5__* %37, i32 %38, i32 %39, float* %40, i32 %41)
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %35, %24
  %44 = load i32, i32* %14, align 4
  %45 = call i64 @SUCCEEDED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %101

47:                                               ; preds = %43
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %101

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 129
  br i1 %52, label %53, label %101

53:                                               ; preds = %50
  %54 = load float*, float** %12, align 8
  store float* %54, float** %17, align 8
  store i64 0, i64* %16, align 8
  br label %55

55:                                               ; preds = %97, %53
  %56 = load i64, i64* %16, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %100

61:                                               ; preds = %55
  %62 = load float*, float** %17, align 8
  store float* %62, float** %18, align 8
  store i64 0, i64* %15, align 8
  br label %63

63:                                               ; preds = %89, %61
  %64 = load i64, i64* %15, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %63
  %70 = load float*, float** %18, align 8
  %71 = getelementptr inbounds float, float* %70, i64 2
  %72 = load float, float* %71, align 4
  %73 = fmul float %72, 0x3FCB367A00000000
  %74 = load float*, float** %18, align 8
  %75 = getelementptr inbounds float, float* %74, i64 1
  %76 = load float, float* %75, align 4
  %77 = fmul float %76, 0x3FE6E2EB20000000
  %78 = fadd float %73, %77
  %79 = load float*, float** %18, align 8
  %80 = getelementptr inbounds float, float* %79, i64 0
  %81 = load float, float* %80, align 4
  %82 = fmul float %81, 0x3FB27BB300000000
  %83 = fadd float %78, %82
  %84 = fdiv float %83, 2.550000e+02
  store float %84, float* %19, align 4
  %85 = load float, float* %19, align 4
  %86 = load float*, float** %18, align 8
  store float %85, float* %86, align 4
  %87 = load float*, float** %18, align 8
  %88 = getelementptr inbounds float, float* %87, i64 4
  store float* %88, float** %18, align 8
  br label %89

89:                                               ; preds = %69
  %90 = load i64, i64* %15, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %15, align 8
  br label %63

92:                                               ; preds = %63
  %93 = load i32, i32* %10, align 4
  %94 = load float*, float** %17, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds float, float* %94, i64 %95
  store float* %96, float** %17, align 8
  br label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %16, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %16, align 8
  br label %55

100:                                              ; preds = %55
  br label %101

101:                                              ; preds = %100, %50, %47, %43
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %101, %33
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @IWICBitmapSource_CopyPixels(i32, %struct.TYPE_5__*, i32, i32, float*) #1

declare dso_local i32 @copypixels_to_32bppBGRA(%struct.FormatConverter*, %struct.TYPE_5__*, i32, i32, float*, i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

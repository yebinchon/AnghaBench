; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_turbojpeg.c_setCompDefaults.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_turbojpeg.c_setCompDefaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@JCS_GRAYSCALE = common dso_local global i32 0, align 4
@JCS_RGB = common dso_local global i32 0, align 4
@tjPixelSize = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@TJFLAG_ACCURATEDCT = common dso_local global i32 0, align 4
@JDCT_ISLOW = common dso_local global i32 0, align 4
@JDCT_FASTEST = common dso_local global i32 0, align 4
@TJSAMP_GRAY = common dso_local global i32 0, align 4
@JCS_YCbCr = common dso_local global i32 0, align 4
@tjMCUWidth = common dso_local global i32* null, align 8
@tjMCUHeight = common dso_local global i32* null, align 8
@JCS_EXT_BGR = common dso_local global i32 0, align 4
@JCS_EXT_BGRX = common dso_local global i32 0, align 4
@JCS_EXT_RGB = common dso_local global i32 0, align 4
@JCS_EXT_RGBX = common dso_local global i32 0, align 4
@JCS_EXT_XBGR = common dso_local global i32 0, align 4
@JCS_EXT_XRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jpeg_compress_struct*, i32, i32, i32, i32)* @setCompDefaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setCompDefaults(%struct.jpeg_compress_struct* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.jpeg_compress_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %21 [
    i32 133, label %13
    i32 132, label %17
    i32 136, label %17
    i32 130, label %17
    i32 134, label %17
    i32 128, label %17
    i32 129, label %17
    i32 131, label %17
    i32 135, label %17
    i32 137, label %17
    i32 138, label %17
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* @JCS_GRAYSCALE, align 4
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  br label %21

17:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %18 = load i32, i32* @JCS_RGB, align 4
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  store i32 132, i32* %7, align 4
  br label %21

21:                                               ; preds = %5, %17, %13
  %22 = load i32*, i32** @tjPixelSize, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %30 = call i32 @jpeg_set_defaults(%struct.jpeg_compress_struct* %29)
  %31 = load i32, i32* %9, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %21
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @jpeg_set_quality(%struct.jpeg_compress_struct* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp sge i32 %38, 96
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @TJFLAG_ACCURATEDCT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40, %33
  %46 = load i32, i32* @JDCT_ISLOW, align 4
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %53

49:                                               ; preds = %40
  %50 = load i32, i32* @JDCT_FASTEST, align 4
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %21
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @TJSAMP_GRAY, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %60 = load i32, i32* @JCS_GRAYSCALE, align 4
  %61 = call i32 @jpeg_set_colorspace(%struct.jpeg_compress_struct* %59, i32 %60)
  br label %66

62:                                               ; preds = %54
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %64 = load i32, i32* @JCS_YCbCr, align 4
  %65 = call i32 @jpeg_set_colorspace(%struct.jpeg_compress_struct* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32*, i32** @tjMCUWidth, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %71, 8
  %73 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %74 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 4
  %78 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %84 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  %88 = load i32*, i32** @tjMCUHeight, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 8
  %94 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %95 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 %93, i32* %98, align 4
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %100 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  %104 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %105 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = load i32, i32* %11, align 4
  ret i32 %109
}

declare dso_local i32 @jpeg_set_defaults(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_set_quality(%struct.jpeg_compress_struct*, i32, i32) #1

declare dso_local i32 @jpeg_set_colorspace(%struct.jpeg_compress_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

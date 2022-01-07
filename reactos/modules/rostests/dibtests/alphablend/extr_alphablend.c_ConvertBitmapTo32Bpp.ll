; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/dibtests/alphablend/extr_alphablend.c_ConvertBitmapTo32Bpp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/dibtests/alphablend/extr_alphablend.c_ConvertBitmapTo32Bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@bmpi = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@pBmpBits = common dso_local global i32* null, align 8
@H32BppBitmap = common dso_local global i64 0, align 8
@HMemDC = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@HInst = common dso_local global i32 0, align 4
@IMAGE_BITMAP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConvertBitmapTo32Bpp(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %12 = call i32 @ZeroMemory(%struct.TYPE_9__* @bmpi, i32 4)
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bmpi, i32 0, i32 0, i32 0), align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bmpi, i32 0, i32 0, i32 1), align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bmpi, i32 0, i32 0, i32 2), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bmpi, i32 0, i32 0, i32 3), align 4
  store i32 32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bmpi, i32 0, i32 0, i32 4), align 4
  %19 = load i32, i32* @BI_RGB, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bmpi, i32 0, i32 0, i32 6), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bmpi, i32 0, i32 0, i32 1), align 4
  %21 = mul nsw i32 4, %20
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bmpi, i32 0, i32 0, i32 2), align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bmpi, i32 0, i32 0, i32 5), align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DIB_RGB_COLORS, align 4
  %26 = call i64 @CreateDIBSection(i32 %24, %struct.TYPE_9__* @bmpi, i32 %25, i32** @pBmpBits, i32 0, i32 0)
  store i64 %26, i64* @H32BppBitmap, align 8
  %27 = load i64, i64* @H32BppBitmap, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %103

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = load i64, i64* @H32BppBitmap, align 8
  %32 = call i32 @SelectObject(i32 %30, i64 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HMemDC, align 4
  %41 = load i32, i32* @SRCCOPY, align 4
  %42 = call i32 @BitBlt(i32 %33, i32 0, i32 0, i32 %36, i32 %39, i32 %40, i32 0, i32 0, i32 %41)
  %43 = load i32, i32* @HInst, align 4
  %44 = call i32 @MAKEINTRESOURCE(i32 2000)
  %45 = load i32, i32* @IMAGE_BITMAP, align 4
  %46 = call i64 @LoadImage(i32 %43, i32 %44, i32 %45, i32 0, i32 0, i32 0)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %101

49:                                               ; preds = %29
  %50 = load i32*, i32** @pBmpBits, align 8
  store i32* %50, i32** %7, align 8
  %51 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @DeleteObject(i64 %55)
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %3, align 4
  br label %105

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @SelectObject(i32 %59, i64 %60)
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %92, %58
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %88, %68
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @GetPixel(i32 %76, i32 %77, i32 %78)
  %80 = call i64 @GetRValue(i32 %79)
  %81 = trunc i64 %80 to i32
  %82 = shl i32 %81, 24
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %7, align 8
  %86 = load i32, i32* %84, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %84, align 4
  br label %88

88:                                               ; preds = %75
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %69

91:                                               ; preds = %69
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %62

95:                                               ; preds = %62
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @DeleteObject(i64 %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @DeleteDC(i32 %98)
  %100 = load i32, i32* @TRUE, align 4
  store i32 %100, i32* %3, align 4
  br label %105

101:                                              ; preds = %29
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %3, align 4
  br label %105

103:                                              ; preds = %2
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %101, %95, %54
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @CreateDIBSection(i32, %struct.TYPE_9__*, i32, i32**, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i64) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @LoadImage(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @CreateCompatibleDC(i32*) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i64 @GetRValue(i32) #1

declare dso_local i32 @GetPixel(i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

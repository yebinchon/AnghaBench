; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_rosglue.c_get_brush_bitmap_info.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_rosglue.c_get_brush_bitmap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_brush_bitmap_info(i32 %0, %struct.TYPE_7__* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = call i32* @NtGdiGetObjectBitmapHandle(i32 %12, i32* %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %5, align 4
  br label %91

19:                                               ; preds = %4
  %20 = call i32* @GetDC(i32* null)
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %5, align 4
  br label %91

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = call i32 @ZeroMemory(%struct.TYPE_7__* %26, i32 20)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 4, i32* %30, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @GetDIBits(i32* %31, i32* %32, i32 0, i32 0, i32* null, %struct.TYPE_7__* %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %5, align 4
  br label %91

40:                                               ; preds = %25
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @HeapAlloc(i32 %41, i32 0, i32 %45)
  %47 = load i32**, i32*** %8, align 8
  store i32* %46, i32** %47, align 8
  %48 = load i32**, i32*** %8, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %5, align 4
  br label %91

53:                                               ; preds = %40
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32**, i32*** %8, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @GetDIBits(i32* %54, i32* %55, i32 0, i32 %59, i32* %61, %struct.TYPE_7__* %62, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %53
  %68 = call i32 (...) @GetProcessHeap()
  %69 = load i32**, i32*** %8, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @HeapFree(i32 %68, i32 0, i32* %70)
  %72 = load i32**, i32*** %8, align 8
  store i32* null, i32** %72, align 8
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %5, align 4
  br label %91

74:                                               ; preds = %53
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %78, 8
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 1, %84
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %74
  %90 = load i32, i32* @TRUE, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %67, %51, %38, %23, %17
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32* @NtGdiGetObjectBitmapHandle(i32, i32*) #1

declare dso_local i32* @GetDC(i32*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @GetDIBits(i32*, i32*, i32, i32, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_pngformat.c_LoadGamaMetadata.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_pngformat.c_LoadGamaMetadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }

@LoadGamaMetadata.ImageGamma = internal constant [11 x i8] c"ImageGamma\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@VT_LPWSTR = common dso_local global i32 0, align 4
@VT_UI4 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.TYPE_14__**, i32*)* @LoadGamaMetadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadGamaMetadata(i32* %0, i32* %1, i32 %2, %struct.TYPE_14__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4 x %struct.TYPE_14__], align 16
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_14__** %3, %struct.TYPE_14__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %13, i64 0, i64 0
  %21 = call i32 @read_png_chunk(i32* %19, %struct.TYPE_14__* %20, %struct.TYPE_14__** %14, i32* %15)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %100

27:                                               ; preds = %5
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %33 = call i32 @HeapFree(i32 %31, i32 0, %struct.TYPE_14__* %32)
  %34 = load i32, i32* @E_FAIL, align 4
  store i32 %34, i32* %6, align 4
  br label %100

35:                                               ; preds = %27
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %37 = call i32 @read_ulong_be(%struct.TYPE_14__* %36)
  store i32 %37, i32* %16, align 4
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %40 = call i32 @HeapFree(i32 %38, i32 0, %struct.TYPE_14__* %39)
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %43 = call %struct.TYPE_14__* @HeapAlloc(i32 %41, i32 %42, i32 72)
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %18, align 8
  %44 = call i32 (...) @GetProcessHeap()
  %45 = call %struct.TYPE_14__* @HeapAlloc(i32 %44, i32 0, i32 11)
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %17, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %47 = icmp ne %struct.TYPE_14__* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %50 = icmp ne %struct.TYPE_14__* %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %48, %35
  %52 = call i32 (...) @GetProcessHeap()
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %54 = call i32 @HeapFree(i32 %52, i32 0, %struct.TYPE_14__* %53)
  %55 = call i32 (...) @GetProcessHeap()
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %57 = call i32 @HeapFree(i32 %55, i32 0, %struct.TYPE_14__* %56)
  %58 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %58, i32* %6, align 4
  br label %100

59:                                               ; preds = %48
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = call i32 @PropVariantInit(%struct.TYPE_15__* %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = call i32 @PropVariantInit(%struct.TYPE_15__* %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = call i32 @PropVariantInit(%struct.TYPE_15__* %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %73 = call i32 @memcpy(%struct.TYPE_14__* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @LoadGamaMetadata.ImageGamma, i64 0, i64 0), i32 11)
  %74 = load i32, i32* @VT_LPWSTR, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %84, align 8
  %85 = load i32, i32* @VT_UI4, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i32 %90, i32* %95, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %97 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %97, align 8
  %98 = load i32*, i32** %11, align 8
  store i32 1, i32* %98, align 4
  %99 = load i32, i32* @S_OK, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %59, %51, %30, %25
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @read_png_chunk(i32*, %struct.TYPE_14__*, %struct.TYPE_14__**, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @read_ulong_be(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @PropVariantInit(%struct.TYPE_15__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

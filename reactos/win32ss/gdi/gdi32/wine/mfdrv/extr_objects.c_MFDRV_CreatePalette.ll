; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_objects.c_MFDRV_CreatePalette.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_objects.c_MFDRV_CreatePalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }

@META_CREATEPALETTE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@META_SELECTPALETTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32*, i32)* @MFDRV_CreatePalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MFDRV_CreatePalette(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = call i32 (...) @GetProcessHeap()
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 24, %15
  %17 = sub i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call %struct.TYPE_5__* @HeapAlloc(i32 %13, i32 0, i32 %18)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 24, %21
  %23 = sub i64 %22, 4
  %24 = udiv i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @META_CREATEPALETTE, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @memcpy(i32** %32, i32* %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i64 @MFDRV_WriteRecord(i32 %36, %struct.TYPE_5__* %37, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %4
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = call i32 @HeapFree(i32 %47, i32 0, %struct.TYPE_5__* %48)
  %50 = load i64, i64* @FALSE, align 8
  store i64 %50, i64* %5, align 8
  br label %82

51:                                               ; preds = %4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 6, i32* %53, align 8
  %54 = load i32, i32* @META_SELECTPALETTE, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @MFDRV_AddHandle(i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i64, i64* @FALSE, align 8
  store i64 %62, i64* %11, align 8
  br label %77

63:                                               ; preds = %51
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i64 @MFDRV_WriteRecord(i32 %68, %struct.TYPE_5__* %69, i32 %75)
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %63, %61
  %78 = call i32 (...) @GetProcessHeap()
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %80 = call i32 @HeapFree(i32 %78, i32 0, %struct.TYPE_5__* %79)
  %81 = load i64, i64* %11, align 8
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %77, %46
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i32**, i32*, i32) #1

declare dso_local i64 @MFDRV_WriteRecord(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @MFDRV_AddHandle(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_graphics.c_MFDRV_MetaPoly.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_graphics.c_MFDRV_MetaPoly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i16, i16* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i16, i32*, i16)* @MFDRV_MetaPoly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MFDRV_MetaPoly(i32 %0, i16 signext %1, i32* %2, i16 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %6, align 4
  store i16 %1, i16* %7, align 2
  store i32* %2, i32** %8, align 8
  store i16 %3, i16* %9, align 2
  %13 = load i16, i16* %9, align 2
  %14 = sext i16 %13 to i32
  %15 = mul nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = add i64 16, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.TYPE_5__* @HeapAlloc(i32 %19, i32 %20, i32 %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %12, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %5, align 4
  br label %59

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = sdiv i32 %27, 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i16, i16* %7, align 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i16 %31, i16* %33, align 4
  %34 = load i16, i16* %9, align 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i16*, i16** %36, align 8
  store i16 %34, i16* %37, align 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i16*, i16** %39, align 8
  %41 = getelementptr inbounds i16, i16* %40, i64 1
  %42 = load i32*, i32** %8, align 8
  %43 = load i16, i16* %9, align 2
  %44 = sext i16 %43 to i32
  %45 = mul nsw i32 %44, 4
  %46 = trunc i32 %45 to i16
  %47 = call i32 @memcpy(i16* %41, i32* %42, i16 signext %46)
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %52, 2
  %54 = call i32 @MFDRV_WriteRecord(i32 %48, %struct.TYPE_5__* %49, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = call i32 (...) @GetProcessHeap()
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %57 = call i32 @HeapFree(i32 %55, i32 0, %struct.TYPE_5__* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %26, %24
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i16*, i32*, i16 signext) #1

declare dso_local i32 @MFDRV_WriteRecord(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_init.c_MFDRV_ExtEscape.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_init.c_MFDRV_ExtEscape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@META_ESCAPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @MFDRV_ExtEscape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MFDRV_ExtEscape(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %63

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, 1
  %23 = and i32 %22, -2
  %24 = sext i32 %23 to i64
  %25 = add i64 28, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = call i32 (...) @GetProcessHeap()
  %28 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call %struct.TYPE_5__* @HeapAlloc(i32 %27, i32 %28, i32 %29)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sdiv i32 %31, 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @META_ESCAPE, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %43, i32* %47, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @memcpy(i32* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @MFDRV_WriteRecord(i32 %55, %struct.TYPE_5__* %56, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = call i32 (...) @GetProcessHeap()
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %61 = call i32 @HeapFree(i32 %59, i32 0, %struct.TYPE_5__* %60)
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %20, %19
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @MFDRV_WriteRecord(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

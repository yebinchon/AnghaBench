; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_adjust.c_DisplayInvertedColors.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_adjust.c_DisplayInvertedColors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@BI_RGB = common dso_local global i32 0, align 4
@ProcessHeap = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DisplayInvertedColors(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @GetObject(i32 %20, i32 8, %struct.TYPE_9__* %9)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 48, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  store i32 1, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  store i32 32, i32* %35, align 8
  %36 = load i32, i32* @BI_RGB, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %40, %42
  %44 = mul nsw i32 %43, 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 7
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 6
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @ProcessHeap, align 4
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %53, %55
  %57 = mul nsw i32 %56, 4
  %58 = call i64 @HeapAlloc(i32 %51, i32 0, i32 %57)
  %59 = inttoptr i64 %58 to i64*
  store i64* %59, i64** %14, align 8
  %60 = load i64*, i64** %14, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %3
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %4, align 4
  br label %130

64:                                               ; preds = %3
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i64*, i64** %14, align 8
  %70 = load i32, i32* @DIB_RGB_COLORS, align 4
  %71 = call i32 @GetDIBits(i32 %65, i32 %66, i32 0, i32 %68, i64* %69, %struct.TYPE_8__* %8, i32 %70)
  store i32 %71, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %111, %64
  %73 = load i32, i32* %12, align 4
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %114

77:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %107, %77
  %79 = load i32, i32* %13, align 4
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %78
  store i64 0, i64* %16, align 8
  %84 = load i64*, i64** %14, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = call i32 @CopyMemory(i64* %16, i64* %86, i32 4)
  %88 = load i64, i64* %16, align 8
  %89 = call i32 @GetRValue(i64 %88)
  %90 = sub nsw i32 255, %89
  store i32 %90, i32* %17, align 4
  %91 = load i64, i64* %16, align 8
  %92 = call i32 @GetGValue(i64 %91)
  %93 = sub nsw i32 255, %92
  store i32 %93, i32* %18, align 4
  %94 = load i64, i64* %16, align 8
  %95 = call i32 @GetBValue(i64 %94)
  %96 = sub nsw i32 255, %95
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %19, align 4
  %100 = call i64 @RGB(i32 %97, i32 %98, i32 %99)
  store i64 %100, i64* %16, align 8
  %101 = load i64*, i64** %14, align 8
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = call i32 @CopyMemory(i64* %103, i64* %16, i32 4)
  %105 = load i64, i64* %11, align 8
  %106 = add i64 %105, 4
  store i64 %106, i64* %11, align 8
  br label %107

107:                                              ; preds = %83
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %78

110:                                              ; preds = %78
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %72

114:                                              ; preds = %72
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i64*, i64** %14, align 8
  %119 = load i32, i32* @DIB_RGB_COLORS, align 4
  %120 = call i32 @SetDIBits(i32 %115, i32 %116, i32 0, i32 %117, i64* %118, %struct.TYPE_8__* %8, i32 %119)
  %121 = load i32, i32* @ProcessHeap, align 4
  %122 = load i64*, i64** %14, align 8
  %123 = call i32 @HeapFree(i32 %121, i32 0, i64* %122)
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @GetClientRect(i32 %124, i32* %15)
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @FALSE, align 4
  %128 = call i32 @InvalidateRect(i32 %126, i32* %15, i32 %127)
  %129 = load i32, i32* @TRUE, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %114, %62
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @GetObject(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetDIBits(i32, i32, i32, i32, i64*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @CopyMemory(i64*, i64*, i32) #1

declare dso_local i32 @GetRValue(i64) #1

declare dso_local i32 @GetGValue(i64) #1

declare dso_local i32 @GetBValue(i64) #1

declare dso_local i64 @RGB(i32, i32, i32) #1

declare dso_local i32 @SetDIBits(i32, i32, i32, i32, i64*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

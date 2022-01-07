; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipGetVisibleClipBounds_memoryDC.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipGetVisibleClipBounds_memoryDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@hwnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"GetClientRect should have succeeded\0A\00", align 1
@Ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Expected GdipGetVisibleClipBoundsI ok\0A\00", align 1
@CombineModeReplace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipGetVisibleClipBounds_memoryDC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipGetVisibleClipBounds_memoryDC() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %12 = load i32, i32* @hwnd, align 4
  %13 = call i32 @GetClientRect(i32 %12, %struct.TYPE_5__* %5)
  %14 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %21, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @hwnd, align 4
  %26 = call i32 @GetDC(i32 %25)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @CreateCompatibleDC(i32 %27)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @CreateCompatibleBitmap(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @SelectObject(i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %1, align 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 10
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 10
  %43 = call i32 @SetWindowOrgEx(i32 %36, i32 %39, i32 %42, i32* %6)
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @GdipCreateFromHDC(i32 %44, i32** %9)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @Ok, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @expect(i32 %46, i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @GdipGetVisibleClipBoundsI(i32* %49, %struct.TYPE_6__* %10)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @Ok, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @expect(i32 %51, i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 10
  %59 = sext i32 %58 to i64
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 10
  %67 = sext i32 %66 to i64
  %68 = icmp eq i64 %63, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %76, %77
  br label %79

79:                                               ; preds = %74, %69, %61, %0
  %80 = phi i1 [ false, %69 ], [ false, %61 ], [ false, %0 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @CombineModeReplace, align 4
  %87 = call i32 @GdipSetClipRectI(i32* %83, i32 0, i32 0, i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* @Ok, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @expect(i32 %88, i32 %89)
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @GdipGetVisibleClipBoundsI(i32* %91, %struct.TYPE_6__* %10)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* @Ok, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @expect(i32 %93, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 10
  %101 = sext i32 %100 to i64
  %102 = icmp eq i64 %97, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %79
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 10
  %109 = sext i32 %108 to i64
  %110 = icmp eq i64 %105, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sub nsw i32 %114, 10
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %120, 10
  %122 = icmp eq i32 %119, %121
  br label %123

123:                                              ; preds = %117, %111, %103, %79
  %124 = phi i1 [ false, %111 ], [ false, %103 ], [ false, %79 ], [ %122, %117 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @GdipDeleteGraphics(i32* %127)
  %129 = load i32, i32* %1, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @SelectObject(i32 %129, i32 %130)
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @DeleteObject(i32 %132)
  %134 = load i32, i32* %1, align 4
  %135 = call i32 @DeleteDC(i32 %134)
  %136 = load i32, i32* @hwnd, align 4
  %137 = load i32, i32* %2, align 4
  %138 = call i32 @ReleaseDC(i32 %136, i32 %137)
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @SetWindowOrgEx(i32, i32, i32, i32*) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipGetVisibleClipBoundsI(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @GdipSetClipRectI(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

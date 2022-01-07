; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipFillPath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipFillPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected HDC to be initialized\0A\00", align 1
@Ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected graphics to be initialized\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Expected brush to be initialized\0A\00", align 1
@FillModeAlternate = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Expected path to be initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipFillPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipFillPath() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @hwnd, align 4
  %7 = call i32* @GetDC(i32 %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @GdipCreateFromHDC(i32* %12, i32** %2)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @Ok, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @GdipCreateSolidFill(i32 -1, i32** %3)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* @Ok, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @expect(i32 %22, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @FillModeAlternate, align 4
  %30 = call i32 @GdipCreatePath(i32 %29, i32** %4)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* @Ok, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @expect(i32 %31, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @GdipResetPath(i32* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @GdipFillPath(i32* %40, i32* %41, i32* %42)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* @Ok, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @expect(i32 %44, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @GdipResetPath(i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @GdipAddPathLineI(i32* %49, i32 0, i32 0, i32 2, i32 2)
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* @Ok, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @expect(i32 %51, i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @GdipAddPathLineI(i32* %54, i32 2, i32 2, i32 4, i32 0)
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* @Ok, align 4
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @expect(i32 %56, i32 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @GdipFillPath(i32* %59, i32* %60, i32* %61)
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* @Ok, align 4
  %64 = load i32, i32* %1, align 4
  %65 = call i32 @expect(i32 %63, i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @GdipResetPath(i32* %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @GdipAddPathRectangle(i32* %68, i32 0, i32 0, i32 4, i32 4)
  store i32 %69, i32* %1, align 4
  %70 = load i32, i32* @Ok, align 4
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @expect(i32 %70, i32 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @GdipFillPath(i32* %73, i32* %74, i32* %75)
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* @Ok, align 4
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @expect(i32 %77, i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @GdipDeletePath(i32* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @GdipDeleteBrush(i32* %82)
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @GdipDeleteGraphics(i32* %84)
  %86 = load i32, i32* @hwnd, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @ReleaseDC(i32 %86, i32* %87)
  ret void
}

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipCreateFromHDC(i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateSolidFill(i32, i32**) #1

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipResetPath(i32*) #1

declare dso_local i32 @GdipFillPath(i32*, i32*, i32*) #1

declare dso_local i32 @GdipAddPathLineI(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GdipAddPathRectangle(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

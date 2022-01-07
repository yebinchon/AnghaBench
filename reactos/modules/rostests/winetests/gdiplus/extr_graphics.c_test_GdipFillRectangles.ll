; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipFillRectangles.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipFillRectangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@hwnd = common dso_local global i32 0, align 4
@__const.test_GdipFillRectangles.rects = private unnamed_addr constant [2 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 0, i32 0, i32 10, i32 10 }, %struct.TYPE_3__ { i32 10, i32 10, i32 10, i32 10 }], align 16
@.str = private unnamed_addr constant [32 x i8] c"Expected HDC to be initialized\0A\00", align 1
@Ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected graphics to be initialized\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Expected brush to be initialized\0A\00", align 1
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipFillRectangles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipFillRectangles() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [2 x %struct.TYPE_3__], align 16
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %6 = load i32, i32* @hwnd, align 4
  %7 = call i32* @GetDC(i32 %6)
  store i32* %7, i32** %4, align 8
  %8 = bitcast [2 x %struct.TYPE_3__]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([2 x %struct.TYPE_3__]* @__const.test_GdipFillRectangles.rects to i8*), i64 32, i1 false)
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @GdipCreateFromHDC(i32* %13, i32** %2)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @Ok, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @expect(i32 %15, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @GdipCreateSolidFill(i32 -65281, i32** %3)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @Ok, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %32 = call i32 @GdipFillRectangles(i32* null, i32* %30, %struct.TYPE_3__* %31, i32 2)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* @InvalidParameter, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @expect(i32 %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %38 = call i32 @GdipFillRectangles(i32* %36, i32* null, %struct.TYPE_3__* %37, i32 2)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @InvalidParameter, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @GdipFillRectangles(i32* %42, i32* %43, %struct.TYPE_3__* null, i32 2)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* @InvalidParameter, align 4
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @expect(i32 %45, i32 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %51 = call i32 @GdipFillRectangles(i32* %48, i32* %49, %struct.TYPE_3__* %50, i32 0)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* @InvalidParameter, align 4
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @expect(i32 %52, i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %58 = call i32 @GdipFillRectangles(i32* %55, i32* %56, %struct.TYPE_3__* %57, i32 -1)
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* @InvalidParameter, align 4
  %60 = load i32, i32* %1, align 4
  %61 = call i32 @expect(i32 %59, i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %65 = call i32 @GdipFillRectangles(i32* %62, i32* %63, %struct.TYPE_3__* %64, i32 1)
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* @Ok, align 4
  %67 = load i32, i32* %1, align 4
  %68 = call i32 @expect(i32 %66, i32 %67)
  %69 = load i32*, i32** %2, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %72 = call i32 @GdipFillRectangles(i32* %69, i32* %70, %struct.TYPE_3__* %71, i32 2)
  store i32 %72, i32* %1, align 4
  %73 = load i32, i32* @Ok, align 4
  %74 = load i32, i32* %1, align 4
  %75 = call i32 @expect(i32 %73, i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @GdipDeleteBrush(i32* %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @GdipDeleteGraphics(i32* %78)
  %80 = load i32, i32* @hwnd, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @ReleaseDC(i32 %80, i32* %81)
  ret void
}

declare dso_local i32* @GetDC(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipCreateFromHDC(i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateSolidFill(i32, i32**) #1

declare dso_local i32 @GdipFillRectangles(i32*, i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

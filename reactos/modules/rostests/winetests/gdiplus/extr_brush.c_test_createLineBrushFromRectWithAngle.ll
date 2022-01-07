; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_createLineBrushFromRectWithAngle.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_createLineBrushFromRectWithAngle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@__const.test_createLineBrushFromRectWithAngle.rect1 = private unnamed_addr constant %struct.TYPE_3__ { i32 1, i32 3, i32 1, i32 2 }, align 4
@__const.test_createLineBrushFromRectWithAngle.rect2 = private unnamed_addr constant %struct.TYPE_3__ { i32 1, i32 3, i32 -1, i32 -2 }, align 4
@__const.test_createLineBrushFromRectWithAngle.rect3 = private unnamed_addr constant %struct.TYPE_3__ { i32 1, i32 3, i32 0, i32 1 }, align 4
@__const.test_createLineBrushFromRectWithAngle.rect4 = private unnamed_addr constant %struct.TYPE_3__ { i32 1, i32 3, i32 1, i32 0 }, align 4
@TRUE = common dso_local global i32 0, align 4
@WrapModeTile = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WrapModeClamp = common dso_local global i32 0, align 4
@WrapModeTileFlipX = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@WrapModeTileFlipXY = common dso_local global i32 0, align 4
@OutOfMemory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_createLineBrushFromRectWithAngle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_createLineBrushFromRectWithAngle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_3__* @__const.test_createLineBrushFromRectWithAngle.rect1 to i8*), i64 16, i1 false)
  %8 = bitcast %struct.TYPE_3__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_3__* @__const.test_createLineBrushFromRectWithAngle.rect2 to i8*), i64 16, i1 false)
  %9 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_3__* @__const.test_createLineBrushFromRectWithAngle.rect3 to i8*), i64 16, i1 false)
  %10 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_3__* @__const.test_createLineBrushFromRectWithAngle.rect4 to i8*), i64 16, i1 false)
  %11 = load i32, i32* @TRUE, align 4
  %12 = load i32, i32* @WrapModeTile, align 4
  %13 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* %3, i32 10, i32 11, i32 0, i32 %11, i32 %12, i32** %2)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @Ok, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @GdipDeleteBrush(i32* %17)
  %19 = load i32, i32* @TRUE, align 4
  %20 = load i32, i32* @WrapModeTile, align 4
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* %4, i32 10, i32 11, i32 135, i32 %19, i32 %21, i32** %2)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @Ok, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @GdipDeleteBrush(i32* %26)
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32, i32* @WrapModeTile, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* %4, i32 10, i32 11, i32 -225, i32 %28, i32 %30, i32** %2)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* @Ok, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @expect(i32 %32, i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @GdipDeleteBrush(i32* %35)
  %37 = load i32, i32* @TRUE, align 4
  %38 = load i32, i32* @WrapModeClamp, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* %3, i32 10, i32 11, i32 405, i32 %37, i32 %39, i32** %2)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* @Ok, align 4
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @expect(i32 %41, i32 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @GdipDeleteBrush(i32* %44)
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32, i32* @WrapModeClamp, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* %3, i32 10, i32 11, i32 45, i32 %46, i32 %48, i32** %2)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @Ok, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @expect(i32 %50, i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @GdipDeleteBrush(i32* %53)
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32, i32* @WrapModeTileFlipX, align 4
  %57 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* %3, i32 10, i32 11, i32 90, i32 %55, i32 %56, i32** %2)
  store i32 %57, i32* %1, align 4
  %58 = load i32, i32* @Ok, align 4
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @expect(i32 %58, i32 %59)
  %61 = load i32, i32* @TRUE, align 4
  %62 = load i32, i32* @WrapModeTile, align 4
  %63 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* null, i32 10, i32 11, i32 90, i32 %61, i32 %62, i32** %2)
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* @InvalidParameter, align 4
  %65 = load i32, i32* %1, align 4
  %66 = call i32 @expect(i32 %64, i32 %65)
  %67 = load i32, i32* @TRUE, align 4
  %68 = load i32, i32* @WrapModeTileFlipXY, align 4
  %69 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* %5, i32 10, i32 11, i32 90, i32 %67, i32 %68, i32** %2)
  store i32 %69, i32* %1, align 4
  %70 = load i32, i32* @OutOfMemory, align 4
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @expect(i32 %70, i32 %71)
  %73 = load i32, i32* @TRUE, align 4
  %74 = load i32, i32* @WrapModeTileFlipXY, align 4
  %75 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* %6, i32 10, i32 11, i32 90, i32 %73, i32 %74, i32** %2)
  store i32 %75, i32* %1, align 4
  %76 = load i32, i32* @OutOfMemory, align 4
  %77 = load i32, i32* %1, align 4
  %78 = call i32 @expect(i32 %76, i32 %77)
  %79 = load i32, i32* @TRUE, align 4
  %80 = load i32, i32* @WrapModeTileFlipXY, align 4
  %81 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* %5, i32 10, i32 11, i32 90, i32 %79, i32 %80, i32** null)
  store i32 %81, i32* %1, align 4
  %82 = load i32, i32* @InvalidParameter, align 4
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @expect(i32 %82, i32 %83)
  %85 = load i32, i32* @TRUE, align 4
  %86 = load i32, i32* @WrapModeTileFlipXY, align 4
  %87 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* %6, i32 10, i32 11, i32 90, i32 %85, i32 %86, i32** null)
  store i32 %87, i32* %1, align 4
  %88 = load i32, i32* @InvalidParameter, align 4
  %89 = load i32, i32* %1, align 4
  %90 = call i32 @expect(i32 %88, i32 %89)
  %91 = load i32, i32* @TRUE, align 4
  %92 = load i32, i32* @WrapModeClamp, align 4
  %93 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* %5, i32 10, i32 11, i32 90, i32 %91, i32 %92, i32** %2)
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* @InvalidParameter, align 4
  %95 = load i32, i32* %1, align 4
  %96 = call i32 @expect(i32 %94, i32 %95)
  %97 = load i32, i32* @TRUE, align 4
  %98 = load i32, i32* @WrapModeClamp, align 4
  %99 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* %6, i32 10, i32 11, i32 90, i32 %97, i32 %98, i32** %2)
  store i32 %99, i32* %1, align 4
  %100 = load i32, i32* @InvalidParameter, align 4
  %101 = load i32, i32* %1, align 4
  %102 = call i32 @expect(i32 %100, i32 %101)
  %103 = load i32, i32* @TRUE, align 4
  %104 = load i32, i32* @WrapModeClamp, align 4
  %105 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* %3, i32 10, i32 11, i32 90, i32 %103, i32 %104, i32** %2)
  store i32 %105, i32* %1, align 4
  %106 = load i32, i32* @InvalidParameter, align 4
  %107 = load i32, i32* %1, align 4
  %108 = call i32 @expect(i32 %106, i32 %107)
  %109 = load i32, i32* @TRUE, align 4
  %110 = load i32, i32* @WrapModeTile, align 4
  %111 = call i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__* %3, i32 10, i32 11, i32 90, i32 %109, i32 %110, i32** null)
  store i32 %111, i32* %1, align 4
  %112 = load i32, i32* @InvalidParameter, align 4
  %113 = load i32, i32* %1, align 4
  %114 = call i32 @expect(i32 %112, i32 %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @GdipDeleteBrush(i32* %115)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GdipCreateLineBrushFromRectWithAngle(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32**) #2

declare dso_local i32 @expect(i32, i32) #2

declare dso_local i32 @GdipDeleteBrush(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

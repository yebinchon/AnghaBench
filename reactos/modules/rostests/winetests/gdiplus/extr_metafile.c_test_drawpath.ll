; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_drawpath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_drawpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double }

@test_drawpath.description = internal constant [9 x i8] c"winetest\00", align 1
@test_drawpath.frame = internal constant %struct.TYPE_3__ { double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+02 }, align 8
@EmfTypeEmfPlusOnly = common dso_local global i32 0, align 4
@MetafileFrameUnitPixel = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@FillModeAlternate = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"draw_path.emf\00", align 1
@draw_path_records = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"draw path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_drawpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_drawpath() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @EmfTypeEmfPlusOnly, align 4
  %11 = load i32, i32* @MetafileFrameUnitPixel, align 4
  %12 = call i32 @GdipRecordMetafile(i32 %9, i32 %10, %struct.TYPE_3__* @test_drawpath.frame, i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_drawpath.description, i64 0, i64 0), i32** %1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @Ok, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @expect(i32 %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @DeleteDC(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @GdipGetImageGraphicsContext(i32* %18, i32** %2)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @Ok, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @expect(i32 %20, i32 %21)
  %23 = load i32, i32* @FillModeAlternate, align 4
  %24 = call i32 @GdipCreatePath(i32 %23, i32** %5)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @Ok, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @expect(i32 %25, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @GdipAddPathLine(i32* %28, i32 5, i32 5, i32 30, i32 30)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @Ok, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = load i32, i32* @UnitPixel, align 4
  %34 = call i32 @GdipCreatePen1(i32 -65281, float 1.000000e+01, i32 %33, i32** %6)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @Ok, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @GdipDrawPath(i32* %38, i32* %39, i32* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @Ok, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @expect(i32 %42, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @GdipDeletePen(i32* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @Ok, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @expect(i32 %47, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @GdipDeletePath(i32* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @Ok, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @expect(i32 %52, i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @GdipDeleteGraphics(i32* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @Ok, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @expect(i32 %57, i32 %58)
  %60 = call i32 @sync_metafile(i32** %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @GdipGetHemfFromMetafile(i32* %61, i32* %3)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @Ok, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @expect(i32 %63, i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @draw_path_records, align 4
  %68 = call i32 @check_emfplus(i32 %66, i32 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @DeleteEnhMetaFile(i32 %69)
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @GdipDisposeImage(i32* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @Ok, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @expect(i32 %73, i32 %74)
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @GdipRecordMetafile(i32, i32, %struct.TYPE_3__*, i32, i8*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #1

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipAddPathLine(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GdipCreatePen1(i32, float, i32, i32**) #1

declare dso_local i32 @GdipDrawPath(i32*, i32*, i32*) #1

declare dso_local i32 @GdipDeletePen(i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @sync_metafile(i32**, i8*) #1

declare dso_local i32 @GdipGetHemfFromMetafile(i32*, i32*) #1

declare dso_local i32 @check_emfplus(i32, i32, i8*) #1

declare dso_local i32 @DeleteEnhMetaFile(i32) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

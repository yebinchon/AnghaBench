; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_fillpath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_fillpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double }

@test_fillpath.description = internal constant [9 x i8] c"winetest\00", align 1
@test_fillpath.frame = internal constant %struct.TYPE_3__ { double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+02 }, align 8
@test_fillpath.winetestemfW = internal constant [13 x i8] c"winetest.emf\00", align 1
@EmfTypeEmfPlusOnly = common dso_local global i32 0, align 4
@MetafileFrameUnitPixel = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@FillModeAlternate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fill_path.emf\00", align 1
@fill_path_records = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"fill path\00", align 1
@GenericError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fillpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fillpath() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @EmfTypeEmfPlusOnly, align 4
  %11 = load i32, i32* @MetafileFrameUnitPixel, align 4
  %12 = call i32 @GdipRecordMetafile(i32 %9, i32 %10, %struct.TYPE_3__* @test_fillpath.frame, i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_fillpath.description, i64 0, i64 0), i32** %1)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @Ok, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @expect(i32 %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @DeleteDC(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @GdipGetImageGraphicsContext(i32* %18, i32** %2)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @Ok, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @expect(i32 %20, i32 %21)
  %23 = load i32, i32* @FillModeAlternate, align 4
  %24 = call i32 @GdipCreatePath(i32 %23, i32** %6)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @Ok, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @expect(i32 %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @GdipAddPathLine(i32* %28, i32 5, i32 5, i32 30, i32 30)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @Ok, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @GdipAddPathLine(i32* %33, i32 30, i32 30, i32 5, i32 30)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @Ok, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = call i32 @GdipCreateSolidFill(i32 -5588020, i32** %3)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @Ok, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @GdipFillPath(i32* %42, i32* %43, i32* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @Ok, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @expect(i32 %46, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @GdipDeleteBrush(i32* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @Ok, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @expect(i32 %51, i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @GdipDeletePath(i32* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @Ok, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @expect(i32 %56, i32 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @GdipDeleteGraphics(i32* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @Ok, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @expect(i32 %61, i32 %62)
  %64 = call i32 @sync_metafile(i32** %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @GdipGetHemfFromMetafile(i32* %65, i32* %4)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @Ok, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @expect(i32 %67, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @fill_path_records, align 4
  %72 = call i32 @check_emfplus(i32 %70, i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @CopyEnhMetaFileW(i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_fillpath.winetestemfW, i64 0, i64 0))
  %75 = call i32 @DeleteEnhMetaFile(i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @DeleteEnhMetaFile(i32 %76)
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @GdipDisposeImage(i32* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* @Ok, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @expect(i32 %80, i32 %81)
  %83 = call i32 @GdipCreateMetafileFromWmfFile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_fillpath.winetestemfW, i64 0, i64 0), i32* null, i32** %1)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @Ok, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @expect(i32 %84, i32 %85)
  %87 = load i32*, i32** %1, align 8
  %88 = call i32 @GdipDisposeImage(i32* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* @Ok, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @expect(i32 %89, i32 %90)
  %92 = call i32 @DeleteFileW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_fillpath.winetestemfW, i64 0, i64 0))
  %93 = call i32 @GdipCreateMetafileFromWmfFile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_fillpath.winetestemfW, i64 0, i64 0), i32* null, i32** %1)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @GenericError, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @expect(i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @GdipRecordMetafile(i32, i32, %struct.TYPE_3__*, i32, i8*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #1

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipAddPathLine(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GdipCreateSolidFill(i32, i32**) #1

declare dso_local i32 @GdipFillPath(i32*, i32*, i32*) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @sync_metafile(i32**, i8*) #1

declare dso_local i32 @GdipGetHemfFromMetafile(i32*, i32*) #1

declare dso_local i32 @check_emfplus(i32, i32, i8*) #1

declare dso_local i32 @DeleteEnhMetaFile(i32) #1

declare dso_local i32 @CopyEnhMetaFileW(i32, i8*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

declare dso_local i32 @GdipCreateMetafileFromWmfFile(i8*, i32*, i32**) #1

declare dso_local i32 @DeleteFileW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

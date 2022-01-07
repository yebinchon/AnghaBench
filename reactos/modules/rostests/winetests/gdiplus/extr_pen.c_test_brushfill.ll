; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pen.c_test_brushfill.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pen.c_test_brushfill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UnitWorld = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@BrushTypeSolidColor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Expected to get a clone, not a copy of the reference\0A\00", align 1
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_brushfill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_brushfill() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @UnitWorld, align 4
  %8 = call i32 @GdipCreatePen1(i32 -559038737, double 4.500000e+00, i32 %7, i32** %2)
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @GdipGetPenBrushFill(i32* %9, i32** %3)
  store i64 %10, i64* %1, align 8
  %11 = load i32, i32* @Ok, align 4
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @expect(i32 %11, i64 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @GdipGetBrushType(i32* %14, i64* %5)
  %16 = load i32, i32* @BrushTypeSolidColor, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @expect(i32 %16, i64 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @GdipGetPenColor(i32* %19, i64* %6)
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @expect(i32 -559038737, i64 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @GdipDeleteBrush(i32* %23)
  %25 = call i32 @GdipCreateSolidFill(i32 -1414668563, i32** %3)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @GdipSetPenBrushFill(i32* %26, i32* %27)
  store i64 %28, i64* %1, align 8
  %29 = load i32, i32* @Ok, align 4
  %30 = load i64, i64* %1, align 8
  %31 = call i32 @expect(i32 %29, i64 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @GdipGetPenColor(i32* %32, i64* %6)
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @expect(i32 -1414668563, i64 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @GdipDeleteBrush(i32* %36)
  store i64 0, i64* %6, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = call i64 @GdipGetPenBrushFill(i32* %38, i32** %3)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @GdipSetSolidFillColor(i32* %40, i32 -1095893267)
  %42 = load i32*, i32** %2, align 8
  %43 = call i64 @GdipGetPenBrushFill(i32* %42, i32** %4)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = icmp ne i32* %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @GdipGetSolidFillColor(i32* %49, i64* %6)
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @expect(i32 -1414668563, i64 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @GdipDeleteBrush(i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @GdipDeleteBrush(i32* %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i64 @GdipSetPenBrushFill(i32* %57, i32* null)
  store i64 %58, i64* %1, align 8
  %59 = load i32, i32* @InvalidParameter, align 4
  %60 = load i64, i64* %1, align 8
  %61 = call i32 @expect(i32 %59, i64 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @GdipDeletePen(i32* %62)
  ret void
}

declare dso_local i32 @GdipCreatePen1(i32, double, i32, i32**) #1

declare dso_local i64 @GdipGetPenBrushFill(i32*, i32**) #1

declare dso_local i32 @expect(i32, i64) #1

declare dso_local i32 @GdipGetBrushType(i32*, i64*) #1

declare dso_local i32 @GdipGetPenColor(i32*, i64*) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

declare dso_local i32 @GdipCreateSolidFill(i32, i32**) #1

declare dso_local i64 @GdipSetPenBrushFill(i32*, i32*) #1

declare dso_local i32 @GdipSetSolidFillColor(i32*, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipGetSolidFillColor(i32*, i64*) #1

declare dso_local i32 @GdipDeletePen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

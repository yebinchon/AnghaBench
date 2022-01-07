; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_customlinecap.c_test_linejoin.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_customlinecap.c_test_linejoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FillModeAlternate = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@LineCapFlat = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@LineJoinBevel = common dso_local global i32 0, align 4
@LineJoinMiter = common dso_local global i32 0, align 4
@LineJoinRound = common dso_local global i32 0, align 4
@LineJoinMiterClipped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_linejoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_linejoin() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @FillModeAlternate, align 4
  %6 = call i32 @GdipCreatePath(i32 %5, i32** %2)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @Ok, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @expect(i32 %7, i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @GdipAddPathRectangle(i32* %10, double 5.000000e+00, double 5.000000e+00, double 1.000000e+01, double 1.000000e+01)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @Ok, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @expect(i32 %12, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @LineCapFlat, align 4
  %17 = call i32 @GdipCreateCustomLineCap(i32* null, i32* %15, i32 %16, double 0.000000e+00, i32** %1)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @Ok, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @expect(i32 %18, i32 %19)
  %21 = call i32 @GdipGetCustomLineCapStrokeJoin(i32* null, i32* null)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @InvalidParameter, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @expect(i32 %22, i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @GdipGetCustomLineCapStrokeJoin(i32* %25, i32* null)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @InvalidParameter, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @expect(i32 %27, i32 %28)
  %30 = call i32 @GdipGetCustomLineCapStrokeJoin(i32* null, i32* %3)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @InvalidParameter, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @expect(i32 %31, i32 %32)
  %34 = load i32, i32* @LineJoinBevel, align 4
  %35 = call i32 @GdipSetCustomLineCapStrokeJoin(i32* null, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @InvalidParameter, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @expect(i32 %36, i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @GdipGetCustomLineCapStrokeJoin(i32* %39, i32* %3)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @Ok, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @expect(i32 %41, i32 %42)
  %44 = load i32, i32* @LineJoinMiter, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @expect(i32 %44, i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = load i32, i32* @LineJoinBevel, align 4
  %49 = call i32 @GdipSetCustomLineCapStrokeJoin(i32* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @Ok, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @expect(i32 %50, i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @GdipGetCustomLineCapStrokeJoin(i32* %53, i32* %3)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @Ok, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @expect(i32 %55, i32 %56)
  %58 = load i32, i32* @LineJoinBevel, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @expect(i32 %58, i32 %59)
  %61 = load i32*, i32** %1, align 8
  %62 = load i32, i32* @LineJoinRound, align 4
  %63 = call i32 @GdipSetCustomLineCapStrokeJoin(i32* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @Ok, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @expect(i32 %64, i32 %65)
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @GdipGetCustomLineCapStrokeJoin(i32* %67, i32* %3)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @Ok, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @expect(i32 %69, i32 %70)
  %72 = load i32, i32* @LineJoinRound, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @expect(i32 %72, i32 %73)
  %75 = load i32*, i32** %1, align 8
  %76 = load i32, i32* @LineJoinMiterClipped, align 4
  %77 = call i32 @GdipSetCustomLineCapStrokeJoin(i32* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @Ok, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @expect(i32 %78, i32 %79)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @GdipGetCustomLineCapStrokeJoin(i32* %81, i32* %3)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* @Ok, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @expect(i32 %83, i32 %84)
  %86 = load i32, i32* @LineJoinMiterClipped, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @expect(i32 %86, i32 %87)
  %89 = load i32*, i32** %1, align 8
  %90 = call i32 @GdipDeleteCustomLineCap(i32* %89)
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @GdipDeletePath(i32* %91)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipAddPathRectangle(i32*, double, double, double, double) #1

declare dso_local i32 @GdipCreateCustomLineCap(i32*, i32*, i32, double, i32**) #1

declare dso_local i32 @GdipGetCustomLineCapStrokeJoin(i32*, i32*) #1

declare dso_local i32 @GdipSetCustomLineCapStrokeJoin(i32*, i32) #1

declare dso_local i32 @GdipDeleteCustomLineCap(i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

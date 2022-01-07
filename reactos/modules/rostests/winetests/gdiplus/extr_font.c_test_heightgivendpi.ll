; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_heightgivendpi.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_heightgivendpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Tahoma = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@FontStyleRegular = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@UnitWorld = common dso_local global i32 0, align 4
@UnitPoint = common dso_local global i32 0, align 4
@UnitInch = common dso_local global i32 0, align 4
@UnitDocument = common dso_local global i32 0, align 4
@UnitMillimeter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_heightgivendpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_heightgivendpi() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %6 = load i32, i32* @Tahoma, align 4
  %7 = call i32 @GdipCreateFontFamilyFromName(i32 %6, i32* null, i32** %3)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @Ok, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @expect(i32 %8, i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @FontStyleRegular, align 4
  %13 = load i32, i32* @UnitPixel, align 4
  %14 = call i32 @GdipCreateFont(i32* %11, i32 30, i32 %12, i32 %13, i32** %2)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @Ok, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @expect(i32 %15, i32 %16)
  %18 = call i32 @GdipGetFontHeightGivenDPI(i32* null, i32 96, i32* %4)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @InvalidParameter, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @expect(i32 %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @GdipGetFontHeightGivenDPI(i32* %22, i32 96, i32* null)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @InvalidParameter, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @GdipGetFontHeightGivenDPI(i32* %27, i32 96, i32* %4)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* @Ok, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @expect(i32 %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @expectf(double 0x40421B000431BDE8, i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @GdipDeleteFont(i32* %34)
  store i32 12345, i32* %4, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @FontStyleRegular, align 4
  %38 = load i32, i32* @UnitWorld, align 4
  %39 = call i32 @GdipCreateFont(i32* %36, i32 30, i32 %37, i32 %38, i32** %2)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* @Ok, align 4
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @expect(i32 %40, i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @GdipGetFontUnit(i32* %43, i32* %5)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* @Ok, align 4
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @expect(i32 %45, i32 %46)
  %48 = load i32, i32* @UnitWorld, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @expect(i32 %48, i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @GdipGetFontHeightGivenDPI(i32* %51, i32 96, i32* %4)
  store i32 %52, i32* %1, align 4
  %53 = load i32, i32* @Ok, align 4
  %54 = load i32, i32* %1, align 4
  %55 = call i32 @expect(i32 %53, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @expectf(double 0x40421B000431BDE8, i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @GdipDeleteFont(i32* %58)
  store i32 12345, i32* %4, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @FontStyleRegular, align 4
  %62 = load i32, i32* @UnitPoint, align 4
  %63 = call i32 @GdipCreateFont(i32* %60, i32 30, i32 %61, i32 %62, i32** %2)
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* @Ok, align 4
  %65 = load i32, i32* %1, align 4
  %66 = call i32 @expect(i32 %64, i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @GdipGetFontHeightGivenDPI(i32* %67, i32 96, i32* %4)
  store i32 %68, i32* %1, align 4
  %69 = load i32, i32* @Ok, align 4
  %70 = load i32, i32* %1, align 4
  %71 = call i32 @expect(i32 %69, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @expectf(double 0x4048240000000000, i32 %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @GdipDeleteFont(i32* %74)
  store i32 12345, i32* %4, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* @FontStyleRegular, align 4
  %78 = load i32, i32* @UnitInch, align 4
  %79 = call i32 @GdipCreateFont(i32* %76, i32 30, i32 %77, i32 %78, i32** %2)
  store i32 %79, i32* %1, align 4
  %80 = load i32, i32* @Ok, align 4
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @expect(i32 %80, i32 %81)
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @GdipGetFontUnit(i32* %83, i32* %5)
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* @Ok, align 4
  %86 = load i32, i32* %1, align 4
  %87 = call i32 @expect(i32 %85, i32 %86)
  %88 = load i32, i32* @UnitInch, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @expect(i32 %88, i32 %89)
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @GdipGetFontHeightGivenDPI(i32* %91, i32 96, i32* %4)
  store i32 %92, i32* %1, align 4
  %93 = load i32, i32* @Ok, align 4
  %94 = load i32, i32* %1, align 4
  %95 = call i32 @expect(i32 %93, i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @expectf(double 3.476250e+03, i32 %96)
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @GdipDeleteFont(i32* %98)
  store i32 12345, i32* %4, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* @FontStyleRegular, align 4
  %102 = load i32, i32* @UnitDocument, align 4
  %103 = call i32 @GdipCreateFont(i32* %100, i32 30, i32 %101, i32 %102, i32** %2)
  store i32 %103, i32* %1, align 4
  %104 = load i32, i32* @Ok, align 4
  %105 = load i32, i32* %1, align 4
  %106 = call i32 @expect(i32 %104, i32 %105)
  %107 = load i32*, i32** %2, align 8
  %108 = call i32 @GdipGetFontUnit(i32* %107, i32* %5)
  store i32 %108, i32* %1, align 4
  %109 = load i32, i32* @Ok, align 4
  %110 = load i32, i32* %1, align 4
  %111 = call i32 @expect(i32 %109, i32 %110)
  %112 = load i32, i32* @UnitDocument, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @expect(i32 %112, i32 %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @GdipGetFontHeightGivenDPI(i32* %115, i32 96, i32* %4)
  store i32 %116, i32* %1, align 4
  %117 = load i32, i32* @Ok, align 4
  %118 = load i32, i32* %1, align 4
  %119 = call i32 @expect(i32 %117, i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @expectf(double 1.158750e+01, i32 %120)
  %122 = load i32*, i32** %2, align 8
  %123 = call i32 @GdipDeleteFont(i32* %122)
  store i32 12345, i32* %4, align 4
  %124 = load i32*, i32** %3, align 8
  %125 = load i32, i32* @FontStyleRegular, align 4
  %126 = load i32, i32* @UnitMillimeter, align 4
  %127 = call i32 @GdipCreateFont(i32* %124, i32 30, i32 %125, i32 %126, i32** %2)
  store i32 %127, i32* %1, align 4
  %128 = load i32, i32* @Ok, align 4
  %129 = load i32, i32* %1, align 4
  %130 = call i32 @expect(i32 %128, i32 %129)
  %131 = load i32*, i32** %2, align 8
  %132 = call i32 @GdipGetFontUnit(i32* %131, i32* %5)
  store i32 %132, i32* %1, align 4
  %133 = load i32, i32* @Ok, align 4
  %134 = load i32, i32* %1, align 4
  %135 = call i32 @expect(i32 %133, i32 %134)
  %136 = load i32, i32* @UnitMillimeter, align 4
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @expect(i32 %136, i32 %137)
  %139 = load i32*, i32** %2, align 8
  %140 = call i32 @GdipGetFontHeightGivenDPI(i32* %139, i32 96, i32* %4)
  store i32 %140, i32* %1, align 4
  %141 = load i32, i32* @Ok, align 4
  %142 = load i32, i32* %1, align 4
  %143 = call i32 @expect(i32 %141, i32 %142)
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @expectf(double 0x40611B872085B185, i32 %144)
  %146 = load i32*, i32** %2, align 8
  %147 = call i32 @GdipDeleteFont(i32* %146)
  %148 = load i32*, i32** %3, align 8
  %149 = call i32 @GdipDeleteFontFamily(i32* %148)
  ret void
}

declare dso_local i32 @GdipCreateFontFamilyFromName(i32, i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateFont(i32*, i32, i32, i32, i32**) #1

declare dso_local i32 @GdipGetFontHeightGivenDPI(i32*, i32, i32*) #1

declare dso_local i32 @expectf(double, i32) #1

declare dso_local i32 @GdipDeleteFont(i32*) #1

declare dso_local i32 @GdipGetFontUnit(i32*, i32*) #1

declare dso_local i32 @GdipDeleteFontFamily(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

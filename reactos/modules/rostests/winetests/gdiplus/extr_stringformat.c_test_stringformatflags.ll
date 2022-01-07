; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_stringformat.c_test_stringformatflags.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_stringformat.c_test_stringformatflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LANG_NEUTRAL = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@StringFormatFlagsDirectionRightToLeft = common dso_local global i32 0, align 4
@StringFormatFlagsNoFontFallback = common dso_local global i32 0, align 4
@StringFormatFlagsDirectionVertical = common dso_local global i32 0, align 4
@StringFormatFlagsNoFitBlackBox = common dso_local global i32 0, align 4
@StringFormatFlagsDisplayFormatControl = common dso_local global i32 0, align 4
@StringFormatFlagsMeasureTrailingSpaces = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_stringformatflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_stringformatflags() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @LANG_NEUTRAL, align 4
  %5 = call i32 @GdipCreateStringFormat(i32 0, i32 %4, i32** %1)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @Ok, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @expect(i32 %6, i32 %7)
  %9 = call i32 @GdipSetStringFormatFlags(i32* null, i32 0)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* @InvalidParameter, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @expect(i32 %10, i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @GdipSetStringFormatFlags(i32* %13, i32 0)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* @Ok, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @expect(i32 %15, i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @GdipGetStringFormatFlags(i32* %18, i32* %3)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* @Ok, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @expect(i32 %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @expect(i32 0, i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = load i32, i32* @StringFormatFlagsDirectionRightToLeft, align 4
  %27 = call i32 @GdipSetStringFormatFlags(i32* %25, i32 %26)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* @Ok, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @GdipGetStringFormatFlags(i32* %31, i32* %3)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* @Ok, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @expect(i32 %33, i32 %34)
  %36 = load i32, i32* @StringFormatFlagsDirectionRightToLeft, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @expect(i32 %36, i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = load i32, i32* @StringFormatFlagsNoFontFallback, align 4
  %41 = call i32 @GdipSetStringFormatFlags(i32* %39, i32 %40)
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* @Ok, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @expect(i32 %42, i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @GdipGetStringFormatFlags(i32* %45, i32* %3)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* @Ok, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @expect(i32 %47, i32 %48)
  %50 = load i32, i32* @StringFormatFlagsNoFontFallback, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @expect(i32 %50, i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = load i32, i32* @StringFormatFlagsDirectionVertical, align 4
  %55 = load i32, i32* @StringFormatFlagsNoFitBlackBox, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @GdipSetStringFormatFlags(i32* %53, i32 %56)
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* @Ok, align 4
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @expect(i32 %58, i32 %59)
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @GdipGetStringFormatFlags(i32* %61, i32* %3)
  store i32 %62, i32* %2, align 4
  %63 = load i32, i32* @Ok, align 4
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @expect(i32 %63, i32 %64)
  %66 = load i32, i32* @StringFormatFlagsDirectionVertical, align 4
  %67 = load i32, i32* @StringFormatFlagsNoFitBlackBox, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @expect(i32 %68, i32 %69)
  %71 = load i32*, i32** %1, align 8
  %72 = load i32, i32* @StringFormatFlagsDisplayFormatControl, align 4
  %73 = load i32, i32* @StringFormatFlagsMeasureTrailingSpaces, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @GdipSetStringFormatFlags(i32* %71, i32 %74)
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* @Ok, align 4
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @expect(i32 %76, i32 %77)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @GdipGetStringFormatFlags(i32* %79, i32* %3)
  store i32 %80, i32* %2, align 4
  %81 = load i32, i32* @Ok, align 4
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @expect(i32 %81, i32 %82)
  %84 = load i32, i32* @StringFormatFlagsDisplayFormatControl, align 4
  %85 = load i32, i32* @StringFormatFlagsMeasureTrailingSpaces, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @expect(i32 %86, i32 %87)
  %89 = load i32*, i32** %1, align 8
  %90 = call i32 @GdipSetStringFormatFlags(i32* %89, i32 -559038737)
  store i32 %90, i32* %2, align 4
  %91 = load i32, i32* @Ok, align 4
  %92 = load i32, i32* %2, align 4
  %93 = call i32 @expect(i32 %91, i32 %92)
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 @GdipGetStringFormatFlags(i32* %94, i32* %3)
  store i32 %95, i32* %2, align 4
  %96 = load i32, i32* @Ok, align 4
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @expect(i32 %96, i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @expect(i32 -559038737, i32 %99)
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @GdipDeleteStringFormat(i32* %101)
  store i32 %102, i32* %2, align 4
  %103 = load i32, i32* @Ok, align 4
  %104 = load i32, i32* %2, align 4
  %105 = call i32 @expect(i32 %103, i32 %104)
  ret void
}

declare dso_local i32 @GdipCreateStringFormat(i32, i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipSetStringFormatFlags(i32*, i32) #1

declare dso_local i32 @GdipGetStringFormatFlags(i32*, i32*) #1

declare dso_local i32 @GdipDeleteStringFormat(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

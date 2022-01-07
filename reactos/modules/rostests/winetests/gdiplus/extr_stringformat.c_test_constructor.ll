; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_stringformat.c_test_constructor.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_stringformat.c_test_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LANG_NEUTRAL = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@HotkeyPrefixNone = common dso_local global i32 0, align 4
@StringAlignmentNear = common dso_local global i32 0, align 4
@StringTrimmingCharacter = common dso_local global i32 0, align 4
@StringDigitSubstituteUser = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_constructor() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @LANG_NEUTRAL, align 4
  %11 = call i32 @GdipCreateStringFormat(i32 0, i32 %10, i32** %1)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @Ok, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @expect(i32 %12, i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @GdipGetStringFormatAlign(i32* %15, i32* %5)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @GdipGetStringFormatLineAlign(i32* %17, i32* %6)
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @GdipGetStringFormatHotkeyPrefix(i32* %19, i32* %3)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @GdipGetStringFormatTrimming(i32* %21, i32* %7)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @GdipGetStringFormatDigitSubstitution(i32* %23, i32* %9, i32* %8)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @GdipGetStringFormatMeasurableCharacterRangeCount(i32* %25, i32* %4)
  %27 = load i32, i32* @HotkeyPrefixNone, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @expect(i32 %27, i32 %28)
  %30 = load i32, i32* @StringAlignmentNear, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = load i32, i32* @StringAlignmentNear, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @expect(i32 %33, i32 %34)
  %36 = load i32, i32* @StringTrimmingCharacter, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @expect(i32 %36, i32 %37)
  %39 = load i32, i32* @StringDigitSubstituteUser, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  %42 = load i32, i32* @LANG_NEUTRAL, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @expect(i32 %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @expect(i32 0, i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @GdipDeleteStringFormat(i32* %47)
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* @Ok, align 4
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @expect(i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @GdipCreateStringFormat(i32, i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipGetStringFormatAlign(i32*, i32*) #1

declare dso_local i32 @GdipGetStringFormatLineAlign(i32*, i32*) #1

declare dso_local i32 @GdipGetStringFormatHotkeyPrefix(i32*, i32*) #1

declare dso_local i32 @GdipGetStringFormatTrimming(i32*, i32*) #1

declare dso_local i32 @GdipGetStringFormatDigitSubstitution(i32*, i32*, i32*) #1

declare dso_local i32 @GdipGetStringFormatMeasurableCharacterRangeCount(i32*, i32*) #1

declare dso_local i32 @GdipDeleteStringFormat(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

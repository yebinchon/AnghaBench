; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_stringformat.c_test_getgenerictypographic.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_stringformat.c_test_getgenerictypographic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"expected same format object\0A\00", align 1
@StringFormatFlagsNoFitBlackBox = common dso_local global i32 0, align 4
@StringFormatFlagsLineLimit = common dso_local global i32 0, align 4
@StringFormatFlagsNoClip = common dso_local global i32 0, align 4
@HotkeyPrefixNone = common dso_local global i32 0, align 4
@StringAlignmentNear = common dso_local global i32 0, align 4
@StringTrimmingNone = common dso_local global i32 0, align 4
@StringDigitSubstituteUser = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@StringFormatFlagsNoWrap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getgenerictypographic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getgenerictypographic() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = call i32 @GdipStringFormatGetGenericTypographic(i32** null)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @InvalidParameter, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @expect(i32 %13, i32 %14)
  %16 = call i32 @GdipStringFormatGetGenericTypographic(i32** %1)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @Ok, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @expect(i32 %17, i32 %18)
  %20 = call i32 @GdipStringFormatGetGenericTypographic(i32** %2)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @Ok, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = icmp eq i32* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @GdipDeleteStringFormat(i32* %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @Ok, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @expect(i32 %31, i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @GdipGetStringFormatFlags(i32* %34, i32* %4)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @GdipGetStringFormatAlign(i32* %36, i32* %6)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @GdipGetStringFormatLineAlign(i32* %38, i32* %7)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @GdipGetStringFormatHotkeyPrefix(i32* %40, i32* %5)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @GdipGetStringFormatTrimming(i32* %42, i32* %8)
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @GdipGetStringFormatDigitSubstitution(i32* %44, i32* %10, i32* %9)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @GdipGetStringFormatTabStopCount(i32* %46, i32* %11)
  %48 = load i32, i32* @StringFormatFlagsNoFitBlackBox, align 4
  %49 = load i32, i32* @StringFormatFlagsLineLimit, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @StringFormatFlagsNoClip, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @expect(i32 %52, i32 %53)
  %55 = load i32, i32* @HotkeyPrefixNone, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @expect(i32 %55, i32 %56)
  %58 = load i32, i32* @StringAlignmentNear, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @expect(i32 %58, i32 %59)
  %61 = load i32, i32* @StringAlignmentNear, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @expect(i32 %61, i32 %62)
  %64 = load i32, i32* @StringTrimmingNone, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @expect(i32 %64, i32 %65)
  %67 = load i32, i32* @StringDigitSubstituteUser, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @expect(i32 %67, i32 %68)
  %70 = load i32, i32* @LANG_NEUTRAL, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @expect(i32 %70, i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @expect(i32 0, i32 %73)
  %75 = load i32*, i32** %1, align 8
  %76 = load i32, i32* @StringFormatFlagsNoWrap, align 4
  %77 = call i32 @GdipSetStringFormatFlags(i32* %75, i32 %76)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* @Ok, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @expect(i32 %78, i32 %79)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @GdipGetStringFormatFlags(i32* %81, i32* %4)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* @Ok, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @expect(i32 %83, i32 %84)
  %86 = load i32, i32* @StringFormatFlagsNoWrap, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @expect(i32 %86, i32 %87)
  %89 = load i32*, i32** %1, align 8
  %90 = call i32 @GdipDeleteStringFormat(i32* %89)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* @Ok, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @expect(i32 %91, i32 %92)
  %94 = call i32 @GdipStringFormatGetGenericTypographic(i32** %1)
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* @Ok, align 4
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @expect(i32 %95, i32 %96)
  %98 = load i32*, i32** %1, align 8
  %99 = call i32 @GdipGetStringFormatFlags(i32* %98, i32* %4)
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* @Ok, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @expect(i32 %100, i32 %101)
  %103 = load i32, i32* @StringFormatFlagsNoWrap, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @expect(i32 %103, i32 %104)
  %106 = load i32*, i32** %1, align 8
  %107 = call i32 @GdipDeleteStringFormat(i32* %106)
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* @Ok, align 4
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @expect(i32 %108, i32 %109)
  ret void
}

declare dso_local i32 @GdipStringFormatGetGenericTypographic(i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipDeleteStringFormat(i32*) #1

declare dso_local i32 @GdipGetStringFormatFlags(i32*, i32*) #1

declare dso_local i32 @GdipGetStringFormatAlign(i32*, i32*) #1

declare dso_local i32 @GdipGetStringFormatLineAlign(i32*, i32*) #1

declare dso_local i32 @GdipGetStringFormatHotkeyPrefix(i32*, i32*) #1

declare dso_local i32 @GdipGetStringFormatTrimming(i32*, i32*) #1

declare dso_local i32 @GdipGetStringFormatDigitSubstitution(i32*, i32*, i32*) #1

declare dso_local i32 @GdipGetStringFormatTabStopCount(i32*, i32*) #1

declare dso_local i32 @GdipSetStringFormatFlags(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

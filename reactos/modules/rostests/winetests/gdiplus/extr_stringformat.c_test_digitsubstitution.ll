; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_stringformat.c_test_digitsubstitution.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_stringformat.c_test_digitsubstitution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LANG_RUSSIAN = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@StringDigitSubstituteNone = common dso_local global i32 0, align 4
@StringDigitSubstituteUser = common dso_local global i32 0, align 4
@LANG_CHINESE = common dso_local global i32 0, align 4
@SUBLANG_CHINESE_TRADITIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_digitsubstitution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_digitsubstitution() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @LANG_RUSSIAN, align 4
  %6 = call i32 @GdipCreateStringFormat(i32 0, i32 %5, i32** %1)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @Ok, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @expect(i32 %7, i32 %8)
  %10 = call i32 @GdipGetStringFormatDigitSubstitution(i32* null, i32* null, i32* null)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @InvalidParameter, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @expect(i32 %11, i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @GdipGetStringFormatDigitSubstitution(i32* %14, i32* null, i32* null)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @Ok, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @expect(i32 %16, i32 %17)
  %19 = call i32 @GdipGetStringFormatDigitSubstitution(i32* null, i32* %4, i32* null)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* @InvalidParameter, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @expect(i32 %20, i32 %21)
  %23 = call i32 @GdipGetStringFormatDigitSubstitution(i32* null, i32* null, i32* %3)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* @InvalidParameter, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = call i32 @GdipGetStringFormatDigitSubstitution(i32* null, i32* %4, i32* %3)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* @InvalidParameter, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = load i32, i32* @LANG_NEUTRAL, align 4
  %32 = load i32, i32* @StringDigitSubstituteNone, align 4
  %33 = call i32 @GdipSetStringFormatDigitSubstitution(i32* null, i32 %31, i32 %32)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* @InvalidParameter, align 4
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @expect(i32 %34, i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @GdipGetStringFormatDigitSubstitution(i32* %37, i32* %4, i32* %3)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* @Ok, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  %42 = load i32, i32* @StringDigitSubstituteUser, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @expect(i32 %42, i32 %43)
  %45 = load i32, i32* @LANG_NEUTRAL, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @expect(i32 %45, i32 %46)
  %48 = load i32, i32* @StringDigitSubstituteNone, align 4
  store i32 %48, i32* %3, align 4
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @GdipGetStringFormatDigitSubstitution(i32* %49, i32* null, i32* %3)
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* @Ok, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @expect(i32 %51, i32 %52)
  %54 = load i32, i32* @StringDigitSubstituteUser, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @expect(i32 %54, i32 %55)
  %57 = load i32, i32* @LANG_RUSSIAN, align 4
  store i32 %57, i32* %4, align 4
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @GdipGetStringFormatDigitSubstitution(i32* %58, i32* %4, i32* null)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* @Ok, align 4
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @expect(i32 %60, i32 %61)
  %63 = load i32, i32* @LANG_NEUTRAL, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @expect(i32 %63, i32 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = load i32, i32* @LANG_CHINESE, align 4
  %68 = load i32, i32* @SUBLANG_CHINESE_TRADITIONAL, align 4
  %69 = call i32 @MAKELANGID(i32 %67, i32 %68)
  %70 = load i32, i32* @StringDigitSubstituteUser, align 4
  %71 = call i32 @GdipSetStringFormatDigitSubstitution(i32* %66, i32 %69, i32 %70)
  store i32 %71, i32* %2, align 4
  %72 = load i32, i32* @Ok, align 4
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @expect(i32 %72, i32 %73)
  %75 = load i32, i32* @StringDigitSubstituteNone, align 4
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @LANG_RUSSIAN, align 4
  store i32 %76, i32* %4, align 4
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @GdipGetStringFormatDigitSubstitution(i32* %77, i32* %4, i32* %3)
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* @Ok, align 4
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @expect(i32 %79, i32 %80)
  %82 = load i32, i32* @StringDigitSubstituteUser, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @expect(i32 %82, i32 %83)
  %85 = load i32, i32* @LANG_CHINESE, align 4
  %86 = load i32, i32* @SUBLANG_CHINESE_TRADITIONAL, align 4
  %87 = call i32 @MAKELANGID(i32 %85, i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @expect(i32 %87, i32 %88)
  %90 = load i32*, i32** %1, align 8
  %91 = call i32 @GdipDeleteStringFormat(i32* %90)
  store i32 %91, i32* %2, align 4
  %92 = load i32, i32* @Ok, align 4
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @expect(i32 %92, i32 %93)
  ret void
}

declare dso_local i32 @GdipCreateStringFormat(i32, i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipGetStringFormatDigitSubstitution(i32*, i32*, i32*) #1

declare dso_local i32 @GdipSetStringFormatDigitSubstitution(i32*, i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @GdipDeleteStringFormat(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

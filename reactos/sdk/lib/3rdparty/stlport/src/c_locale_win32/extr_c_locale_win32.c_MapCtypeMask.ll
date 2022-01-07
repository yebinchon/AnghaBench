; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c_MapCtypeMask.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c_MapCtypeMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C1_UPPER = common dso_local global i32 0, align 4
@_Locale_UPPER = common dso_local global i16 0, align 2
@_Locale_PRINT = common dso_local global i16 0, align 2
@C1_LOWER = common dso_local global i32 0, align 4
@_Locale_LOWER = common dso_local global i16 0, align 2
@C1_DIGIT = common dso_local global i32 0, align 4
@_Locale_DIGIT = common dso_local global i16 0, align 2
@C1_SPACE = common dso_local global i32 0, align 4
@_Locale_SPACE = common dso_local global i16 0, align 2
@C1_PUNCT = common dso_local global i32 0, align 4
@_Locale_PUNCT = common dso_local global i16 0, align 2
@C1_XDIGIT = common dso_local global i32 0, align 4
@_Locale_XDIGIT = common dso_local global i16 0, align 2
@C1_ALPHA = common dso_local global i32 0, align 4
@_Locale_ALPHA = common dso_local global i16 0, align 2
@C1_CNTRL = common dso_local global i16 0, align 2
@_Locale_CNTRL = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @MapCtypeMask(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  store i16 0, i16* %3, align 2
  %4 = load i32, i32* @C1_UPPER, align 4
  %5 = load i16, i16* @_Locale_UPPER, align 2
  %6 = zext i16 %5 to i32
  %7 = load i16, i16* @_Locale_PRINT, align 2
  %8 = zext i16 %7 to i32
  %9 = or i32 %6, %8
  %10 = trunc i32 %9 to i16
  %11 = call i32 @MAP(i32 %4, i16 zeroext %10)
  %12 = load i32, i32* @C1_LOWER, align 4
  %13 = load i16, i16* @_Locale_LOWER, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @_Locale_PRINT, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %14, %16
  %18 = trunc i32 %17 to i16
  %19 = call i32 @MAP(i32 %12, i16 zeroext %18)
  %20 = load i32, i32* @C1_DIGIT, align 4
  %21 = load i16, i16* @_Locale_DIGIT, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @_Locale_PRINT, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %22, %24
  %26 = trunc i32 %25 to i16
  %27 = call i32 @MAP(i32 %20, i16 zeroext %26)
  %28 = load i32, i32* @C1_SPACE, align 4
  %29 = load i16, i16* @_Locale_SPACE, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* @_Locale_PRINT, align 2
  %32 = zext i16 %31 to i32
  %33 = or i32 %30, %32
  %34 = trunc i32 %33 to i16
  %35 = call i32 @MAP(i32 %28, i16 zeroext %34)
  %36 = load i32, i32* @C1_PUNCT, align 4
  %37 = load i16, i16* @_Locale_PUNCT, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* @_Locale_PRINT, align 2
  %40 = zext i16 %39 to i32
  %41 = or i32 %38, %40
  %42 = trunc i32 %41 to i16
  %43 = call i32 @MAP(i32 %36, i16 zeroext %42)
  %44 = load i32, i32* @C1_XDIGIT, align 4
  %45 = load i16, i16* @_Locale_XDIGIT, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* @_Locale_PRINT, align 2
  %48 = zext i16 %47 to i32
  %49 = or i32 %46, %48
  %50 = trunc i32 %49 to i16
  %51 = call i32 @MAP(i32 %44, i16 zeroext %50)
  %52 = load i32, i32* @C1_ALPHA, align 4
  %53 = load i16, i16* @_Locale_ALPHA, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* @_Locale_PRINT, align 2
  %56 = zext i16 %55 to i32
  %57 = or i32 %54, %56
  %58 = trunc i32 %57 to i16
  %59 = call i32 @MAP(i32 %52, i16 zeroext %58)
  %60 = load i16, i16* %2, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* @C1_CNTRL, align 2
  %63 = zext i16 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %1
  %67 = load i16, i16* @_Locale_CNTRL, align 2
  %68 = zext i16 %67 to i32
  %69 = load i16, i16* %3, align 2
  %70 = zext i16 %69 to i32
  %71 = or i32 %70, %68
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %3, align 2
  %73 = load i16, i16* @_Locale_PRINT, align 2
  %74 = zext i16 %73 to i32
  %75 = xor i32 %74, -1
  %76 = load i16, i16* %3, align 2
  %77 = zext i16 %76 to i32
  %78 = and i32 %77, %75
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %3, align 2
  br label %80

80:                                               ; preds = %66, %1
  %81 = load i16, i16* %3, align 2
  ret i16 %81
}

declare dso_local i32 @MAP(i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

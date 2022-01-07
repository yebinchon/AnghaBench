; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_ConvertDefaultLocale.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_ConvertDefaultLocale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_UK = common dso_local global i32 0, align 4
@LANG_JAPANESE = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@SORT_JAPANESE_UNICODE = common dso_local global i32 0, align 4
@SUBLANG_NEUTRAL = common dso_local global i32 0, align 4
@LANG_INVARIANT = common dso_local global i32 0, align 4
@LANG_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@LANG_USER_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_NEUTRAL = common dso_local global i32 0, align 4
@LOCALE_INVARIANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected lcid = %08x, got %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ConvertDefaultLocale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ConvertDefaultLocale() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @LANG_ENGLISH, align 4
  %3 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %4 = load i32, i32* @SORT_DEFAULT, align 4
  %5 = call i32 @TEST_LCID(i32 %2, i32 %3, i32 %4)
  %6 = load i32, i32* @LANG_ENGLISH, align 4
  %7 = load i32, i32* @SUBLANG_ENGLISH_UK, align 4
  %8 = load i32, i32* @SORT_DEFAULT, align 4
  %9 = call i32 @TEST_LCID(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @LANG_JAPANESE, align 4
  %11 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %12 = load i32, i32* @SORT_DEFAULT, align 4
  %13 = call i32 @TEST_LCID(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @LANG_JAPANESE, align 4
  %15 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %16 = load i32, i32* @SORT_JAPANESE_UNICODE, align 4
  %17 = call i32 @TEST_LCID(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @LANG_ENGLISH, align 4
  %19 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %20 = load i32, i32* @SORT_DEFAULT, align 4
  %21 = call i32 @MKLCID(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @LANG_ENGLISH, align 4
  %23 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %24 = load i32, i32* @SORT_DEFAULT, align 4
  %25 = call i32 @MKLCID(i32 %22, i32 %23, i32 %24)
  %26 = call i32 @LCID_RES(i32 %21, i32 %25)
  %27 = load i32, i32* @LANG_JAPANESE, align 4
  %28 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %29 = load i32, i32* @SORT_DEFAULT, align 4
  %30 = call i32 @MKLCID(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @LANG_JAPANESE, align 4
  %32 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %33 = load i32, i32* @SORT_DEFAULT, align 4
  %34 = call i32 @MKLCID(i32 %31, i32 %32, i32 %33)
  %35 = call i32 @LCID_RES(i32 %30, i32 %34)
  %36 = load i32, i32* @LANG_INVARIANT, align 4
  %37 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %38 = load i32, i32* @SORT_DEFAULT, align 4
  %39 = call i32 @TEST_LCID(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @LANG_SYSTEM_DEFAULT, align 4
  %41 = load i32, i32* @SORT_JAPANESE_UNICODE, align 4
  %42 = call i32 @TEST_LCIDLANG(i32 %40, i32 %41)
  %43 = load i32, i32* @LANG_USER_DEFAULT, align 4
  %44 = load i32, i32* @SORT_JAPANESE_UNICODE, align 4
  %45 = call i32 @TEST_LCIDLANG(i32 %43, i32 %44)
  %46 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %47 = call i32 (...) @GetSystemDefaultLCID()
  %48 = call i32 @LCID_RES(i32 %46, i32 %47)
  %49 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %50 = call i32 (...) @GetUserDefaultLCID()
  %51 = call i32 @LCID_RES(i32 %49, i32 %50)
  %52 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %53 = call i32 (...) @GetUserDefaultLCID()
  %54 = call i32 @LCID_RES(i32 %52, i32 %53)
  %55 = load i32, i32* @LOCALE_INVARIANT, align 4
  %56 = call i32 @ConvertDefaultLocale(i32 %55)
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* @LOCALE_INVARIANT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %0
  %61 = load i32, i32* %1, align 4
  %62 = icmp eq i32 %61, 1151
  %63 = zext i1 %62 to i32
  %64 = call i64 @broken(i32 %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %60, %0
  %67 = phi i1 [ true, %0 ], [ %65, %60 ]
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* @LOCALE_INVARIANT, align 4
  %70 = load i32, i32* %1, align 4
  %71 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  ret void
}

declare dso_local i32 @TEST_LCID(i32, i32, i32) #1

declare dso_local i32 @LCID_RES(i32, i32) #1

declare dso_local i32 @MKLCID(i32, i32, i32) #1

declare dso_local i32 @TEST_LCIDLANG(i32, i32) #1

declare dso_local i32 @GetSystemDefaultLCID(...) #1

declare dso_local i32 @GetUserDefaultLCID(...) #1

declare dso_local i32 @ConvertDefaultLocale(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

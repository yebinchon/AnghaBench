; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_fontfamily.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_fontfamily.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LF_FACESIZE = common dso_local global i32 0, align 4
@Tahoma = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i64 0, align 8
@nonexistent = common dso_local global i32 0, align 4
@FontFamilyNotFound = common dso_local global i64 0, align 8
@MSSansSerif = common dso_local global i32 0, align 4
@Ok = common dso_local global i64 0, align 8
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fontfamily to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fontfamily() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @LF_FACESIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @Tahoma, align 4
  %11 = call i64 @GdipCreateFontFamilyFromName(i32 %10, i32* null, i32** null)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* @InvalidParameter, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @expect(i64 %12, i64 %13)
  %15 = load i32, i32* @nonexistent, align 4
  %16 = call i64 @GdipCreateFontFamilyFromName(i32 %15, i32* null, i32** %1)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* @FontFamilyNotFound, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @expect(i64 %17, i64 %18)
  %20 = load i32, i32* @MSSansSerif, align 4
  %21 = call i64 @GdipCreateFontFamilyFromName(i32 %20, i32* null, i32** %1)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* @FontFamilyNotFound, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @expect(i64 %22, i64 %23)
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @Ok, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %0
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @GdipDeleteFontFamily(i32* %29)
  br label %31

31:                                               ; preds = %28, %0
  %32 = load i32, i32* @Tahoma, align 4
  %33 = call i64 @GdipCreateFontFamilyFromName(i32 %32, i32* null, i32** %1)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* @Ok, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @expect(i64 %34, i64 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* @LANG_NEUTRAL, align 4
  %39 = call i64 @GdipGetFamilyName(i32* %37, i32* %9, i32 %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* @Ok, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @expect(i64 %40, i64 %41)
  %43 = load i32, i32* @Tahoma, align 4
  %44 = call i64 @lstrcmpiW(i32* %9, i32 %43)
  %45 = call i32 @expect(i64 0, i64 %44)
  %46 = mul nuw i64 4, %7
  %47 = trunc i64 %46 to i32
  %48 = call i32 @ZeroMemory(i32* %9, i32 %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i64 @GdipCloneFontFamily(i32* %49, i32** %2)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* @Ok, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @expect(i64 %51, i64 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @GdipDeleteFontFamily(i32* %54)
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* @LANG_NEUTRAL, align 4
  %58 = call i64 @GdipGetFamilyName(i32* %56, i32* %9, i32 %57)
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* @Ok, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @expect(i64 %59, i64 %60)
  %62 = load i32, i32* @Tahoma, align 4
  %63 = call i64 @lstrcmpiW(i32* %9, i32 %62)
  %64 = call i32 @expect(i64 0, i64 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @GdipDeleteFontFamily(i32* %65)
  %67 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %67)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GdipCreateFontFamilyFromName(i32, i32*, i32**) #2

declare dso_local i32 @expect(i64, i64) #2

declare dso_local i32 @GdipDeleteFontFamily(i32*) #2

declare dso_local i64 @GdipGetFamilyName(i32*, i32*, i32) #2

declare dso_local i64 @lstrcmpiW(i32*, i32) #2

declare dso_local i32 @ZeroMemory(i32*, i32) #2

declare dso_local i64 @GdipCloneFontFamily(i32*, i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

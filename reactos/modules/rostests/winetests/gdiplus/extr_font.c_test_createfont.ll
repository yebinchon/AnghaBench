; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_createfont.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_createfont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LF_FACESIZE = common dso_local global i32 0, align 4
@nonexistent = common dso_local global i32 0, align 4
@FontFamilyNotFound = common dso_local global i64 0, align 8
@InvalidParameter = common dso_local global i64 0, align 8
@Tahoma = common dso_local global i32 0, align 4
@Ok = common dso_local global i64 0, align 8
@FontStyleRegular = common dso_local global i32 0, align 4
@UnitPoint = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected Tahoma, got %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Expected 12, got %f\0A\00", align 1
@UnitWorld = common dso_local global i64 0, align 8
@UnitMillimeter = common dso_local global i64 0, align 8
@UnitDisplay = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Expected 24, got %f (with unit: %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get font unit, %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_createfont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_createfont() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %3, align 8
  %10 = load i32, i32* @LF_FACESIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i32, i32* @nonexistent, align 4
  %15 = call i64 @GdipCreateFontFamilyFromName(i32 %14, i32* null, i32** %1)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* @FontFamilyNotFound, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @expect(i64 %16, i64 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @GdipDeleteFont(i32* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* @InvalidParameter, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @expect(i64 %21, i64 %22)
  %24 = load i32, i32* @Tahoma, align 4
  %25 = call i64 @GdipCreateFontFamilyFromName(i32 %24, i32* null, i32** %1)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* @Ok, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @expect(i64 %26, i64 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = load i32, i32* @FontStyleRegular, align 4
  %31 = load i64, i64* @UnitPoint, align 8
  %32 = call i64 @GdipCreateFont(i32* %29, i32 12, i32 %30, i64 %31, i32** %3)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* @Ok, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @expect(i64 %33, i64 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @GdipGetFontUnit(i32* %36, i64* %5)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* @Ok, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @expect(i64 %38, i64 %39)
  %41 = load i64, i64* @UnitPoint, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @expect(i64 %41, i64 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i64 @GdipGetFamily(i32* %44, i32** %2)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* @Ok, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @expect(i64 %46, i64 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i64 @GdipGetFamilyName(i32* %49, i32* %13, i32 0)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* @Ok, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @expect(i64 %51, i64 %52)
  %54 = load i32, i32* @Tahoma, align 4
  %55 = call i64 @lstrcmpiW(i32 %54, i32* %13)
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @wine_dbgstr_w(i32* %13)
  %59 = call i32 (i32, i8*, i64, ...) @ok(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %2, align 8
  %61 = call i64 @GdipDeleteFontFamily(i32* %60)
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* @Ok, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @expect(i64 %62, i64 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @GdipGetFontSize(i32* %65, i32* %7)
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 12
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = call i32 (i32, i8*, i64, ...) @ok(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i64 @GdipDeleteFont(i32* %73)
  %75 = load i64, i64* @UnitWorld, align 8
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %115, %0
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @UnitMillimeter, align 8
  %79 = icmp sle i64 %77, %78
  br i1 %79, label %80, label %118

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @UnitDisplay, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %115

85:                                               ; preds = %80
  %86 = load i32*, i32** %1, align 8
  %87 = load i32, i32* @FontStyleRegular, align 4
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @GdipCreateFont(i32* %86, i32 24, i32 %87, i64 %88, i32** %3)
  store i64 %89, i64* %4, align 8
  %90 = load i64, i64* @Ok, align 8
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @expect(i64 %90, i64 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @GdipGetFontSize(i32* %93, i32* %7)
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 24
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %6, align 8
  %101 = call i32 (i32, i8*, i64, ...) @ok(i32 %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %99, i64 %100)
  %102 = load i32*, i32** %3, align 8
  %103 = call i64 @GdipGetFontUnit(i32* %102, i64* %5)
  store i64 %103, i64* %4, align 8
  %104 = load i64, i64* %4, align 8
  %105 = load i64, i64* @Ok, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i64, i64* %4, align 8
  %109 = call i32 (i32, i8*, i64, ...) @ok(i32 %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %108)
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @expect(i64 %110, i64 %111)
  %113 = load i32*, i32** %3, align 8
  %114 = call i64 @GdipDeleteFont(i32* %113)
  br label %115

115:                                              ; preds = %85, %84
  %116 = load i64, i64* %6, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %6, align 8
  br label %76

118:                                              ; preds = %76
  %119 = load i32*, i32** %1, align 8
  %120 = call i64 @GdipDeleteFontFamily(i32* %119)
  %121 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %121)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GdipCreateFontFamilyFromName(i32, i32*, i32**) #2

declare dso_local i32 @expect(i64, i64) #2

declare dso_local i64 @GdipDeleteFont(i32*) #2

declare dso_local i64 @GdipCreateFont(i32*, i32, i32, i64, i32**) #2

declare dso_local i64 @GdipGetFontUnit(i32*, i64*) #2

declare dso_local i64 @GdipGetFamily(i32*, i32**) #2

declare dso_local i64 @GdipGetFamilyName(i32*, i32*, i32) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i64 @lstrcmpiW(i32, i32*) #2

declare dso_local i64 @wine_dbgstr_w(i32*) #2

declare dso_local i64 @GdipDeleteFontFamily(i32*) #2

declare dso_local i32 @GdipGetFontSize(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

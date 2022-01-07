; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_long_name.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_long_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_long_name.path_longname = internal constant [18 x i8] c"wine_longname.ttf\00", align 16
@LF_FACESIZE = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"GdipNewPrivateFontCollection failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"GdipPrivateAddFontFile failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"GdipGetFontCollectionFamilyCount failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"expected num_families to be 1, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"GdipGetFontCollectionFamilyList failed: %d\0A\00", align 1
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"GdipGetFamilyName failed: %d\0A\00", align 1
@FontStyleRegular = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"GdipCreateFont failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"GdipDeleteFont failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"GdipDeletePrivateFontCollection failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_long_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_long_name() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  %13 = load i32, i32* @LF_FACESIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = call i32 @GdipNewPrivateFontCollection(i32** %4)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @Ok, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @create_testfontfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_long_name.path_longname, i64 0, i64 0), i32 1, i8* %12)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @GdipPrivateAddFontFile(i32* %24, i8* %12)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @Ok, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @GdipGetFontCollectionFamilyCount(i32* %32, i32* %5)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @Ok, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 1
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @GdipGetFontCollectionFamilyList(i32* %45, i32 %46, i32** %6, i32* %5)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @Ok, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @LANG_NEUTRAL, align 4
  %56 = call i32 @GdipGetFamilyName(i32* %54, i8* %15, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @Ok, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @FontStyleRegular, align 4
  %65 = load i32, i32* @UnitPixel, align 4
  %66 = call i32 @GdipCreateFont(i32* %63, double 2.560000e+02, i32 %64, i32 %65, i32** %8)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @Ok, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @GdipDeleteFont(i32* %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @Ok, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %79)
  %81 = call i32 @GdipDeletePrivateFontCollection(i32** %4)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @Ok, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  %88 = call i32 @DELETE_FONTFILE(i8* %12)
  %89 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %89)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GdipNewPrivateFontCollection(i32**) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @create_testfontfile(i8*, i32, i8*) #2

declare dso_local i32 @GdipPrivateAddFontFile(i32*, i8*) #2

declare dso_local i32 @GdipGetFontCollectionFamilyCount(i32*, i32*) #2

declare dso_local i32 @GdipGetFontCollectionFamilyList(i32*, i32, i32**, i32*) #2

declare dso_local i32 @GdipGetFamilyName(i32*, i8*, i32) #2

declare dso_local i32 @GdipCreateFont(i32*, double, i32, i32, i32**) #2

declare dso_local i32 @GdipDeleteFont(i32*) #2

declare dso_local i32 @GdipDeletePrivateFontCollection(i32**) #2

declare dso_local i32 @DELETE_FONTFILE(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

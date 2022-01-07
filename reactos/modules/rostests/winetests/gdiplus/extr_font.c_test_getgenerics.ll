; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_getgenerics.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_getgenerics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LF_FACESIZE = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@FontFamilyNotFound = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"Sans Serif\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Serif\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Monospace\00", align 1
@winetest_platform = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"wine\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"You may need to install either the Microsoft Web Fonts or the Liberation Fonts\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Sans Serif and Serif families should be different: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Sans Serif and Monospace families should be different: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Serif and Monospace families should be different: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getgenerics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getgenerics() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @LF_FACESIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @LF_FACESIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %15 = load i32, i32* @LF_FACESIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %18 = call i64 @GdipGetGenericFontFamilySansSerif(i32** %2)
  store i64 %18, i64* %1, align 8
  %19 = load i32, i32* @Ok, align 4
  %20 = load i64, i64* %1, align 8
  %21 = call i32 @expect(i32 %19, i64 %20)
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @FontFamilyNotFound, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %0
  store i32 1, i32* %7, align 4
  br label %29

26:                                               ; preds = %0
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @check_family(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %27, i32* %11)
  br label %29

29:                                               ; preds = %26, %25
  %30 = call i64 @GdipGetGenericFontFamilySerif(i32** %2)
  store i64 %30, i64* %1, align 8
  %31 = load i32, i32* @Ok, align 4
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @expect(i32 %31, i64 %32)
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* @FontFamilyNotFound, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @check_family(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %39, i32* %14)
  br label %41

41:                                               ; preds = %38, %37
  %42 = call i64 @GdipGetGenericFontFamilyMonospace(i32** %2)
  store i64 %42, i64* %1, align 8
  %43 = load i32, i32* @Ok, align 4
  %44 = load i64, i64* %1, align 8
  %45 = call i32 @expect(i32 %43, i64 %44)
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @FontFamilyNotFound, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 1, i32* %7, align 4
  br label %53

50:                                               ; preds = %41
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @check_family(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %51, i32* %17)
  br label %53

53:                                               ; preds = %50, %49
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* @winetest_platform, align 4
  %58 = call i64 @strcmp(i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @trace(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56, %53
  %63 = call i64 @lstrcmpiW(i32* %11, i32* %14)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @wine_dbgstr_w(i32* %11)
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = call i64 @lstrcmpiW(i32* %11, i32* %17)
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @wine_dbgstr_w(i32* %11)
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  %73 = call i64 @lstrcmpiW(i32* %14, i32* %17)
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @wine_dbgstr_w(i32* %14)
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  %78 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %78)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GdipGetGenericFontFamilySansSerif(i32**) #2

declare dso_local i32 @expect(i32, i64) #2

declare dso_local i32 @check_family(i8*, i32*, i32*) #2

declare dso_local i64 @GdipGetGenericFontFamilySerif(i32**) #2

declare dso_local i64 @GdipGetGenericFontFamilyMonospace(i32**) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @trace(i8*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i64 @lstrcmpiW(i32*, i32*) #2

declare dso_local i32 @wine_dbgstr_w(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

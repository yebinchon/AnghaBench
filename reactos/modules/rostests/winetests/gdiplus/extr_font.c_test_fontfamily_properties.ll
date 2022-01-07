; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_fontfamily_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_fontfamily_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Tahoma = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@FontStyleRegular = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Expected 2472, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Expected 2048, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Expected 2049, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Expected 423, got %d\0A\00", align 1
@TimesNewRoman = common dso_local global i32 0, align 4
@FontFamilyNotFound = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Times New Roman not installed\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Expected 2355, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Expected 1825, got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Expected 443 got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fontfamily_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fontfamily_properties() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @Tahoma, align 4
  %5 = call i64 @GdipCreateFontFamilyFromName(i32 %4, i32* null, i32** %1)
  store i64 %5, i64* %2, align 8
  %6 = load i32, i32* @Ok, align 4
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @expect(i32 %6, i64 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* @FontStyleRegular, align 4
  %11 = call i64 @GdipGetLineSpacing(i32* %9, i32 %10, i32* %3)
  store i64 %11, i64* %2, align 8
  %12 = load i32, i32* @Ok, align 4
  %13 = load i64, i64* %2, align 8
  %14 = call i32 @expect(i32 %12, i64 %13)
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 2472
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %3, align 4
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* @FontStyleRegular, align 4
  %22 = call i64 @GdipGetEmHeight(i32* %20, i32 %21, i32* %3)
  store i64 %22, i64* %2, align 8
  %23 = load i32, i32* @Ok, align 4
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @expect(i32 %23, i64 %24)
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 2048
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 0, i32* %3, align 4
  %31 = load i32*, i32** %1, align 8
  %32 = load i32, i32* @FontStyleRegular, align 4
  %33 = call i64 @GdipGetCellAscent(i32* %31, i32 %32, i32* %3)
  store i64 %33, i64* %2, align 8
  %34 = load i32, i32* @Ok, align 4
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @expect(i32 %34, i64 %35)
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 2049
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 0, i32* %3, align 4
  %42 = load i32*, i32** %1, align 8
  %43 = load i32, i32* @FontStyleRegular, align 4
  %44 = call i64 @GdipGetCellDescent(i32* %42, i32 %43, i32* %3)
  store i64 %44, i64* %2, align 8
  %45 = load i32, i32* @Ok, align 4
  %46 = load i64, i64* %2, align 8
  %47 = call i32 @expect(i32 %45, i64 %46)
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 423
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @GdipDeleteFontFamily(i32* %53)
  %55 = load i32, i32* @TimesNewRoman, align 4
  %56 = call i64 @GdipCreateFontFamilyFromName(i32 %55, i32* null, i32** %1)
  store i64 %56, i64* %2, align 8
  %57 = load i64, i64* %2, align 8
  %58 = load i64, i64* @FontFamilyNotFound, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %0
  %61 = call i32 @skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %109

62:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  %63 = load i32*, i32** %1, align 8
  %64 = load i32, i32* @FontStyleRegular, align 4
  %65 = call i64 @GdipGetLineSpacing(i32* %63, i32 %64, i32* %3)
  store i64 %65, i64* %2, align 8
  %66 = load i32, i32* @Ok, align 4
  %67 = load i64, i64* %2, align 8
  %68 = call i32 @expect(i32 %66, i64 %67)
  %69 = load i32, i32* %3, align 4
  %70 = icmp eq i32 %69, 2355
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  store i32 0, i32* %3, align 4
  %74 = load i32*, i32** %1, align 8
  %75 = load i32, i32* @FontStyleRegular, align 4
  %76 = call i64 @GdipGetEmHeight(i32* %74, i32 %75, i32* %3)
  store i64 %76, i64* %2, align 8
  %77 = load i32, i32* @Ok, align 4
  %78 = load i64, i64* %2, align 8
  %79 = call i32 @expect(i32 %77, i64 %78)
  %80 = load i32, i32* %3, align 4
  %81 = icmp eq i32 %80, 2048
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  store i32 0, i32* %3, align 4
  %85 = load i32*, i32** %1, align 8
  %86 = load i32, i32* @FontStyleRegular, align 4
  %87 = call i64 @GdipGetCellAscent(i32* %85, i32 %86, i32* %3)
  store i64 %87, i64* %2, align 8
  %88 = load i32, i32* @Ok, align 4
  %89 = load i64, i64* %2, align 8
  %90 = call i32 @expect(i32 %88, i64 %89)
  %91 = load i32, i32* %3, align 4
  %92 = icmp eq i32 %91, 1825
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  store i32 0, i32* %3, align 4
  %96 = load i32*, i32** %1, align 8
  %97 = load i32, i32* @FontStyleRegular, align 4
  %98 = call i64 @GdipGetCellDescent(i32* %96, i32 %97, i32* %3)
  store i64 %98, i64* %2, align 8
  %99 = load i32, i32* @Ok, align 4
  %100 = load i64, i64* %2, align 8
  %101 = call i32 @expect(i32 %99, i64 %100)
  %102 = load i32, i32* %3, align 4
  %103 = icmp eq i32 %102, 443
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %1, align 8
  %108 = call i32 @GdipDeleteFontFamily(i32* %107)
  br label %109

109:                                              ; preds = %62, %60
  ret void
}

declare dso_local i64 @GdipCreateFontFamilyFromName(i32, i32*, i32**) #1

declare dso_local i32 @expect(i32, i64) #1

declare dso_local i64 @GdipGetLineSpacing(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i64 @GdipGetEmHeight(i32*, i32, i32*) #1

declare dso_local i64 @GdipGetCellAscent(i32*, i32, i32*) #1

declare dso_local i64 @GdipGetCellDescent(i32*, i32, i32*) #1

declare dso_local i32 @GdipDeleteFontFamily(i32*) #1

declare dso_local i32 @skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

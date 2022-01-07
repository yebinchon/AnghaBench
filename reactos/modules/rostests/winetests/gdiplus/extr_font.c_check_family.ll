; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_check_family.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_check_family.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LANG_NEUTRAL = common dso_local global i32 0, align 4
@Ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"could not get the %s family name: %.8x\0A\00", align 1
@FontStyleRegular = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"could not create a font for the %s family: %.8x\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"could not delete the %s family font: %.8x\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"could not delete the %s family: %.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64*)* @check_family to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_family(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64*, i64** %6, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i32, i32* @LANG_NEUTRAL, align 4
  %13 = call i64 @GdipGetFamilyName(i32* %10, i64* %11, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @Ok, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %18, i64 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @FontStyleRegular, align 4
  %23 = load i32, i32* @UnitPixel, align 4
  %24 = call i64 @GdipCreateFont(i32* %21, i32 12, i32 %22, i32 %23, i32** %8)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @Ok, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %29, i64 %30)
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @Ok, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %3
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @GdipDeleteFont(i32* %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @Ok, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %42, i64 %43)
  br label %45

45:                                               ; preds = %35, %3
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @GdipDeleteFontFamily(i32* %46)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @Ok, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i8*, i8** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %52, i64 %53)
  ret void
}

declare dso_local i64 @GdipGetFamilyName(i32*, i64*, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, i64) #1

declare dso_local i64 @GdipCreateFont(i32*, i32, i32, i32, i32**) #1

declare dso_local i64 @GdipDeleteFont(i32*) #1

declare dso_local i64 @GdipDeleteFontFamily(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

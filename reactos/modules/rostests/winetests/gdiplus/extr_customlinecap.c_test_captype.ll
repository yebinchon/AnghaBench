; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_customlinecap.c_test_captype.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_customlinecap.c_test_captype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidParameter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unexpected return code, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unexpected cap type, %d\0A\00", align 1
@FillModeAlternate = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to create path, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"AddPathRectangle failed, %d\0A\00", align 1
@LineCapFlat = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to create cap, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to get cap type, %d\0A\00", align 1
@CustomLineCapTypeDefault = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Unexpected cap type %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Failed to create adjustable cap, %d\0A\00", align 1
@CustomLineCapTypeAdjustableArrow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_captype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_captype() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = call i32 @GdipGetCustomLineCapType(i32* null, i32* null)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @InvalidParameter, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 10, i32* %3, align 4
  %13 = call i32 @GdipGetCustomLineCapType(i32* null, i32* %3)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @InvalidParameter, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 10
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @FillModeAlternate, align 4
  %26 = call i32 @GdipCreatePath(i32 %25, i32** %5)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @Ok, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @GdipAddPathRectangle(i32* %33, double 5.000000e+00, double 5.000000e+00, double 1.000000e+01, double 1.000000e+01)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @Ok, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @LineCapFlat, align 4
  %43 = call i32 @GdipCreateCustomLineCap(i32* null, i32* %41, i32 %42, double 0.000000e+00, i32** %2)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @Ok, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @GdipGetCustomLineCapType(i32* %50, i32* %3)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @Ok, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @CustomLineCapTypeDefault, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @GdipDeleteCustomLineCap(i32* %64)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @GdipDeletePath(i32* %66)
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @GdipCreateAdjustableArrowCap(double 1.700000e+01, double 1.500000e+01, i32 %68, i32** %1)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @Ok, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %1, align 8
  %77 = call i32 @GdipGetCustomLineCapType(i32* %76, i32* %3)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @Ok, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @CustomLineCapTypeAdjustableArrow, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %1, align 8
  %91 = call i32 @GdipDeleteCustomLineCap(i32* %90)
  ret void
}

declare dso_local i32 @GdipGetCustomLineCapType(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipAddPathRectangle(i32*, double, double, double, double) #1

declare dso_local i32 @GdipCreateCustomLineCap(i32*, i32*, i32, double, i32**) #1

declare dso_local i32 @GdipDeleteCustomLineCap(i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

declare dso_local i32 @GdipCreateAdjustableArrowCap(double, double, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

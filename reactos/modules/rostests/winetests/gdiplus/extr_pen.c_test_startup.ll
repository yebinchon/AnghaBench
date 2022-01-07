; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pen.c_test_startup.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pen.c_test_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GdiplusStartupInput = type { i32, i64, i64, i32* }

@Ok = common dso_local global i32 0, align 4
@UnsupportedGdiplusVersion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"GdiplusStartup returned %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unexpected gdiplus version %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"gdiplus version is %i\0A\00", align 1
@UnitPixel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_startup() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.GdiplusStartupInput, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %6 = getelementptr inbounds %struct.GdiplusStartupInput, %struct.GdiplusStartupInput* %3, i32 0, i32 3
  store i32* null, i32** %6, align 8
  %7 = getelementptr inbounds %struct.GdiplusStartupInput, %struct.GdiplusStartupInput* %3, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.GdiplusStartupInput, %struct.GdiplusStartupInput* %3, i32 0, i32 1
  store i64 0, i64* %8, align 8
  store i32 1, i32* %5, align 4
  br label %9

9:                                                ; preds = %37, %0
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %struct.GdiplusStartupInput, %struct.GdiplusStartupInput* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = call i32 @GdiplusStartup(i32* %4, %struct.GdiplusStartupInput* %3, i32* null)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @Ok, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @UnsupportedGdiplusVersion, align 4
  %22 = icmp eq i32 %20, %21
  br label %23

23:                                               ; preds = %19, %12
  %24 = phi i1 [ true, %12 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @GdiplusShutdown(i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @Ok, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  br label %40

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %9

40:                                               ; preds = %33, %9
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp sle i32 %44, 2
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ false, %40 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @UnitPixel, align 4
  %54 = call i32 @GdipCreatePen1(i32 -65281, float 1.000000e+01, i32 %53, i32** %1)
  store i32 %54, i32* %2, align 4
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @GdipDeletePen(i32* %55)
  ret void
}

declare dso_local i32 @GdiplusStartup(i32*, %struct.GdiplusStartupInput*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GdiplusShutdown(i32) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @GdipCreatePen1(i32, float, i32, i32**) #1

declare dso_local i32 @GdipDeletePen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

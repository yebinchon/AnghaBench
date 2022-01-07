; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_reverse.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, double }

@FillModeAlternate = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@reverse_path = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reverse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [7 x %struct.TYPE_3__], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %0
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 7
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = sitofp i32 %9 to double
  %11 = fmul double %10, 5.000000e+00
  %12 = load i32, i32* %4, align 4
  %13 = srem i32 %12, 2
  %14 = sitofp i32 %13 to double
  %15 = fmul double %11, %14
  %16 = fptosi double %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [7 x %struct.TYPE_3__], [7 x %struct.TYPE_3__]* %3, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 16
  %21 = load i32, i32* %4, align 4
  %22 = sitofp i32 %21 to double
  %23 = fmul double %22, 5.000000e+00
  %24 = fsub double 5.000000e+01, %23
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [7 x %struct.TYPE_3__], [7 x %struct.TYPE_3__]* %3, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store double %24, double* %28, align 8
  br label %29

29:                                               ; preds = %8
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  %33 = load i32, i32* @FillModeAlternate, align 4
  %34 = call i32 @GdipCreatePath(i32 %33, i32** %2)
  %35 = call i32 @GdipReversePath(i32* null)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* @InvalidParameter, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @expect(i32 %36, i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @GdipReversePath(i32* %39)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* @Ok, align 4
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @expect(i32 %41, i32 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds [7 x %struct.TYPE_3__], [7 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %46 = call i32 @GdipAddPathLine2(i32* %44, %struct.TYPE_3__* %45, i32 4)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @GdipClosePathFigure(i32* %47)
  %49 = load i32*, i32** %2, align 8
  %50 = getelementptr inbounds [7 x %struct.TYPE_3__], [7 x %struct.TYPE_3__]* %3, i64 0, i64 4
  %51 = call i32 @GdipAddPathLine2(i32* %49, %struct.TYPE_3__* %50, i32 3)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @GdipReversePath(i32* %52)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* @Ok, align 4
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @expect(i32 %54, i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* @reverse_path, align 4
  %59 = load i32, i32* @reverse_path, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @ok_path(i32* %57, i32 %58, i32 %60, i32 %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @GdipDeletePath(i32* %63)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipReversePath(i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipAddPathLine2(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @GdipClosePathFigure(i32*) #1

declare dso_local i32 @ok_path(i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_line2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_line2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, double }

@FillModeAlternate = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@line2_path = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_line2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_line2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [9 x %struct.TYPE_3__], align 16
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %29, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 9
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = sitofp i32 %9 to double
  %11 = fmul double %10, 5.000000e+00
  %12 = load i32, i32* %3, align 4
  %13 = srem i32 %12, 2
  %14 = sitofp i32 %13 to double
  %15 = fmul double %11, %14
  %16 = fptosi double %15 to i32
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [9 x %struct.TYPE_3__], [9 x %struct.TYPE_3__]* %4, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 16
  %21 = load i32, i32* %3, align 4
  %22 = sitofp i32 %21 to double
  %23 = fmul double %22, 5.000000e+00
  %24 = fsub double 5.000000e+01, %23
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [9 x %struct.TYPE_3__], [9 x %struct.TYPE_3__]* %4, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store double %24, double* %28, align 8
  br label %29

29:                                               ; preds = %8
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %5

32:                                               ; preds = %5
  %33 = load i32, i32* @FillModeAlternate, align 4
  %34 = call i32 @GdipCreatePath(i32 %33, i32** %2)
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds [9 x %struct.TYPE_3__], [9 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %37 = call i32 @GdipAddPathLine2(i32* %35, %struct.TYPE_3__* %36, i32 3)
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* @Ok, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @expect(i32 %38, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds [9 x %struct.TYPE_3__], [9 x %struct.TYPE_3__]* %4, i64 0, i64 3
  %43 = call i32 @GdipAddPathLine2(i32* %41, %struct.TYPE_3__* %42, i32 3)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* @Ok, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @expect(i32 %44, i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @GdipClosePathFigure(i32* %47)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* @Ok, align 4
  %50 = load i32, i32* %1, align 4
  %51 = call i32 @expect(i32 %49, i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds [9 x %struct.TYPE_3__], [9 x %struct.TYPE_3__]* %4, i64 0, i64 6
  %54 = call i32 @GdipAddPathLine2(i32* %52, %struct.TYPE_3__* %53, i32 3)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* @Ok, align 4
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @expect(i32 %55, i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* @line2_path, align 4
  %60 = load i32, i32* @line2_path, align 4
  %61 = call i32 @ARRAY_SIZE(i32 %60)
  %62 = load i32, i32* @FALSE, align 4
  %63 = call i32 @ok_path(i32* %58, i32 %59, i32 %61, i32 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @GdipDeletePath(i32* %64)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipAddPathLine2(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @expect(i32, i32) #1

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

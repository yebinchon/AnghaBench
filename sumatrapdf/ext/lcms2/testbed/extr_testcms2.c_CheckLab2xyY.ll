; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckLab2xyY.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckLab2xyY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckLab2xyY to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckLab2xyY() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %52, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp sle i32 %11, 100
  br i1 %12, label %13, label %55

13:                                               ; preds = %10
  store i32 -128, i32* %2, align 4
  br label %14

14:                                               ; preds = %48, %13
  %15 = load i32, i32* %2, align 4
  %16 = icmp sle i32 %15, 128
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  store i32 -128, i32* %3, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %19, 128
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load i32, i32* %1, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %2, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = call i32 (...) @DbgThread()
  %29 = call i32 @cmsLab2XYZ(i32 %28, i32* null, i32* %8, %struct.TYPE_6__* %6)
  %30 = call i32 (...) @DbgThread()
  %31 = call i32 @cmsXYZ2xyY(i32 %30, i32* %9, i32* %8)
  %32 = call i32 (...) @DbgThread()
  %33 = call i32 @cmsxyY2XYZ(i32 %32, i32* %8, i32* %9)
  %34 = call i32 (...) @DbgThread()
  %35 = call i32 @cmsXYZ2Lab(i32 %34, i32* null, %struct.TYPE_6__* %7, i32* %8)
  %36 = call i32 (...) @DbgThread()
  %37 = call i32 @cmsDeltaE(i32 %36, %struct.TYPE_6__* %6, %struct.TYPE_6__* %7)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %21
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %21
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 8
  store i32 %46, i32* %3, align 4
  br label %18

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 8
  store i32 %50, i32* %2, align 4
  br label %14

51:                                               ; preds = %14
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 10
  store i32 %54, i32* %1, align 4
  br label %10

55:                                               ; preds = %10
  %56 = load i32, i32* %5, align 4
  %57 = sitofp i32 %56 to double
  %58 = fcmp olt double %57, 0x3D719799812DEA11
  %59 = zext i1 %58 to i32
  ret i32 %59
}

declare dso_local i32 @cmsLab2XYZ(i32, i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsXYZ2xyY(i32, i32*, i32*) #1

declare dso_local i32 @cmsxyY2XYZ(i32, i32*, i32*) #1

declare dso_local i32 @cmsXYZ2Lab(i32, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @cmsDeltaE(i32, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

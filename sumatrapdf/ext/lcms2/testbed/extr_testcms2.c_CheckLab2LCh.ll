; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckLab2LCh.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckLab2LCh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckLab2LCh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckLab2LCh() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %47, %0
  %10 = load i32, i32* %1, align 4
  %11 = icmp sle i32 %10, 100
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  store i32 -128, i32* %2, align 4
  br label %13

13:                                               ; preds = %43, %12
  %14 = load i32, i32* %2, align 4
  %15 = icmp sle i32 %14, 128
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  store i32 -128, i32* %3, align 4
  br label %17

17:                                               ; preds = %39, %16
  %18 = load i32, i32* %3, align 4
  %19 = icmp sle i32 %18, 128
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %2, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = call i32 (...) @DbgThread()
  %28 = call i32 @cmsLab2LCh(i32 %27, i32* %8, %struct.TYPE_6__* %6)
  %29 = call i32 (...) @DbgThread()
  %30 = call i32 @cmsLCh2Lab(i32 %29, %struct.TYPE_6__* %7, i32* %8)
  %31 = call i32 (...) @DbgThread()
  %32 = call i32 @cmsDeltaE(i32 %31, %struct.TYPE_6__* %6, %struct.TYPE_6__* %7)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %20
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 8
  store i32 %41, i32* %3, align 4
  br label %17

42:                                               ; preds = %17
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 8
  store i32 %45, i32* %2, align 4
  br label %13

46:                                               ; preds = %13
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 10
  store i32 %49, i32* %1, align 4
  br label %9

50:                                               ; preds = %9
  %51 = load i32, i32* %5, align 4
  %52 = sitofp i32 %51 to double
  %53 = fcmp olt double %52, 0x3D719799812DEA11
  %54 = zext i1 %53 to i32
  ret i32 %54
}

declare dso_local i32 @cmsLab2LCh(i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsLCh2Lab(i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @cmsDeltaE(i32, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

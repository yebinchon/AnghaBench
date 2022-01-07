; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckTemp2CHRM.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckTemp2CHRM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckTemp2CHRM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckTemp2CHRM() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 4000, i32* %2, align 4
  br label %7

7:                                                ; preds = %29, %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 25000
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = call i32 (...) @DbgThread()
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @cmsWhitePointFromTemp(i32 %11, i32* %6, i32 %12)
  %14 = call i32 (...) @DbgThread()
  %15 = call i32 @cmsTempFromWhitePoint(i32 %14, i32* %4, i32* %6)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %36

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = sub nsw i32 %19, %20
  %22 = call i32 @fabs(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %7

32:                                               ; preds = %7
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 100
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %32, %17
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @cmsWhitePointFromTemp(i32, i32*, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsTempFromWhitePoint(i32, i32*, i32*) #1

declare dso_local i32 @fabs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

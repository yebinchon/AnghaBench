; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_OnPaint.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_OnPaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fScale = common dso_local global float 0.000000e+00, align 4
@section_vpos = common dso_local global i32* null, align 8
@mw = common dso_local global i64 0, align 8
@fw = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OnPaint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load float, float* @fScale, align 4
  %6 = fcmp olt float %5, 1.500000e+00
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i32 2, i32 3
  %9 = call i32 @RGB(i32 0, i32 0, i32 0)
  %10 = call i32 @CreatePen(i32 0, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @SelectObject(i32 %11, i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %39, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32*, i32** @section_vpos, align 8
  %17 = call i32 @ARRAYSIZE(i32* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = load i64, i64* @mw, align 8
  %22 = add nsw i64 %21, 10
  %23 = load i32*, i32** @section_vpos, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @MoveToEx(i32 %20, i64 %22, i32 %27, i32* null)
  %29 = load i32, i32* %2, align 4
  %30 = load i64, i64* @mw, align 8
  %31 = load i64, i64* @fw, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32*, i32** @section_vpos, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @LineTo(i32 %29, i64 %32, i32 %37)
  br label %39

39:                                               ; preds = %19
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %14

42:                                               ; preds = %14
  ret void
}

declare dso_local i32 @CreatePen(i32, i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @MoveToEx(i32, i64, i32, i32*) #1

declare dso_local i32 @LineTo(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

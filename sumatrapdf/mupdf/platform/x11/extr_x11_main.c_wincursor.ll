; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_wincursor.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_wincursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARROW = common dso_local global i32 0, align 4
@xdpy = common dso_local global i32 0, align 4
@xwin = common dso_local global i32 0, align 4
@xcarrow = common dso_local global i32 0, align 4
@HAND = common dso_local global i32 0, align 4
@xchand = common dso_local global i32 0, align 4
@WAIT = common dso_local global i32 0, align 4
@xcwait = common dso_local global i32 0, align 4
@CARET = common dso_local global i32 0, align 4
@xccaret = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wincursor(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ARROW, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* @xdpy, align 4
  %10 = load i32, i32* @xwin, align 4
  %11 = load i32, i32* @xcarrow, align 4
  %12 = call i32 @XDefineCursor(i32 %9, i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %8, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @HAND, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* @xdpy, align 4
  %19 = load i32, i32* @xwin, align 4
  %20 = load i32, i32* @xchand, align 4
  %21 = call i32 @XDefineCursor(i32 %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %13
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @WAIT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* @xdpy, align 4
  %28 = load i32, i32* @xwin, align 4
  %29 = load i32, i32* @xcwait, align 4
  %30 = call i32 @XDefineCursor(i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @CARET, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* @xdpy, align 4
  %37 = load i32, i32* @xwin, align 4
  %38 = load i32, i32* @xccaret, align 4
  %39 = call i32 @XDefineCursor(i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* @xdpy, align 4
  %42 = call i32 @XFlush(i32 %41)
  ret void
}

declare dso_local i32 @XDefineCursor(i32, i32, i32) #1

declare dso_local i32 @XFlush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

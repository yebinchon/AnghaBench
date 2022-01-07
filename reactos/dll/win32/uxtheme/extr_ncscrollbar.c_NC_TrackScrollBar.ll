; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_ncscrollbar.c_NC_TrackScrollBar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_ncscrollbar.c_NC_TrackScrollBar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_HSCROLL = common dso_local global i32 0, align 4
@HTHSCROLL = common dso_local global i32 0, align 4
@SB_HORZ = common dso_local global i32 0, align 4
@HTVSCROLL = common dso_local global i32 0, align 4
@SB_VERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NC_TrackScrollBar(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 65520
  %10 = load i32, i32* @SC_HSCROLL, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 15
  %15 = load i32, i32* @HTHSCROLL, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %33

18:                                               ; preds = %12
  %19 = load i32, i32* @SB_HORZ, align 4
  store i32 %19, i32* %7, align 4
  br label %28

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 15
  %23 = load i32, i32* @HTVSCROLL, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %33

26:                                               ; preds = %20
  %27 = load i32, i32* @SB_VERT, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @SCROLL_TrackScrollBar(i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %25, %17
  ret void
}

declare dso_local i32 @SCROLL_TrackScrollBar(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

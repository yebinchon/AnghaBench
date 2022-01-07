; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_root_dialog.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_root_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_EX_CONTROLPARENT = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_POPUP = common dso_local global i32 0, align 4
@DM_GETDEFID = common dso_local global i32 0, align 4
@DS_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @root_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @root_dialog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %4

4:                                                ; preds = %40, %1
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @GWL_EXSTYLE, align 4
  %7 = call i32 @GetWindowLongA(i32 %5, i32 %6)
  %8 = load i32, i32* @WS_EX_CONTROLPARENT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @GWL_STYLE, align 4
  %14 = call i32 @GetWindowLongA(i32 %12, i32 %13)
  %15 = load i32, i32* @WS_CHILD, align 4
  %16 = load i32, i32* @WS_POPUP, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = load i32, i32* @WS_CHILD, align 4
  %20 = icmp eq i32 %18, %19
  br label %21

21:                                               ; preds = %11, %4
  %22 = phi i1 [ false, %4 ], [ %20, %11 ]
  br i1 %22, label %23, label %41

23:                                               ; preds = %21
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @GetParent(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @DM_GETDEFID, align 4
  %28 = call i32 @DefDlgProcA(i32 %26, i32 %27, i32 0, i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %41

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @GWL_STYLE, align 4
  %35 = call i32 @GetWindowLongA(i32 %33, i32 %34)
  %36 = load i32, i32* @DS_CONTROL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %41

40:                                               ; preds = %31
  br label %4

41:                                               ; preds = %39, %30, %21
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @GetWindowLongA(i32, i32) #1

declare dso_local i32 @GetParent(i32) #1

declare dso_local i32 @DefDlgProcA(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_x11.c_gui_mch_open.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_x11.c_gui_mch_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@vimShell = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"*vimForm\00", align 1
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"WM_SAVE_YOURSELF\00", align 1
@False = common dso_local global i32 0, align 4
@wm_atoms = common dso_local global i32* null, align 8
@SAVE_YOURSELF_IDX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"WM_DELETE_WINDOW\00", align 1
@DELETE_WINDOW_IDX = common dso_local global i64 0, align 8
@NoEventMask = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@gui_x11_wm_protocol_handler = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@PropertyChangeMask = common dso_local global i32 0, align 4
@_XEditResCheckMessages = common dso_local global i32 0, align 4
@commWindow = common dso_local global i32 0, align 4
@gui_x11_send_event_handler = common dso_local global i32 0, align 4
@serverDelayedStartName = common dso_local global i32* null, align 8
@serverName = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_mch_open() #0 {
  %1 = load i32, i32* @vimShell, align 4
  %2 = call i32 @XtRealizeWidget(i32 %1)
  %3 = load i32, i32* @vimShell, align 4
  %4 = call i32 @XtNameToWidget(i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @XtManageChild(i32 %4)
  %6 = call i32 (...) @gui_x11_get_wid()
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 5), align 4
  %7 = call i32 (...) @gui_x11_create_blank_mouse()
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 4), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 3), align 4
  %9 = load i32, i32* @False, align 4
  %10 = call i32 @XInternAtom(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load i32*, i32** @wm_atoms, align 8
  %12 = load i64, i64* @SAVE_YOURSELF_IDX, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 3), align 4
  %15 = load i32, i32* @False, align 4
  %16 = call i32 @XInternAtom(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** @wm_atoms, align 8
  %18 = load i64, i64* @DELETE_WINDOW_IDX, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 3), align 4
  %21 = load i32, i32* @vimShell, align 4
  %22 = call i32 @XtWindow(i32 %21)
  %23 = load i32*, i32** @wm_atoms, align 8
  %24 = call i32 @XSetWMProtocols(i32 %20, i32 %22, i32* %23, i32 2)
  %25 = load i32, i32* @vimShell, align 4
  %26 = load i32, i32* @NoEventMask, align 4
  %27 = load i32, i32* @True, align 4
  %28 = load i32, i32* @gui_x11_wm_protocol_handler, align 4
  %29 = call i32 @XtAddEventHandler(i32 %25, i32 %26, i32 %27, i32 %28, i32* null)
  %30 = call i32 (...) @highlight_gui_started()
  %31 = load i32, i32* @OK, align 4
  ret i32 %31
}

declare dso_local i32 @XtRealizeWidget(i32) #1

declare dso_local i32 @XtManageChild(i32) #1

declare dso_local i32 @XtNameToWidget(i32, i8*) #1

declare dso_local i32 @gui_x11_get_wid(...) #1

declare dso_local i32 @gui_x11_create_blank_mouse(...) #1

declare dso_local i32 @XInternAtom(i32, i8*, i32) #1

declare dso_local i32 @XSetWMProtocols(i32, i32, i32*, i32) #1

declare dso_local i32 @XtWindow(i32) #1

declare dso_local i32 @XtAddEventHandler(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @highlight_gui_started(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

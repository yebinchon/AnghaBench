; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_helper_discover_window_manager.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_helper_discover_window_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@xcb = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Found window manager: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"i3\00", align 1
@WM_DO_NOT_CHANGE_CURRENT_DESKTOP = common dso_local global i32 0, align 4
@WM_PANGO_WORKSPACE_NAMES = common dso_local global i32 0, align 4
@current_window_manager = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @x11_helper_discover_window_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x11_helper_discover_window_manager() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xcb, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = call i32 (...) @xcb_stuff_get_root_window()
  %8 = call i32 @xcb_ewmh_get_supporting_wm_check_unchecked(i32* %6, i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xcb, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @xcb_ewmh_get_supporting_wm_check_reply(i32* %10, i32 %11, i32* %1, i32* null)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xcb, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @xcb_ewmh_get_wm_name_unchecked(i32* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xcb, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @xcb_ewmh_get_wm_name_reply(i32* %20, i32 %21, %struct.TYPE_5__* %3, i8* null)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @g_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @g_strcmp0(i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @WM_DO_NOT_CHANGE_CURRENT_DESKTOP, align 4
  %38 = load i32, i32* @WM_PANGO_WORKSPACE_NAMES, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* @current_window_manager, align 4
  br label %40

40:                                               ; preds = %36, %28
  br label %41

41:                                               ; preds = %40, %24
  %42 = call i32 @xcb_ewmh_get_utf8_strings_reply_wipe(%struct.TYPE_5__* %3)
  br label %43

43:                                               ; preds = %41, %14
  br label %44

44:                                               ; preds = %43, %0
  ret void
}

declare dso_local i32 @xcb_ewmh_get_supporting_wm_check_unchecked(i32*, i32) #1

declare dso_local i32 @xcb_stuff_get_root_window(...) #1

declare dso_local i64 @xcb_ewmh_get_supporting_wm_check_reply(i32*, i32, i32*, i32*) #1

declare dso_local i32 @xcb_ewmh_get_wm_name_unchecked(i32*, i32) #1

declare dso_local i64 @xcb_ewmh_get_wm_name_reply(i32*, i32, %struct.TYPE_5__*, i8*) #1

declare dso_local i32 @g_debug(i8*, i32) #1

declare dso_local i64 @g_strcmp0(i32, i8*) #1

declare dso_local i32 @xcb_ewmh_get_utf8_strings_reply_wipe(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

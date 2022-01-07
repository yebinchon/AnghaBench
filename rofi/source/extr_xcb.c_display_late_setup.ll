; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_display_late_setup.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_display_late_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"-normal-window\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"-no-lazy-grab\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to grab keyboard, even after %d uS.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Failed to grab mouse pointer, even after %d uS.\00", align 1
@lazy_grab_keyboard = common dso_local global i32 0, align 4
@lazy_grab_pointer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @display_late_setup() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @x11_create_visual_and_colormap()
  %3 = call i64 @find_arg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %4 = icmp sge i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @TRUE, align 4
  store i32 %6, i32* %1, align 4
  br label %41

7:                                                ; preds = %0
  %8 = call i64 @find_arg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = call i32 (...) @xcb_stuff_get_root_window()
  %12 = call i32 @take_keyboard(i32 %11, i32 500)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = call i32 @g_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 500000)
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %1, align 4
  br label %41

17:                                               ; preds = %10
  %18 = call i32 (...) @xcb_stuff_get_root_window()
  %19 = call i32 @take_pointer(i32 %18, i32 100)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = call i32 @g_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 100000)
  br label %23

23:                                               ; preds = %21, %17
  br label %39

24:                                               ; preds = %7
  %25 = call i32 (...) @xcb_stuff_get_root_window()
  %26 = call i32 @take_keyboard(i32 %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @lazy_grab_keyboard, align 4
  %30 = call i32 @g_timeout_add(i32 1, i32 %29, i32* null)
  br label %31

31:                                               ; preds = %28, %24
  %32 = call i32 (...) @xcb_stuff_get_root_window()
  %33 = call i32 @take_pointer(i32 %32, i32 0)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @lazy_grab_pointer, align 4
  %37 = call i32 @g_timeout_add(i32 1, i32 %36, i32* null)
  br label %38

38:                                               ; preds = %35, %31
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %39, %14, %5
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @x11_create_visual_and_colormap(...) #1

declare dso_local i64 @find_arg(i8*) #1

declare dso_local i32 @take_keyboard(i32, i32) #1

declare dso_local i32 @xcb_stuff_get_root_window(...) #1

declare dso_local i32 @g_warning(i8*, i32) #1

declare dso_local i32 @take_pointer(i32, i32) #1

declare dso_local i32 @g_timeout_add(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

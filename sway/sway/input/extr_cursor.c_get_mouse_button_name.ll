; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_get_mouse_button_name.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_get_mouse_button_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EV_KEY = common dso_local global i32 0, align 4
@SWAY_SCROLL_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"SWAY_SCROLL_UP\00", align 1
@SWAY_SCROLL_DOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"SWAY_SCROLL_DOWN\00", align 1
@SWAY_SCROLL_LEFT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"SWAY_SCROLL_LEFT\00", align 1
@SWAY_SCROLL_RIGHT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"SWAY_SCROLL_RIGHT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_mouse_button_name(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @EV_KEY, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call i8* @libevdev_event_code_get_name(i32 %4, i64 %5)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @SWAY_SCROLL_UP, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %32

14:                                               ; preds = %9
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @SWAY_SCROLL_DOWN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %31

19:                                               ; preds = %14
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @SWAY_SCROLL_LEFT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %30

24:                                               ; preds = %19
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @SWAY_SCROLL_RIGHT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %29

29:                                               ; preds = %28, %24
  br label %30

30:                                               ; preds = %29, %23
  br label %31

31:                                               ; preds = %30, %18
  br label %32

32:                                               ; preds = %31, %13
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

declare dso_local i8* @libevdev_event_code_get_name(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_resize_layout.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_resize_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32 }
%struct.layout_cell = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"window-layout-changed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @layout_resize_layout(%struct.window* %0, %struct.layout_cell* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.window*, align 8
  %7 = alloca %struct.layout_cell*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.window* %0, %struct.window** %6, align 8
  store %struct.layout_cell* %1, %struct.layout_cell** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %43, %5
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.window*, %struct.window** %6, align 8
  %22 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @layout_resize_pane_grow(%struct.window* %21, %struct.layout_cell* %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* %11, align 4
  br label %39

30:                                               ; preds = %17
  %31 = load %struct.window*, %struct.window** %6, align 8
  %32 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @layout_resize_pane_shrink(%struct.window* %31, %struct.layout_cell* %32, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %30, %20
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %44

43:                                               ; preds = %39
  br label %14

44:                                               ; preds = %42, %14
  %45 = load %struct.window*, %struct.window** %6, align 8
  %46 = call i32 @layout_fix_offsets(%struct.window* %45)
  %47 = load %struct.window*, %struct.window** %6, align 8
  %48 = call i32 @layout_fix_panes(%struct.window* %47)
  %49 = load %struct.window*, %struct.window** %6, align 8
  %50 = call i32 @notify_window(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.window* %49)
  ret void
}

declare dso_local i32 @layout_resize_pane_grow(%struct.window*, %struct.layout_cell*, i32, i32, i32) #1

declare dso_local i32 @layout_resize_pane_shrink(%struct.window*, %struct.layout_cell*, i32, i32) #1

declare dso_local i32 @layout_fix_offsets(%struct.window*) #1

declare dso_local i32 @layout_fix_panes(%struct.window*) #1

declare dso_local i32 @notify_window(i8*, %struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

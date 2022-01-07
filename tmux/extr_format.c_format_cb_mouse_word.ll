; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_cb_mouse_word.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_cb_mouse_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_tree = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.format_entry = type { i8* }
%struct.window_pane = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.format_tree*, %struct.format_entry*)* @format_cb_mouse_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_cb_mouse_word(%struct.format_tree* %0, %struct.format_entry* %1) #0 {
  %3 = alloca %struct.format_tree*, align 8
  %4 = alloca %struct.format_entry*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.format_tree* %0, %struct.format_tree** %3, align 8
  store %struct.format_entry* %1, %struct.format_entry** %4, align 8
  %9 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %10 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %17 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %16, i32 0, i32 0
  %18 = call %struct.window_pane* @cmd_mouse_pane(%struct.TYPE_5__* %17, i32* null, i32* null)
  store %struct.window_pane* %18, %struct.window_pane** %5, align 8
  %19 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %20 = icmp eq %struct.window_pane* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %49

22:                                               ; preds = %15
  %23 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %24 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %23, i32 0, i32 1
  %25 = call i32 @TAILQ_EMPTY(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %49

28:                                               ; preds = %22
  %29 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %30 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %31 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %30, i32 0, i32 0
  %32 = call i64 @cmd_mouse_at(%struct.window_pane* %29, %struct.TYPE_5__* %31, i32* %6, i32* %7, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %49

35:                                               ; preds = %28
  %36 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %37 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i8* @format_grid_word(i32 %39, i32 %40, i32 %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.format_entry*, %struct.format_entry** %4, align 8
  %48 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %14, %21, %27, %34, %45, %35
  ret void
}

declare dso_local %struct.window_pane* @cmd_mouse_pane(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i64 @cmd_mouse_at(%struct.window_pane*, %struct.TYPE_5__*, i32*, i32*, i32) #1

declare dso_local i8* @format_grid_word(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

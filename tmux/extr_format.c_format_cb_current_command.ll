; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_cb_current_command.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_cb_current_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_tree = type { %struct.window_pane* }
%struct.window_pane = type { i32*, i32, i32, i32, i32 }
%struct.format_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.format_tree*, %struct.format_entry*)* @format_cb_current_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_cb_current_command(%struct.format_tree* %0, %struct.format_entry* %1) #0 {
  %3 = alloca %struct.format_tree*, align 8
  %4 = alloca %struct.format_entry*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca i8*, align 8
  store %struct.format_tree* %0, %struct.format_tree** %3, align 8
  store %struct.format_entry* %1, %struct.format_entry** %4, align 8
  %7 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %8 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %7, i32 0, i32 0
  %9 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  store %struct.window_pane* %9, %struct.window_pane** %5, align 8
  %10 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %11 = icmp eq %struct.window_pane* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %14 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  br label %65

18:                                               ; preds = %12
  %19 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %20 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %23 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @osdep_get_name(i32 %21, i32 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %18
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %28, %18
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %37 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %40 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @cmd_stringify_argv(i32 %38, i32 %41)
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %33
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45, %33
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %54 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i8* @xstrdup(i32* %55)
  store i8* %56, i8** %6, align 8
  br label %57

57:                                               ; preds = %50, %45
  br label %58

58:                                               ; preds = %57, %28
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @parse_window_name(i8* %59)
  %61 = load %struct.format_entry*, %struct.format_entry** %4, align 8
  %62 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @free(i8* %63)
  br label %65

65:                                               ; preds = %58, %17
  ret void
}

declare dso_local i8* @osdep_get_name(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @cmd_stringify_argv(i32, i32) #1

declare dso_local i8* @xstrdup(i32*) #1

declare dso_local i32 @parse_window_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

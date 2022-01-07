; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_append_selection.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_append_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_pane* }
%struct.window_pane = type { i32 }
%struct.paste_buffer = type { i32 }
%struct.screen_write_ctx = type { i32 }

@global_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"set-clipboard\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pane-set-clipboard\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_copy_append_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_append_selection(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_pane*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.paste_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.screen_write_ctx, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %11 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %12 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %11, i32 0, i32 0
  %13 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  store %struct.window_pane* %13, %struct.window_pane** %3, align 8
  store i8* null, i8** %7, align 8
  %14 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %15 = call i8* @window_copy_get_selection(%struct.window_mode_entry* %14, i64* %8)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %66

19:                                               ; preds = %1
  %20 = load i32, i32* @global_options, align 4
  %21 = call i64 @options_get_number(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %25 = call i32 @screen_write_start(%struct.screen_write_ctx* %10, %struct.window_pane* %24, i32* null)
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @screen_write_setselection(%struct.screen_write_ctx* %10, i8* %26, i64 %27)
  %29 = call i32 @screen_write_stop(%struct.screen_write_ctx* %10)
  %30 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %31 = call i32 @notify_pane(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.window_pane* %30)
  br label %32

32:                                               ; preds = %23, %19
  %33 = call %struct.paste_buffer* @paste_get_top(i8** %7)
  store %struct.paste_buffer* %33, %struct.paste_buffer** %5, align 8
  %34 = load %struct.paste_buffer*, %struct.paste_buffer** %5, align 8
  %35 = icmp ne %struct.paste_buffer* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load %struct.paste_buffer*, %struct.paste_buffer** %5, align 8
  %38 = call i8* @paste_buffer_data(%struct.paste_buffer* %37, i64* %9)
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %40, %41
  %43 = call i8* @xrealloc(i8* %39, i64 %42)
  store i8* %43, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @memmove(i8* %46, i8* %47, i64 %48)
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @memcpy(i8* %50, i8* %51, i64 %52)
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %36, %32
  %58 = load i8*, i8** %4, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @paste_set(i8* %58, i64 %59, i8* %60, i32* null)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %18, %63, %57
  ret void
}

declare dso_local i8* @window_copy_get_selection(%struct.window_mode_entry*, i64*) #1

declare dso_local i64 @options_get_number(i32, i8*) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, %struct.window_pane*, i32*) #1

declare dso_local i32 @screen_write_setselection(%struct.screen_write_ctx*, i8*, i64) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i32 @notify_pane(i8*, %struct.window_pane*) #1

declare dso_local %struct.paste_buffer* @paste_get_top(i8**) #1

declare dso_local i8* @paste_buffer_data(%struct.paste_buffer*, i64*) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @paste_set(i8*, i64, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

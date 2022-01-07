; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_common_init.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_mode_data = type { i32, i32, i32, i8, i32, i32, i32, i8*, i32*, i32*, i8*, i32, i32 }
%struct.window_mode_entry = type { %struct.window_copy_mode_data*, %struct.window_pane* }
%struct.window_pane = type { %struct.TYPE_2__*, i32*, %struct.screen }
%struct.TYPE_2__ = type { i32 }
%struct.screen = type { i32 }

@CURSORDRAG_NONE = common dso_local global i32 0, align 4
@LINE_SEL_NONE = common dso_local global i32 0, align 4
@WINDOW_COPY_SEARCHUP = common dso_local global i8* null, align 8
@WINDOW_COPY_OFF = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"mode-keys\00", align 1
@window_copy_scroll_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.window_copy_mode_data* (%struct.window_mode_entry*)* @window_copy_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.window_copy_mode_data* @window_copy_common_init(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_pane*, align 8
  %4 = alloca %struct.window_copy_mode_data*, align 8
  %5 = alloca %struct.screen*, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %6 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %7 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %6, i32 0, i32 1
  %8 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  store %struct.window_pane* %8, %struct.window_pane** %3, align 8
  %9 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %10 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %9, i32 0, i32 2
  store %struct.screen* %10, %struct.screen** %5, align 8
  %11 = call %struct.window_copy_mode_data* @xcalloc(i32 1, i32 72)
  store %struct.window_copy_mode_data* %11, %struct.window_copy_mode_data** %4, align 8
  %12 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %13 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %12, i32 0, i32 0
  store %struct.window_copy_mode_data* %11, %struct.window_copy_mode_data** %13, align 8
  %14 = load i32, i32* @CURSORDRAG_NONE, align 4
  %15 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %16 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %15, i32 0, i32 12
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @LINE_SEL_NONE, align 4
  %18 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %19 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %18, i32 0, i32 11
  store i32 %17, i32* %19, align 8
  %20 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %21 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load i8*, i8** @WINDOW_COPY_SEARCHUP, align 8
  %26 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %27 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %26, i32 0, i32 10
  store i8* %25, i8** %27, align 8
  %28 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %29 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32* @xstrdup(i32* %30)
  %32 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %33 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %32, i32 0, i32 9
  store i32* %31, i32** %33, align 8
  br label %40

34:                                               ; preds = %1
  %35 = load i8*, i8** @WINDOW_COPY_OFF, align 8
  %36 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %37 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %36, i32 0, i32 10
  store i8* %35, i8** %37, align 8
  %38 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %39 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %38, i32 0, i32 9
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %34, %24
  %41 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %42 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %41, i32 0, i32 8
  store i32* null, i32** %42, align 8
  %43 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %44 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %43, i32 0, i32 2
  store i32 -1, i32* %44, align 8
  %45 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %46 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %45, i32 0, i32 1
  store i32 -1, i32* %46, align 4
  %47 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %48 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  %49 = load i8*, i8** @WINDOW_COPY_OFF, align 8
  %50 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %51 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %50, i32 0, i32 7
  store i8* %49, i8** %51, align 8
  %52 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %53 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %52, i32 0, i32 3
  store i8 0, i8* %53, align 4
  %54 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %55 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %54, i32 0, i32 6
  %56 = load %struct.screen*, %struct.screen** %5, align 8
  %57 = call i32 @screen_size_x(%struct.screen* %56)
  %58 = load %struct.screen*, %struct.screen** %5, align 8
  %59 = call i32 @screen_size_y(%struct.screen* %58)
  %60 = call i32 @screen_init(i32* %55, i32 %57, i32 %59, i32 0)
  %61 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %62 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @options_get_number(i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %68 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %70 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %69, i32 0, i32 4
  %71 = load i32, i32* @window_copy_scroll_timer, align 4
  %72 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %73 = call i32 @evtimer_set(i32* %70, i32 %71, %struct.window_mode_entry* %72)
  %74 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  ret %struct.window_copy_mode_data* %74
}

declare dso_local %struct.window_copy_mode_data* @xcalloc(i32, i32) #1

declare dso_local i32* @xstrdup(i32*) #1

declare dso_local i32 @screen_init(i32*, i32, i32, i32) #1

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @options_get_number(i32, i8*) #1

declare dso_local i32 @evtimer_set(i32*, i32, %struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

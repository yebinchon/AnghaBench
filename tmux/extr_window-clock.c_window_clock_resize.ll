; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-clock.c_window_clock_resize.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-clock.c_window_clock_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_clock_mode_data* }
%struct.window_clock_mode_data = type { %struct.screen }
%struct.screen = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i32, i32)* @window_clock_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_clock_resize(%struct.window_mode_entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.window_clock_mode_data*, align 8
  %8 = alloca %struct.screen*, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %10 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %9, i32 0, i32 0
  %11 = load %struct.window_clock_mode_data*, %struct.window_clock_mode_data** %10, align 8
  store %struct.window_clock_mode_data* %11, %struct.window_clock_mode_data** %7, align 8
  %12 = load %struct.window_clock_mode_data*, %struct.window_clock_mode_data** %7, align 8
  %13 = getelementptr inbounds %struct.window_clock_mode_data, %struct.window_clock_mode_data* %12, i32 0, i32 0
  store %struct.screen* %13, %struct.screen** %8, align 8
  %14 = load %struct.screen*, %struct.screen** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @screen_resize(%struct.screen* %14, i32 %15, i32 %16, i32 0)
  %18 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %19 = call i32 @window_clock_draw_screen(%struct.window_mode_entry* %18)
  ret void
}

declare dso_local i32 @screen_resize(%struct.screen*, i32, i32, i32) #1

declare dso_local i32 @window_clock_draw_screen(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

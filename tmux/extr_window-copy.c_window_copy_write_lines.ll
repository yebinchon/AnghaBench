; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_write_lines.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_write_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { i32 }
%struct.screen_write_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, %struct.screen_write_ctx*, i64, i64)* @window_copy_write_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_write_lines(%struct.window_mode_entry* %0, %struct.screen_write_ctx* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.window_mode_entry*, align 8
  %6 = alloca %struct.screen_write_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %5, align 8
  store %struct.screen_write_ctx* %1, %struct.screen_write_ctx** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  store i64 %10, i64* %9, align 8
  br label %11

11:                                               ; preds = %22, %4
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = add nsw i64 %13, %14
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.window_mode_entry*, %struct.window_mode_entry** %5, align 8
  %19 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @window_copy_write_line(%struct.window_mode_entry* %18, %struct.screen_write_ctx* %19, i64 %20)
  br label %22

22:                                               ; preds = %17
  %23 = load i64, i64* %9, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %9, align 8
  br label %11

25:                                               ; preds = %11
  ret void
}

declare dso_local i32 @window_copy_write_line(%struct.window_mode_entry*, %struct.screen_write_ctx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

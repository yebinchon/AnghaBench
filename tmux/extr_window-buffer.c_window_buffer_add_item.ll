; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-buffer.c_window_buffer_add_item.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-buffer.c_window_buffer_add_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_buffer_itemdata = type { i32 }
%struct.window_buffer_modedata = type { i64, %struct.window_buffer_itemdata** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.window_buffer_itemdata* (%struct.window_buffer_modedata*)* @window_buffer_add_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.window_buffer_itemdata* @window_buffer_add_item(%struct.window_buffer_modedata* %0) #0 {
  %2 = alloca %struct.window_buffer_modedata*, align 8
  %3 = alloca %struct.window_buffer_itemdata*, align 8
  store %struct.window_buffer_modedata* %0, %struct.window_buffer_modedata** %2, align 8
  %4 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %2, align 8
  %5 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %4, i32 0, i32 1
  %6 = load %struct.window_buffer_itemdata**, %struct.window_buffer_itemdata*** %5, align 8
  %7 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %2, align 8
  %8 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  %11 = call %struct.window_buffer_itemdata** @xreallocarray(%struct.window_buffer_itemdata** %6, i64 %10, i32 8)
  %12 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %2, align 8
  %13 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %12, i32 0, i32 1
  store %struct.window_buffer_itemdata** %11, %struct.window_buffer_itemdata*** %13, align 8
  %14 = call %struct.window_buffer_itemdata* @xcalloc(i32 1, i32 4)
  %15 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %2, align 8
  %16 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %15, i32 0, i32 1
  %17 = load %struct.window_buffer_itemdata**, %struct.window_buffer_itemdata*** %16, align 8
  %18 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %2, align 8
  %19 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = getelementptr inbounds %struct.window_buffer_itemdata*, %struct.window_buffer_itemdata** %17, i64 %20
  store %struct.window_buffer_itemdata* %14, %struct.window_buffer_itemdata** %22, align 8
  store %struct.window_buffer_itemdata* %14, %struct.window_buffer_itemdata** %3, align 8
  %23 = load %struct.window_buffer_itemdata*, %struct.window_buffer_itemdata** %3, align 8
  ret %struct.window_buffer_itemdata* %23
}

declare dso_local %struct.window_buffer_itemdata** @xreallocarray(%struct.window_buffer_itemdata**, i64, i32) #1

declare dso_local %struct.window_buffer_itemdata* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

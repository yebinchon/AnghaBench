; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_putc.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { i32 }
%struct.grid_cell = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_putc(%struct.screen_write_ctx* %0, %struct.grid_cell* %1, i32 %2) #0 {
  %4 = alloca %struct.screen_write_ctx*, align 8
  %5 = alloca %struct.grid_cell*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.grid_cell, align 4
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %4, align 8
  store %struct.grid_cell* %1, %struct.grid_cell** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %9 = call i32 @memcpy(%struct.grid_cell* %7, %struct.grid_cell* %8, i32 4)
  %10 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %7, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @utf8_set(i32* %10, i32 %11)
  %13 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %14 = call i32 @screen_write_cell(%struct.screen_write_ctx* %13, %struct.grid_cell* %7)
  ret void
}

declare dso_local i32 @memcpy(%struct.grid_cell*, %struct.grid_cell*, i32) #1

declare dso_local i32 @utf8_set(i32*, i32) #1

declare dso_local i32 @screen_write_cell(%struct.screen_write_ctx*, %struct.grid_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

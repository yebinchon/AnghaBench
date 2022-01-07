; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_reset.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i32 }

@MODE_CURSOR = common dso_local global i32 0, align 4
@MODE_WRAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_reset(%struct.screen_write_ctx* %0) #0 {
  %2 = alloca %struct.screen_write_ctx*, align 8
  %3 = alloca %struct.screen*, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %2, align 8
  %4 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %4, i32 0, i32 0
  %6 = load %struct.screen*, %struct.screen** %5, align 8
  store %struct.screen* %6, %struct.screen** %3, align 8
  %7 = load %struct.screen*, %struct.screen** %3, align 8
  %8 = call i32 @screen_reset_tabs(%struct.screen* %7)
  %9 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %2, align 8
  %10 = load %struct.screen*, %struct.screen** %3, align 8
  %11 = call i64 @screen_size_y(%struct.screen* %10)
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @screen_write_scrollregion(%struct.screen_write_ctx* %9, i32 0, i64 %12)
  %14 = load i32, i32* @MODE_CURSOR, align 4
  %15 = load i32, i32* @MODE_WRAP, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.screen*, %struct.screen** %3, align 8
  %18 = getelementptr inbounds %struct.screen, %struct.screen* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %2, align 8
  %20 = call i32 @screen_write_clearscreen(%struct.screen_write_ctx* %19, i32 8)
  %21 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %2, align 8
  %22 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %21, i32 0, i32 0)
  ret void
}

declare dso_local i32 @screen_reset_tabs(%struct.screen*) #1

declare dso_local i32 @screen_write_scrollregion(%struct.screen_write_ctx*, i32, i64) #1

declare dso_local i64 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @screen_write_clearscreen(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @screen_write_set_cursor(%struct.screen_write_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

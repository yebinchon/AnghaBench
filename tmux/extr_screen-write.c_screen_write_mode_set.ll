; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_mode_set.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_mode_set(%struct.screen_write_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.screen_write_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.screen*, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %6, i32 0, i32 0
  %8 = load %struct.screen*, %struct.screen** %7, align 8
  store %struct.screen* %8, %struct.screen** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.screen*, %struct.screen** %5, align 8
  %11 = getelementptr inbounds %struct.screen, %struct.screen* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

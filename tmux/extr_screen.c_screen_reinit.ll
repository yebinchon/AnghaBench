; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen.c_screen_reinit.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen.c_screen_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { i32, %struct.TYPE_2__*, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@MODE_CURSOR = common dso_local global i32 0, align 4
@MODE_WRAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_reinit(%struct.screen* %0) #0 {
  %2 = alloca %struct.screen*, align 8
  store %struct.screen* %0, %struct.screen** %2, align 8
  %3 = load %struct.screen*, %struct.screen** %2, align 8
  %4 = getelementptr inbounds %struct.screen, %struct.screen* %3, i32 0, i32 5
  store i64 0, i64* %4, align 8
  %5 = load %struct.screen*, %struct.screen** %2, align 8
  %6 = getelementptr inbounds %struct.screen, %struct.screen* %5, i32 0, i32 4
  store i64 0, i64* %6, align 8
  %7 = load %struct.screen*, %struct.screen** %2, align 8
  %8 = getelementptr inbounds %struct.screen, %struct.screen* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.screen*, %struct.screen** %2, align 8
  %10 = call i64 @screen_size_y(%struct.screen* %9)
  %11 = sub nsw i64 %10, 1
  %12 = load %struct.screen*, %struct.screen** %2, align 8
  %13 = getelementptr inbounds %struct.screen, %struct.screen* %12, i32 0, i32 2
  store i64 %11, i64* %13, align 8
  %14 = load i32, i32* @MODE_CURSOR, align 4
  %15 = load i32, i32* @MODE_WRAP, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.screen*, %struct.screen** %2, align 8
  %18 = getelementptr inbounds %struct.screen, %struct.screen* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.screen*, %struct.screen** %2, align 8
  %20 = call i32 @screen_reset_tabs(%struct.screen* %19)
  %21 = load %struct.screen*, %struct.screen** %2, align 8
  %22 = getelementptr inbounds %struct.screen, %struct.screen* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.screen*, %struct.screen** %2, align 8
  %25 = getelementptr inbounds %struct.screen, %struct.screen* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.screen*, %struct.screen** %2, align 8
  %30 = getelementptr inbounds %struct.screen, %struct.screen* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @grid_clear_lines(%struct.TYPE_2__* %23, i32 %28, i32 %33, i32 8)
  %35 = load %struct.screen*, %struct.screen** %2, align 8
  %36 = call i32 @screen_clear_selection(%struct.screen* %35)
  %37 = load %struct.screen*, %struct.screen** %2, align 8
  %38 = call i32 @screen_free_titles(%struct.screen* %37)
  ret void
}

declare dso_local i64 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @screen_reset_tabs(%struct.screen*) #1

declare dso_local i32 @grid_clear_lines(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @screen_clear_selection(%struct.screen*) #1

declare dso_local i32 @screen_free_titles(%struct.screen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

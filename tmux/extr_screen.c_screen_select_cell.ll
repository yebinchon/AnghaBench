; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen.c_screen_select_cell.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen.c_screen_select_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.grid_cell = type { i32, i32, i32 }

@GRID_ATTR_CHARSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_select_cell(%struct.screen* %0, %struct.grid_cell* %1, %struct.grid_cell* %2) #0 {
  %4 = alloca %struct.screen*, align 8
  %5 = alloca %struct.grid_cell*, align 8
  %6 = alloca %struct.grid_cell*, align 8
  store %struct.screen* %0, %struct.screen** %4, align 8
  store %struct.grid_cell* %1, %struct.grid_cell** %5, align 8
  store %struct.grid_cell* %2, %struct.grid_cell** %6, align 8
  %7 = load %struct.screen*, %struct.screen** %4, align 8
  %8 = getelementptr inbounds %struct.screen, %struct.screen* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load %struct.screen*, %struct.screen** %4, align 8
  %13 = getelementptr inbounds %struct.screen, %struct.screen* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %3
  br label %53

19:                                               ; preds = %11
  %20 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %21 = load %struct.screen*, %struct.screen** %4, align 8
  %22 = getelementptr inbounds %struct.screen, %struct.screen* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @memcpy(%struct.grid_cell* %20, i32* %24, i32 12)
  %26 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %27 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %26, i32 0, i32 2
  %28 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %29 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %28, i32 0, i32 2
  %30 = call i32 @utf8_copy(i32* %27, i32* %29)
  %31 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %32 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GRID_ATTR_CHARSET, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %38 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %40 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GRID_ATTR_CHARSET, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %45 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %49 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %52 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @utf8_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

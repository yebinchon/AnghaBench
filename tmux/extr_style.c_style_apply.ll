; ModuleID = '/home/carl/AnghaBench/tmux/extr_style.c_style_apply.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_style.c_style_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid_cell = type { i32, i32, i32 }
%struct.options = type { i32 }
%struct.style = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@grid_default_cell = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @style_apply(%struct.grid_cell* %0, %struct.options* %1, i8* %2) #0 {
  %4 = alloca %struct.grid_cell*, align 8
  %5 = alloca %struct.options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.style*, align 8
  store %struct.grid_cell* %0, %struct.grid_cell** %4, align 8
  store %struct.options* %1, %struct.options** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %9 = call i32 @memcpy(%struct.grid_cell* %8, i32* @grid_default_cell, i32 12)
  %10 = load %struct.options*, %struct.options** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.style* @options_get_style(%struct.options* %10, i8* %11)
  store %struct.style* %12, %struct.style** %7, align 8
  %13 = load %struct.style*, %struct.style** %7, align 8
  %14 = getelementptr inbounds %struct.style, %struct.style* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %18 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.style*, %struct.style** %7, align 8
  %20 = getelementptr inbounds %struct.style, %struct.style* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %24 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.style*, %struct.style** %7, align 8
  %26 = getelementptr inbounds %struct.style, %struct.style* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %30 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  ret void
}

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local %struct.style* @options_get_style(%struct.options*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

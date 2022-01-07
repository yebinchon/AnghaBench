; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_create_cell.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_create_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layout_cell = type { i32*, i8*, i8*, i8*, i8*, i32, %struct.layout_cell*, i32 }

@LAYOUT_WINDOWPANE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.layout_cell* @layout_create_cell(%struct.layout_cell* %0) #0 {
  %2 = alloca %struct.layout_cell*, align 8
  %3 = alloca %struct.layout_cell*, align 8
  store %struct.layout_cell* %0, %struct.layout_cell** %2, align 8
  %4 = call %struct.layout_cell* @xmalloc(i32 64)
  store %struct.layout_cell* %4, %struct.layout_cell** %3, align 8
  %5 = load i32, i32* @LAYOUT_WINDOWPANE, align 4
  %6 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %7 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %6, i32 0, i32 7
  store i32 %5, i32* %7, align 8
  %8 = load %struct.layout_cell*, %struct.layout_cell** %2, align 8
  %9 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %10 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %9, i32 0, i32 6
  store %struct.layout_cell* %8, %struct.layout_cell** %10, align 8
  %11 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %12 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %11, i32 0, i32 5
  %13 = call i32 @TAILQ_INIT(i32* %12)
  %14 = load i8*, i8** @UINT_MAX, align 8
  %15 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %16 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @UINT_MAX, align 8
  %18 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %19 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @UINT_MAX, align 8
  %21 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %22 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @UINT_MAX, align 8
  %24 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %25 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %27 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  ret %struct.layout_cell* %28
}

declare dso_local %struct.layout_cell* @xmalloc(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

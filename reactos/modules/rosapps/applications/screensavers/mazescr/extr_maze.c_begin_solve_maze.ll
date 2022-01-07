; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/mazescr/extr_maze.c_begin_solve_maze.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/mazescr/extr_maze.c_begin_solve_maze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@WALL_TOP = common dso_local global i32 0, align 4
@start_dir = common dso_local global i32 0, align 4
@maze = common dso_local global i32** null, align 8
@start_x = common dso_local global i64 0, align 8
@start_y = common dso_local global i64 0, align 8
@end_dir = common dso_local global i32 0, align 4
@end_x = common dso_local global i64 0, align 8
@end_y = common dso_local global i64 0, align 8
@pathi = common dso_local global i64 0, align 8
@path = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @begin_solve_maze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @begin_solve_maze(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @WALL_TOP, align 4
  %4 = load i32, i32* @start_dir, align 4
  %5 = ashr i32 %3, %4
  %6 = load i32**, i32*** @maze, align 8
  %7 = load i64, i64* @start_x, align 8
  %8 = getelementptr inbounds i32*, i32** %6, i64 %7
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @start_y, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %5
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @WALL_TOP, align 4
  %15 = load i32, i32* @end_dir, align 4
  %16 = ashr i32 %14, %15
  %17 = load i32**, i32*** @maze, align 8
  %18 = load i64, i64* @end_x, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @end_y, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %16
  store i32 %24, i32* %22, align 4
  store i64 0, i64* @pathi, align 8
  %25 = load i64, i64* @end_x, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %27 = load i64, i64* @pathi, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %25, i64* %29, align 8
  %30 = load i64, i64* @end_y, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %32 = load i64, i64* @pathi, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 %30, i64* %34, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %36 = load i64, i64* @pathi, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 -1, i32* %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

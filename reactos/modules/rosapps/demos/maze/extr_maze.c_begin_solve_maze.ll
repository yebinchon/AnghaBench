; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/demos/maze/extr_maze.c_begin_solve_maze.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/demos/maze/extr_maze.c_begin_solve_maze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@begin_solve_maze.grayPattern = internal global [8 x i64] [i64 1431655765, i64 2863311530, i64 1431655765, i64 2863311530, i64 1431655765, i64 2863311530, i64 1431655765, i64 2863311530], align 16
@begin_solve_maze.argbq = internal global [2 x i64] [i64 0, i64 255], align 16
@hWnd = common dso_local global i32 0, align 4
@hDC = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i32 0, align 4
@hBrushDead = common dso_local global i8* null, align 8
@hBrushLiving = common dso_local global i8* null, align 8
@WALL_TOP = common dso_local global i32 0, align 4
@start_dir = common dso_local global i32 0, align 4
@maze = common dso_local global i32** null, align 8
@start_x = common dso_local global i64 0, align 8
@start_y = common dso_local global i64 0, align 8
@end_dir = common dso_local global i32 0, align 4
@end_x = common dso_local global i64 0, align 8
@end_y = common dso_local global i64 0, align 8
@pathi = common dso_local global i64 0, align 8
@path = common dso_local global %struct.TYPE_9__* null, align 8
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @begin_solve_maze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @begin_solve_maze() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = load i32, i32* @hWnd, align 4
  %3 = call i32 @GetDC(i32 %2)
  store i32 %3, i32* @hDC, align 4
  %4 = call %struct.TYPE_8__* @malloc(i32 84)
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %1, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 4, i32* %7, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i32 8, i32* %10, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i32 8, i32* %13, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  store i32 1, i32* %16, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @BI_RGB, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 5
  store i32 %20, i32* %23, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @memcpy(i64 %26, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @begin_solve_maze.argbq, i64 0, i64 0), i32 16)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 2
  %32 = call i32 @memcpy(i64 %31, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @begin_solve_maze.grayPattern, i64 0, i64 0), i32 64)
  %33 = call i32 @RGB(i32 255, i32 0, i32 0)
  %34 = call i8* @CreateSolidBrush(i32 %33)
  store i8* %34, i8** @hBrushDead, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %36 = call i32 @free(%struct.TYPE_8__* %35)
  %37 = call i32 @RGB(i32 0, i32 255, i32 0)
  %38 = call i8* @CreateSolidBrush(i32 %37)
  store i8* %38, i8** @hBrushLiving, align 8
  %39 = load i32, i32* @WALL_TOP, align 4
  %40 = load i32, i32* @start_dir, align 4
  %41 = ashr i32 %39, %40
  %42 = load i32**, i32*** @maze, align 8
  %43 = load i64, i64* @start_x, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @start_y, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %41
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @WALL_TOP, align 4
  %51 = load i32, i32* @end_dir, align 4
  %52 = ashr i32 %50, %51
  %53 = load i32**, i32*** @maze, align 8
  %54 = load i64, i64* @end_x, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @end_y, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %52
  store i32 %60, i32* %58, align 4
  store i64 0, i64* @pathi, align 8
  %61 = load i64, i64* @end_x, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @path, align 8
  %63 = load i64, i64* @pathi, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i64 %61, i64* %65, align 8
  %66 = load i64, i64* @end_y, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @path, align 8
  %68 = load i64, i64* @pathi, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store i64 %66, i64* %70, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** @path, align 8
  %72 = load i64, i64* @pathi, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  store i32 -1, i32* %74, align 8
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @memcpy(i64, i64*, i32) #1

declare dso_local i8* @CreateSolidBrush(i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/mazescr/extr_maze.c_solve_maze.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/mazescr/extr_maze.c_solve_maze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@path = common dso_local global %struct.TYPE_2__* null, align 8
@pathi = common dso_local global i64 0, align 8
@hDC = common dso_local global i32 0, align 4
@hBrushDead = common dso_local global i32 0, align 4
@maze = common dso_local global i32** null, align 8
@WALL_TOP = common dso_local global i32 0, align 4
@hBrushLiving = common dso_local global i32 0, align 4
@START_SQUARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @solve_maze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solve_maze(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %5

5:                                                ; preds = %110, %1
  store i32 1, i32* %4, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %7 = load i64, i64* @pathi, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = icmp sge i32 %11, 4
  br i1 %12, label %13, label %36

13:                                               ; preds = %5
  %14 = load i64, i64* @pathi, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* @pathi, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %17 = load i64, i64* @pathi, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %23 = load i64, i64* @pathi, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %29 = load i64, i64* @pathi, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @hDC, align 4
  %34 = load i32, i32* @hBrushDead, align 4
  %35 = call i32 @draw_solid_square(i32 %21, i32 %27, i32 %32, i32 %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %109

36:                                               ; preds = %5
  %37 = load i32**, i32*** @maze, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %39 = load i64, i64* @pathi, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32*, i32** %37, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %46 = load i64, i64* @pathi, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @WALL_TOP, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %54 = load i64, i64* @pathi, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %52, %57
  %59 = and i32 %51, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %107, label %61

61:                                               ; preds = %36
  %62 = load i64, i64* @pathi, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %66 = load i64, i64* @pathi, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %71 = load i64, i64* @pathi, align 8
  %72 = sub i64 %71, 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 2
  %77 = srem i32 %76, 4
  %78 = icmp ne i32 %69, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %64, %61
  %80 = load i64, i64* @pathi, align 8
  %81 = load i32, i32* @hDC, align 4
  %82 = load i32, i32* @hBrushLiving, align 4
  %83 = call i32 @enter_square(i64 %80, i32 %81, i32 %82)
  %84 = load i64, i64* @pathi, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* @pathi, align 8
  %86 = load i32**, i32*** @maze, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %88 = load i64, i64* @pathi, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32*, i32** %86, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %95 = load i64, i64* @pathi, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %93, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @START_SQUARE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %79
  store i32 1, i32* %3, align 4
  br label %106

105:                                              ; preds = %79
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %104
  br label %108

107:                                              ; preds = %64, %36
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %106
  br label %109

109:                                              ; preds = %108, %13
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  br i1 %113, label %5, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @draw_solid_square(i32, i32, i32, i32, i32) #1

declare dso_local i32 @enter_square(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

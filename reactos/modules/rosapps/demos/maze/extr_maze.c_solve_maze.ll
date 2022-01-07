; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/demos/maze/extr_maze.c_solve_maze.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/demos/maze/extr_maze.c_solve_maze.c"
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
@hWnd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @solve_maze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solve_maze() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %115, %0
  store i32 1, i32* %2, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %5 = load i64, i64* @pathi, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 8
  %10 = icmp sge i32 %9, 4
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = load i64, i64* @pathi, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* @pathi, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %15 = load i64, i64* @pathi, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %21 = load i64, i64* @pathi, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %27 = load i64, i64* @pathi, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @hDC, align 4
  %32 = load i32, i32* @hBrushDead, align 4
  %33 = call i32 @draw_solid_square(i32 %19, i32 %25, i32 %30, i32 %31, i32 %32)
  store i32 0, i32* %1, align 4
  br label %114

34:                                               ; preds = %3
  %35 = load i32**, i32*** @maze, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %37 = load i64, i64* @pathi, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32*, i32** %35, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %44 = load i64, i64* @pathi, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @WALL_TOP, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %52 = load i64, i64* @pathi, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %50, %55
  %57 = and i32 %49, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %112, label %59

59:                                               ; preds = %34
  %60 = load i64, i64* @pathi, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %59
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %64 = load i64, i64* @pathi, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %69 = load i64, i64* @pathi, align 8
  %70 = sub i64 %69, 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 2
  %75 = srem i32 %74, 4
  %76 = icmp ne i32 %67, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %62, %59
  %78 = load i64, i64* @pathi, align 8
  %79 = load i32, i32* @hDC, align 4
  %80 = load i32, i32* @hBrushLiving, align 4
  %81 = call i32 @enter_square(i64 %78, i32 %79, i32 %80)
  %82 = load i64, i64* @pathi, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* @pathi, align 8
  %84 = load i32**, i32*** @maze, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %86 = load i64, i64* @pathi, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32*, i32** %84, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @path, align 8
  %93 = load i64, i64* @pathi, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @START_SQUARE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %77
  %103 = load i32, i32* @hBrushLiving, align 4
  %104 = call i32 @DeleteObject(i32 %103)
  %105 = load i32, i32* @hBrushDead, align 4
  %106 = call i32 @DeleteObject(i32 %105)
  %107 = load i32, i32* @hWnd, align 4
  %108 = load i32, i32* @hDC, align 4
  %109 = call i32 @ReleaseDC(i32 %107, i32 %108)
  store i32 1, i32* %1, align 4
  br label %111

110:                                              ; preds = %77
  store i32 0, i32* %1, align 4
  br label %111

111:                                              ; preds = %110, %102
  br label %113

112:                                              ; preds = %62, %34
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %111
  br label %114

114:                                              ; preds = %113, %11
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %2, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  br i1 %118, label %3, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %1, align 4
  ret i32 %120
}

declare dso_local i32 @draw_solid_square(i32, i32, i32, i32, i32) #1

declare dso_local i32 @enter_square(i64, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

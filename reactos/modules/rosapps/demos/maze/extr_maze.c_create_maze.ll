; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/demos/maze/extr_maze.c_create_maze.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/demos/maze/extr_maze.c_create_maze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@hWnd = common dso_local global i32 0, align 4
@cur_sq_x = common dso_local global i64 0, align 8
@move_list = common dso_local global %struct.TYPE_4__* null, align 8
@sqnum = common dso_local global i64 0, align 8
@cur_sq_y = common dso_local global i64 0, align 8
@DOOR_OUT_TOP = common dso_local global i32 0, align 4
@maze = common dso_local global i32** null, align 8
@DOOR_IN_TOP = common dso_local global i32 0, align 4
@END_SQUARE = common dso_local global i32 0, align 4
@path_length = common dso_local global i32 0, align 4
@save_path = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_maze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_maze() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @hWnd, align 4
  %5 = call i32 @GetDC(i32 %4)
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %131, %0
  %7 = load i64, i64* @cur_sq_x, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @move_list, align 8
  %9 = load i64, i64* @sqnum, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i64 %7, i64* %11, align 8
  %12 = load i64, i64* @cur_sq_y, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @move_list, align 8
  %14 = load i64, i64* @sqnum, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i64 %12, i64* %16, align 8
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @move_list, align 8
  %19 = load i64, i64* @sqnum, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %17, i32* %21, align 8
  br label %22

22:                                               ; preds = %33, %6
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @choose_door(i32 %23)
  store i32 %24, i32* %2, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = call i32 (...) @backup()
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @hWnd, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ReleaseDC(i32 %30, i32 %31)
  br label %132

33:                                               ; preds = %26
  br label %22

34:                                               ; preds = %22
  %35 = load i32, i32* @DOOR_OUT_TOP, align 4
  %36 = load i32, i32* %2, align 4
  %37 = ashr i32 %35, %36
  %38 = load i32**, i32*** @maze, align 8
  %39 = load i64, i64* @cur_sq_x, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @cur_sq_y, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %37
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %2, align 4
  switch i32 %46, label %59 [
    i32 0, label %47
    i32 1, label %50
    i32 2, label %53
    i32 3, label %56
  ]

47:                                               ; preds = %34
  %48 = load i64, i64* @cur_sq_y, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* @cur_sq_y, align 8
  br label %59

50:                                               ; preds = %34
  %51 = load i64, i64* @cur_sq_x, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* @cur_sq_x, align 8
  br label %59

53:                                               ; preds = %34
  %54 = load i64, i64* @cur_sq_y, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* @cur_sq_y, align 8
  br label %59

56:                                               ; preds = %34
  %57 = load i64, i64* @cur_sq_x, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* @cur_sq_x, align 8
  br label %59

59:                                               ; preds = %34, %56, %53, %50, %47
  %60 = load i64, i64* @sqnum, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* @sqnum, align 8
  %62 = load i32, i32* @DOOR_IN_TOP, align 4
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 2
  %65 = srem i32 %64, 4
  %66 = ashr i32 %62, %65
  %67 = load i32**, i32*** @maze, align 8
  %68 = load i64, i64* @cur_sq_x, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @cur_sq_y, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %66
  store i32 %74, i32* %72, align 4
  %75 = load i32**, i32*** @maze, align 8
  %76 = load i64, i64* @cur_sq_x, align 8
  %77 = getelementptr inbounds i32*, i32** %75, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @cur_sq_y, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @END_SQUARE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %130

85:                                               ; preds = %59
  %86 = load i64, i64* @sqnum, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* @path_length, align 4
  store i32 0, i32* %1, align 4
  br label %88

88:                                               ; preds = %126, %85
  %89 = load i32, i32* %1, align 4
  %90 = load i32, i32* @path_length, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %129

92:                                               ; preds = %88
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @move_list, align 8
  %94 = load i32, i32* %1, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** @save_path, align 8
  %100 = load i32, i32* %1, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i64 %98, i64* %103, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @move_list, align 8
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** @save_path, align 8
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i64 %109, i64* %114, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @move_list, align 8
  %116 = load i32, i32* %1, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** @save_path, align 8
  %122 = load i32, i32* %1, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  store i32 %120, i32* %125, align 8
  br label %126

126:                                              ; preds = %92
  %127 = load i32, i32* %1, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %1, align 4
  br label %88

129:                                              ; preds = %88
  br label %130

130:                                              ; preds = %129, %59
  br label %131

131:                                              ; preds = %130
  br i1 true, label %6, label %132

132:                                              ; preds = %29, %131
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @choose_door(i32) #1

declare dso_local i32 @backup(...) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

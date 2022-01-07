; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/mazescr/extr_maze.c_create_maze.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/mazescr/extr_maze.c_create_maze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@cur_sq_x = common dso_local global i64 0, align 8
@move_list = common dso_local global %struct.TYPE_4__* null, align 8
@sqnum = common dso_local global i64 0, align 8
@cur_sq_y = common dso_local global i64 0, align 8
@hDC = common dso_local global i32 0, align 4
@DOOR_OUT_TOP = common dso_local global i32 0, align 4
@maze = common dso_local global i32** null, align 8
@DOOR_IN_TOP = common dso_local global i32 0, align 4
@END_SQUARE = common dso_local global i32 0, align 4
@path_length = common dso_local global i32 0, align 4
@save_path = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @create_maze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_maze(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %127, %1
  %6 = load i64, i64* @cur_sq_x, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @move_list, align 8
  %8 = load i64, i64* @sqnum, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %6, i64* %10, align 8
  %11 = load i64, i64* @cur_sq_y, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @move_list, align 8
  %13 = load i64, i64* @sqnum, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i64 %11, i64* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @move_list, align 8
  %18 = load i64, i64* @sqnum, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i32 %16, i32* %20, align 8
  br label %21

21:                                               ; preds = %29, %5
  %22 = load i32, i32* @hDC, align 4
  %23 = call i32 @choose_door(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = call i32 (...) @backup()
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %128

29:                                               ; preds = %25
  br label %21

30:                                               ; preds = %21
  %31 = load i32, i32* @DOOR_OUT_TOP, align 4
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32**, i32*** @maze, align 8
  %35 = load i64, i64* @cur_sq_x, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @cur_sq_y, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %33
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %4, align 4
  switch i32 %42, label %55 [
    i32 0, label %43
    i32 1, label %46
    i32 2, label %49
    i32 3, label %52
  ]

43:                                               ; preds = %30
  %44 = load i64, i64* @cur_sq_y, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* @cur_sq_y, align 8
  br label %55

46:                                               ; preds = %30
  %47 = load i64, i64* @cur_sq_x, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* @cur_sq_x, align 8
  br label %55

49:                                               ; preds = %30
  %50 = load i64, i64* @cur_sq_y, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* @cur_sq_y, align 8
  br label %55

52:                                               ; preds = %30
  %53 = load i64, i64* @cur_sq_x, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* @cur_sq_x, align 8
  br label %55

55:                                               ; preds = %30, %52, %49, %46, %43
  %56 = load i64, i64* @sqnum, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* @sqnum, align 8
  %58 = load i32, i32* @DOOR_IN_TOP, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 2
  %61 = srem i32 %60, 4
  %62 = ashr i32 %58, %61
  %63 = load i32**, i32*** @maze, align 8
  %64 = load i64, i64* @cur_sq_x, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @cur_sq_y, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %62
  store i32 %70, i32* %68, align 4
  %71 = load i32**, i32*** @maze, align 8
  %72 = load i64, i64* @cur_sq_x, align 8
  %73 = getelementptr inbounds i32*, i32** %71, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @cur_sq_y, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @END_SQUARE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %126

81:                                               ; preds = %55
  %82 = load i64, i64* @sqnum, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* @path_length, align 4
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %122, %81
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @path_length, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %125

88:                                               ; preds = %84
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @move_list, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @save_path, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i64 %94, i64* %99, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @move_list, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @save_path, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i64 %105, i64* %110, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @move_list, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @save_path, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  store i32 %116, i32* %121, align 8
  br label %122

122:                                              ; preds = %88
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %3, align 4
  br label %84

125:                                              ; preds = %84
  br label %126

126:                                              ; preds = %125, %55
  br label %127

127:                                              ; preds = %126
  br i1 true, label %5, label %128

128:                                              ; preds = %28, %127
  ret void
}

declare dso_local i32 @choose_door(i32) #1

declare dso_local i32 @backup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

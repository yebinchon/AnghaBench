; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/demos/maze/extr_maze.c_initialize_maze.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/demos/maze/extr_maze.c_initialize_maze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maze_size_x = common dso_local global i32 0, align 4
@maze_size_y = common dso_local global i32 0, align 4
@maze = common dso_local global i32** null, align 8
@WALL_TOP = common dso_local global i32 0, align 4
@WALL_RIGHT = common dso_local global i32 0, align 4
@WALL_BOTTOM = common dso_local global i32 0, align 4
@WALL_LEFT = common dso_local global i32 0, align 4
@START_SQUARE = common dso_local global i32 0, align 4
@DOOR_IN_TOP = common dso_local global i32 0, align 4
@cur_sq_x = common dso_local global i32 0, align 4
@cur_sq_y = common dso_local global i32 0, align 4
@start_x = common dso_local global i32 0, align 4
@start_y = common dso_local global i32 0, align 4
@start_dir = common dso_local global i32 0, align 4
@sqnum = common dso_local global i64 0, align 8
@END_SQUARE = common dso_local global i32 0, align 4
@DOOR_OUT_TOP = common dso_local global i32 0, align 4
@end_x = common dso_local global i32 0, align 4
@end_y = common dso_local global i32 0, align 4
@end_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_maze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_maze() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %26, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @maze_size_x, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @maze_size_y, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i32**, i32*** @maze, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %9

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %4

29:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @maze_size_x, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i32, i32* @WALL_TOP, align 4
  %36 = load i32**, i32*** @maze, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %35
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %30

47:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %65, %47
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @maze_size_y, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load i32, i32* @WALL_RIGHT, align 4
  %54 = load i32**, i32*** @maze, align 8
  %55 = load i32, i32* @maze_size_x, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %54, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %53
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %48

68:                                               ; preds = %48
  store i32 0, i32* %1, align 4
  br label %69

69:                                               ; preds = %86, %68
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* @maze_size_x, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load i32, i32* @WALL_BOTTOM, align 4
  %75 = load i32**, i32*** @maze, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @maze_size_y, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %74
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %73
  %87 = load i32, i32* %1, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %1, align 4
  br label %69

89:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %104, %89
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* @maze_size_y, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load i32, i32* @WALL_LEFT, align 4
  %96 = load i32**, i32*** @maze, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %2, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %95
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %2, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %2, align 4
  br label %90

107:                                              ; preds = %90
  %108 = call i32 @get_random(i32 4)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  switch i32 %109, label %126 [
    i32 0, label %110
    i32 1, label %113
    i32 2, label %118
    i32 3, label %123
  ]

110:                                              ; preds = %107
  %111 = load i32, i32* @maze_size_x, align 4
  %112 = call i32 @get_random(i32 %111)
  store i32 %112, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %126

113:                                              ; preds = %107
  %114 = load i32, i32* @maze_size_x, align 4
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %1, align 4
  %116 = load i32, i32* @maze_size_y, align 4
  %117 = call i32 @get_random(i32 %116)
  store i32 %117, i32* %2, align 4
  br label %126

118:                                              ; preds = %107
  %119 = load i32, i32* @maze_size_x, align 4
  %120 = call i32 @get_random(i32 %119)
  store i32 %120, i32* %1, align 4
  %121 = load i32, i32* @maze_size_y, align 4
  %122 = sub nsw i32 %121, 1
  store i32 %122, i32* %2, align 4
  br label %126

123:                                              ; preds = %107
  store i32 0, i32* %1, align 4
  %124 = load i32, i32* @maze_size_y, align 4
  %125 = call i32 @get_random(i32 %124)
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %107, %123, %118, %113, %110
  %127 = load i32, i32* @START_SQUARE, align 4
  %128 = load i32**, i32*** @maze, align 8
  %129 = load i32, i32* %1, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %2, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %127
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* @DOOR_IN_TOP, align 4
  %139 = load i32, i32* %3, align 4
  %140 = ashr i32 %138, %139
  %141 = load i32**, i32*** @maze, align 8
  %142 = load i32, i32* %1, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %2, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %140
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @WALL_TOP, align 4
  %152 = load i32, i32* %3, align 4
  %153 = ashr i32 %151, %152
  %154 = xor i32 %153, -1
  %155 = load i32**, i32*** @maze, align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %2, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, %154
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* %1, align 4
  store i32 %165, i32* @cur_sq_x, align 4
  %166 = load i32, i32* %2, align 4
  store i32 %166, i32* @cur_sq_y, align 4
  %167 = load i32, i32* %1, align 4
  store i32 %167, i32* @start_x, align 4
  %168 = load i32, i32* %2, align 4
  store i32 %168, i32* @start_y, align 4
  %169 = load i32, i32* %3, align 4
  store i32 %169, i32* @start_dir, align 4
  store i64 0, i64* @sqnum, align 8
  %170 = load i32, i32* %3, align 4
  %171 = add nsw i32 %170, 2
  %172 = srem i32 %171, 4
  store i32 %172, i32* %3, align 4
  %173 = load i32, i32* %3, align 4
  switch i32 %173, label %190 [
    i32 0, label %174
    i32 1, label %177
    i32 2, label %182
    i32 3, label %187
  ]

174:                                              ; preds = %126
  %175 = load i32, i32* @maze_size_x, align 4
  %176 = call i32 @get_random(i32 %175)
  store i32 %176, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %190

177:                                              ; preds = %126
  %178 = load i32, i32* @maze_size_x, align 4
  %179 = sub nsw i32 %178, 1
  store i32 %179, i32* %1, align 4
  %180 = load i32, i32* @maze_size_y, align 4
  %181 = call i32 @get_random(i32 %180)
  store i32 %181, i32* %2, align 4
  br label %190

182:                                              ; preds = %126
  %183 = load i32, i32* @maze_size_x, align 4
  %184 = call i32 @get_random(i32 %183)
  store i32 %184, i32* %1, align 4
  %185 = load i32, i32* @maze_size_y, align 4
  %186 = sub nsw i32 %185, 1
  store i32 %186, i32* %2, align 4
  br label %190

187:                                              ; preds = %126
  store i32 0, i32* %1, align 4
  %188 = load i32, i32* @maze_size_y, align 4
  %189 = call i32 @get_random(i32 %188)
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %126, %187, %182, %177, %174
  %191 = load i32, i32* @END_SQUARE, align 4
  %192 = load i32**, i32*** @maze, align 8
  %193 = load i32, i32* %1, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32*, i32** %192, i64 %194
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %2, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %191
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* @DOOR_OUT_TOP, align 4
  %203 = load i32, i32* %3, align 4
  %204 = ashr i32 %202, %203
  %205 = load i32**, i32*** @maze, align 8
  %206 = load i32, i32* %1, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %2, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %204
  store i32 %214, i32* %212, align 4
  %215 = load i32, i32* @WALL_TOP, align 4
  %216 = load i32, i32* %3, align 4
  %217 = ashr i32 %215, %216
  %218 = xor i32 %217, -1
  %219 = load i32**, i32*** @maze, align 8
  %220 = load i32, i32* %1, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %219, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %2, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, %218
  store i32 %228, i32* %226, align 4
  %229 = load i32, i32* %1, align 4
  store i32 %229, i32* @end_x, align 4
  %230 = load i32, i32* %2, align 4
  store i32 %230, i32* @end_y, align 4
  %231 = load i32, i32* %3, align 4
  store i32 %231, i32* @end_dir, align 4
  ret void
}

declare dso_local i32 @get_random(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

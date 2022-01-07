; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_reflow.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_reflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64, i64, i32, i64, i64, %struct.grid*, i32 }
%struct.grid_line = type { i64, i64, i32, i64, i64, %struct.grid_line*, i32 }
%struct.grid_cell = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GRID_LINE_DEAD = common dso_local global i32 0, align 4
@GRID_LINE_EXTENDED = common dso_local global i32 0, align 4
@GRID_LINE_WRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grid_reflow(%struct.grid* %0, i64 %1) #0 {
  %3 = alloca %struct.grid*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.grid*, align 8
  %6 = alloca %struct.grid_line*, align 8
  %7 = alloca %struct.grid_cell, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.grid* %0, %struct.grid** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.grid*, %struct.grid** %3, align 8
  %14 = getelementptr inbounds %struct.grid, %struct.grid* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.grid_line* @grid_create(i32 %15, i32 0, i32 0)
  %17 = bitcast %struct.grid_line* %16 to %struct.grid*
  store %struct.grid* %17, %struct.grid** %5, align 8
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %150, %2
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.grid*, %struct.grid** %3, align 8
  %21 = getelementptr inbounds %struct.grid, %struct.grid* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.grid*, %struct.grid** %3, align 8
  %24 = getelementptr inbounds %struct.grid, %struct.grid* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  %27 = icmp ult i64 %19, %26
  br i1 %27, label %28, label %153

28:                                               ; preds = %18
  %29 = load %struct.grid*, %struct.grid** %3, align 8
  %30 = getelementptr inbounds %struct.grid, %struct.grid* %29, i32 0, i32 5
  %31 = load %struct.grid*, %struct.grid** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.grid, %struct.grid* %31, i64 %32
  %34 = bitcast %struct.grid* %33 to %struct.grid_line*
  store %struct.grid_line* %34, %struct.grid_line** %6, align 8
  %35 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %36 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GRID_LINE_DEAD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %150

42:                                               ; preds = %28
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %43 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %44 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = xor i32 %45, -1
  %47 = load i32, i32* @GRID_LINE_EXTENDED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  store i64 1, i64* %12, align 8
  %51 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %52 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i64, i64* %4, align 8
  store i64 %58, i64* %11, align 8
  br label %61

59:                                               ; preds = %50
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %59, %57
  br label %102

62:                                               ; preds = %42
  store i64 0, i64* %10, align 8
  br label %63

63:                                               ; preds = %98, %62
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %66 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %63
  %70 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @grid_get_cell1(%struct.grid_line* %70, i64 %71, %struct.grid_cell* %7)
  %73 = load i64, i64* %10, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %7, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %12, align 8
  br label %79

79:                                               ; preds = %75, %69
  %80 = load i64, i64* %11, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %7, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %83, %86
  %88 = load i64, i64* %4, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i64, i64* %10, align 8
  store i64 %91, i64* %11, align 8
  br label %92

92:                                               ; preds = %90, %82, %79
  %93 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %7, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %9, align 8
  br label %98

98:                                               ; preds = %92
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %10, align 8
  br label %63

101:                                              ; preds = %63
  br label %102

102:                                              ; preds = %101, %61
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %4, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %4, align 8
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106, %102
  %111 = load %struct.grid*, %struct.grid** %5, align 8
  %112 = bitcast %struct.grid* %111 to %struct.grid_line*
  %113 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %114 = call i32 @grid_reflow_move(%struct.grid_line* %112, %struct.grid_line* %113)
  br label %150

115:                                              ; preds = %106
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %4, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.grid*, %struct.grid** %5, align 8
  %121 = bitcast %struct.grid* %120 to %struct.grid_line*
  %122 = load %struct.grid*, %struct.grid** %3, align 8
  %123 = bitcast %struct.grid* %122 to %struct.grid_line*
  %124 = load i64, i64* %4, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* %11, align 8
  %127 = call i32 @grid_reflow_split(%struct.grid_line* %121, %struct.grid_line* %123, i64 %124, i64 %125, i64 %126)
  br label %150

128:                                              ; preds = %115
  %129 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %130 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %128
  %136 = load %struct.grid*, %struct.grid** %5, align 8
  %137 = bitcast %struct.grid* %136 to %struct.grid_line*
  %138 = load %struct.grid*, %struct.grid** %3, align 8
  %139 = bitcast %struct.grid* %138 to %struct.grid_line*
  %140 = load i64, i64* %4, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @grid_reflow_join(%struct.grid_line* %137, %struct.grid_line* %139, i64 %140, i64 %141, i64 %142, i32 0)
  br label %149

144:                                              ; preds = %128
  %145 = load %struct.grid*, %struct.grid** %5, align 8
  %146 = bitcast %struct.grid* %145 to %struct.grid_line*
  %147 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %148 = call i32 @grid_reflow_move(%struct.grid_line* %146, %struct.grid_line* %147)
  br label %149

149:                                              ; preds = %144, %135
  br label %150

150:                                              ; preds = %149, %119, %110, %41
  %151 = load i64, i64* %8, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %8, align 8
  br label %18

153:                                              ; preds = %18
  %154 = load %struct.grid*, %struct.grid** %5, align 8
  %155 = getelementptr inbounds %struct.grid, %struct.grid* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.grid*, %struct.grid** %3, align 8
  %158 = getelementptr inbounds %struct.grid, %struct.grid* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ult i64 %156, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %153
  %162 = load %struct.grid*, %struct.grid** %5, align 8
  %163 = bitcast %struct.grid* %162 to %struct.grid_line*
  %164 = load %struct.grid*, %struct.grid** %3, align 8
  %165 = getelementptr inbounds %struct.grid, %struct.grid* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.grid*, %struct.grid** %5, align 8
  %168 = getelementptr inbounds %struct.grid, %struct.grid* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = sub i64 %166, %169
  %171 = call i32 @grid_reflow_add(%struct.grid_line* %163, i64 %170)
  br label %172

172:                                              ; preds = %161, %153
  %173 = load %struct.grid*, %struct.grid** %5, align 8
  %174 = getelementptr inbounds %struct.grid, %struct.grid* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.grid*, %struct.grid** %3, align 8
  %177 = getelementptr inbounds %struct.grid, %struct.grid* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = sub i64 %175, %178
  %180 = load %struct.grid*, %struct.grid** %3, align 8
  %181 = getelementptr inbounds %struct.grid, %struct.grid* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  %182 = load %struct.grid*, %struct.grid** %3, align 8
  %183 = getelementptr inbounds %struct.grid, %struct.grid* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.grid*, %struct.grid** %3, align 8
  %186 = getelementptr inbounds %struct.grid, %struct.grid* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ugt i64 %184, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %172
  %190 = load %struct.grid*, %struct.grid** %3, align 8
  %191 = getelementptr inbounds %struct.grid, %struct.grid* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.grid*, %struct.grid** %3, align 8
  %194 = getelementptr inbounds %struct.grid, %struct.grid* %193, i32 0, i32 4
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %189, %172
  %196 = load %struct.grid*, %struct.grid** %3, align 8
  %197 = getelementptr inbounds %struct.grid, %struct.grid* %196, i32 0, i32 5
  %198 = load %struct.grid*, %struct.grid** %197, align 8
  %199 = bitcast %struct.grid* %198 to %struct.grid_line*
  %200 = call i32 @free(%struct.grid_line* %199)
  %201 = load %struct.grid*, %struct.grid** %5, align 8
  %202 = getelementptr inbounds %struct.grid, %struct.grid* %201, i32 0, i32 5
  %203 = load %struct.grid*, %struct.grid** %202, align 8
  %204 = load %struct.grid*, %struct.grid** %3, align 8
  %205 = getelementptr inbounds %struct.grid, %struct.grid* %204, i32 0, i32 5
  store %struct.grid* %203, %struct.grid** %205, align 8
  %206 = load %struct.grid*, %struct.grid** %5, align 8
  %207 = bitcast %struct.grid* %206 to %struct.grid_line*
  %208 = call i32 @free(%struct.grid_line* %207)
  ret void
}

declare dso_local %struct.grid_line* @grid_create(i32, i32, i32) #1

declare dso_local i32 @grid_get_cell1(%struct.grid_line*, i64, %struct.grid_cell*) #1

declare dso_local i32 @grid_reflow_move(%struct.grid_line*, %struct.grid_line*) #1

declare dso_local i32 @grid_reflow_split(%struct.grid_line*, %struct.grid_line*, i64, i64, i64) #1

declare dso_local i32 @grid_reflow_join(%struct.grid_line*, %struct.grid_line*, i64, i64, i64, i32) #1

declare dso_local i32 @grid_reflow_add(%struct.grid_line*, i64) #1

declare dso_local i32 @free(%struct.grid_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

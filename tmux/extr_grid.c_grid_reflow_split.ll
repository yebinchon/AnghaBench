; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_reflow_split.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_reflow_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64, i64, %struct.grid_line* }
%struct.grid_line = type { i64, i32, i64 }
%struct.grid_cell = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GRID_LINE_EXTENDED = common dso_local global i32 0, align 4
@GRID_LINE_WRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grid*, %struct.grid*, i64, i64, i64)* @grid_reflow_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grid_reflow_split(%struct.grid* %0, %struct.grid* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.grid*, align 8
  %7 = alloca %struct.grid*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.grid_line*, align 8
  %12 = alloca %struct.grid_line*, align 8
  %13 = alloca %struct.grid_cell, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.grid* %0, %struct.grid** %6, align 8
  store %struct.grid* %1, %struct.grid** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %21 = load %struct.grid*, %struct.grid** %7, align 8
  %22 = getelementptr inbounds %struct.grid, %struct.grid* %21, i32 0, i32 2
  %23 = load %struct.grid_line*, %struct.grid_line** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %23, i64 %24
  store %struct.grid_line* %25, %struct.grid_line** %11, align 8
  %26 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %27 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %19, align 8
  %29 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %30 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %20, align 4
  %32 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %33 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = xor i32 %34, -1
  %36 = load i32, i32* @GRID_LINE_EXTENDED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %5
  %40 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %41 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %42, 1
  %44 = load i64, i64* %8, align 8
  %45 = udiv i64 %43, %44
  %46 = add i64 1, %45
  store i64 %46, i64* %15, align 8
  br label %77

47:                                               ; preds = %5
  store i64 2, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %48 = load i64, i64* %10, align 8
  store i64 %48, i64* %17, align 8
  br label %49

49:                                               ; preds = %73, %47
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %19, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  %54 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %55 = load i64, i64* %17, align 8
  %56 = call i32 @grid_get_cell1(%struct.grid_line* %54, i64 %55, %struct.grid_cell* %13)
  %57 = load i64, i64* %16, align 8
  %58 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %13, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %57, %60
  %62 = load i64, i64* %8, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i64, i64* %15, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %67

67:                                               ; preds = %64, %53
  %68 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %13, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %16, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %16, align 8
  br label %73

73:                                               ; preds = %67
  %74 = load i64, i64* %17, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %17, align 8
  br label %49

76:                                               ; preds = %49
  br label %77

77:                                               ; preds = %76, %39
  %78 = load %struct.grid*, %struct.grid** %6, align 8
  %79 = getelementptr inbounds %struct.grid, %struct.grid* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %14, align 8
  %82 = load %struct.grid*, %struct.grid** %6, align 8
  %83 = load i64, i64* %15, align 8
  %84 = call %struct.grid_line* @grid_reflow_add(%struct.grid* %82, i64 %83)
  store %struct.grid_line* %84, %struct.grid_line** %12, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %18, align 8
  %85 = load i64, i64* %10, align 8
  store i64 %85, i64* %17, align 8
  br label %86

86:                                               ; preds = %125, %77
  %87 = load i64, i64* %17, align 8
  %88 = load i64, i64* %19, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %128

90:                                               ; preds = %86
  %91 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %92 = load i64, i64* %17, align 8
  %93 = call i32 @grid_get_cell1(%struct.grid_line* %91, i64 %92, %struct.grid_cell* %13)
  %94 = load i64, i64* %16, align 8
  %95 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %13, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %94, %97
  %99 = load i64, i64* %8, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %90
  %102 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %103 = load %struct.grid*, %struct.grid** %6, align 8
  %104 = getelementptr inbounds %struct.grid, %struct.grid* %103, i32 0, i32 2
  %105 = load %struct.grid_line*, %struct.grid_line** %104, align 8
  %106 = load i64, i64* %14, align 8
  %107 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %105, i64 %106
  %108 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %102
  store i32 %110, i32* %108, align 8
  %111 = load i64, i64* %14, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %14, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %18, align 8
  br label %113

113:                                              ; preds = %101, %90
  %114 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %13, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %16, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %16, align 8
  %119 = load %struct.grid*, %struct.grid** %6, align 8
  %120 = load i64, i64* %18, align 8
  %121 = load i64, i64* %14, align 8
  %122 = call i32 @grid_set_cell(%struct.grid* %119, i64 %120, i64 %121, %struct.grid_cell* %13)
  %123 = load i64, i64* %18, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %18, align 8
  br label %125

125:                                              ; preds = %113
  %126 = load i64, i64* %17, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %17, align 8
  br label %86

128:                                              ; preds = %86
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %135 = load %struct.grid*, %struct.grid** %6, align 8
  %136 = getelementptr inbounds %struct.grid, %struct.grid* %135, i32 0, i32 2
  %137 = load %struct.grid_line*, %struct.grid_line** %136, align 8
  %138 = load i64, i64* %14, align 8
  %139 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %137, i64 %138
  %140 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %134
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %133, %128
  %144 = load i64, i64* %10, align 8
  %145 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %146 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %148 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %147, i32 0, i32 2
  store i64 %144, i64* %148, align 8
  %149 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %150 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %151 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load %struct.grid_line*, %struct.grid_line** %12, align 8
  %155 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %156 = call i32 @memcpy(%struct.grid_line* %154, %struct.grid_line* %155, i32 24)
  %157 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %158 = call i32 @grid_reflow_dead(%struct.grid_line* %157)
  %159 = load i64, i64* %9, align 8
  %160 = load %struct.grid*, %struct.grid** %7, align 8
  %161 = getelementptr inbounds %struct.grid, %struct.grid* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ule i64 %159, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %143
  %165 = load i64, i64* %15, align 8
  %166 = sub i64 %165, 1
  %167 = load %struct.grid*, %struct.grid** %7, align 8
  %168 = getelementptr inbounds %struct.grid, %struct.grid* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, %166
  store i64 %170, i64* %168, align 8
  br label %171

171:                                              ; preds = %164, %143
  %172 = load i64, i64* %16, align 8
  %173 = load i64, i64* %8, align 8
  %174 = icmp ult i64 %172, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %171
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %175
  %181 = load %struct.grid*, %struct.grid** %6, align 8
  %182 = load %struct.grid*, %struct.grid** %7, align 8
  %183 = load i64, i64* %8, align 8
  %184 = load i64, i64* %9, align 8
  %185 = load i64, i64* %16, align 8
  %186 = call i32 @grid_reflow_join(%struct.grid* %181, %struct.grid* %182, i64 %183, i64 %184, i64 %185, i32 1)
  br label %187

187:                                              ; preds = %180, %175, %171
  ret void
}

declare dso_local i32 @grid_get_cell1(%struct.grid_line*, i64, %struct.grid_cell*) #1

declare dso_local %struct.grid_line* @grid_reflow_add(%struct.grid*, i64) #1

declare dso_local i32 @grid_set_cell(%struct.grid*, i64, i64, %struct.grid_cell*) #1

declare dso_local i32 @memcpy(%struct.grid_line*, %struct.grid_line*, i32) #1

declare dso_local i32 @grid_reflow_dead(%struct.grid_line*) #1

declare dso_local i32 @grid_reflow_join(%struct.grid*, %struct.grid*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

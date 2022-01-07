; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_grid_word.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_grid_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64, i32, %struct.grid_line* }
%struct.grid_line = type { i32 }
%struct.grid_cell = type { i32, i32 }
%struct.utf8_data = type { i64 }

@global_s_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"word-separators\00", align 1
@GRID_FLAG_PADDING = common dso_local global i32 0, align 4
@GRID_LINE_WRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format_grid_word(%struct.grid* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.grid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.grid_line*, align 8
  %8 = alloca %struct.grid_cell, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.utf8_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.grid* %0, %struct.grid** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.utf8_data* null, %struct.utf8_data** %10, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  %15 = load i32, i32* @global_s_options, align 4
  %16 = call i8* @options_get_string(i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %9, align 8
  %17 = load %struct.grid*, %struct.grid** %4, align 8
  %18 = getelementptr inbounds %struct.grid, %struct.grid* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %71, %3
  %23 = load %struct.grid*, %struct.grid** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @grid_get_cell(%struct.grid* %23, i64 %24, i64 %25, %struct.grid_cell* %8)
  %27 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %74

33:                                               ; preds = %22
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 1
  %36 = call i64 @utf8_cstrhas(i8* %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %13, align 4
  br label %74

39:                                               ; preds = %33
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %74

46:                                               ; preds = %42
  %47 = load %struct.grid*, %struct.grid** %4, align 8
  %48 = getelementptr inbounds %struct.grid, %struct.grid* %47, i32 0, i32 2
  %49 = load %struct.grid_line*, %struct.grid_line** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = sub nsw i64 %50, 1
  %52 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %49, i64 %51
  store %struct.grid_line* %52, %struct.grid_line** %7, align 8
  %53 = load %struct.grid_line*, %struct.grid_line** %7, align 8
  %54 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %74

61:                                               ; preds = %46
  %62 = load i64, i64* %6, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %6, align 8
  %64 = load %struct.grid*, %struct.grid** %4, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i64 @grid_line_length(%struct.grid* %64, i64 %65)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %74

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %39
  %72 = load i64, i64* %5, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %5, align 8
  br label %22

74:                                               ; preds = %69, %60, %45, %38, %32
  br label %75

75:                                               ; preds = %140, %74
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %75
  %79 = load %struct.grid*, %struct.grid** %4, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @grid_line_length(%struct.grid* %79, i64 %80)
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* %11, align 8
  %87 = sub nsw i64 %86, 1
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %89, label %119

89:                                               ; preds = %84, %78
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.grid*, %struct.grid** %4, align 8
  %92 = getelementptr inbounds %struct.grid, %struct.grid* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.grid*, %struct.grid** %4, align 8
  %95 = getelementptr inbounds %struct.grid, %struct.grid* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %93, %97
  %99 = sub nsw i64 %98, 1
  %100 = icmp eq i64 %90, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  br label %151

102:                                              ; preds = %89
  %103 = load %struct.grid*, %struct.grid** %4, align 8
  %104 = getelementptr inbounds %struct.grid, %struct.grid* %103, i32 0, i32 2
  %105 = load %struct.grid_line*, %struct.grid_line** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %105, i64 %106
  store %struct.grid_line* %107, %struct.grid_line** %7, align 8
  %108 = load %struct.grid_line*, %struct.grid_line** %7, align 8
  %109 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %102
  br label %151

116:                                              ; preds = %102
  %117 = load i64, i64* %6, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %122

119:                                              ; preds = %84
  %120 = load i64, i64* %5, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %5, align 8
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %122, %75
  store i32 1, i32* %13, align 4
  %124 = load %struct.grid*, %struct.grid** %4, align 8
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @grid_get_cell(%struct.grid* %124, i64 %125, i64 %126, %struct.grid_cell* %8)
  %128 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %151

134:                                              ; preds = %123
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 1
  %137 = call i64 @utf8_cstrhas(i8* %135, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %151

140:                                              ; preds = %134
  %141 = load %struct.utf8_data*, %struct.utf8_data** %10, align 8
  %142 = load i64, i64* %12, align 8
  %143 = add i64 %142, 2
  %144 = call %struct.utf8_data* @xreallocarray(%struct.utf8_data* %141, i64 %143, i32 8)
  store %struct.utf8_data* %144, %struct.utf8_data** %10, align 8
  %145 = load %struct.utf8_data*, %struct.utf8_data** %10, align 8
  %146 = load i64, i64* %12, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %12, align 8
  %148 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %145, i64 %146
  %149 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 1
  %150 = call i32 @memcpy(%struct.utf8_data* %148, i32* %149, i32 8)
  br label %75

151:                                              ; preds = %139, %133, %115, %101
  %152 = load i64, i64* %12, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load %struct.utf8_data*, %struct.utf8_data** %10, align 8
  %156 = load i64, i64* %12, align 8
  %157 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %155, i64 %156
  %158 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  %159 = load %struct.utf8_data*, %struct.utf8_data** %10, align 8
  %160 = call i8* @utf8_tocstr(%struct.utf8_data* %159)
  store i8* %160, i8** %14, align 8
  %161 = load %struct.utf8_data*, %struct.utf8_data** %10, align 8
  %162 = call i32 @free(%struct.utf8_data* %161)
  br label %163

163:                                              ; preds = %154, %151
  %164 = load i8*, i8** %14, align 8
  ret i8* %164
}

declare dso_local i8* @options_get_string(i32, i8*) #1

declare dso_local i32 @grid_get_cell(%struct.grid*, i64, i64, %struct.grid_cell*) #1

declare dso_local i64 @utf8_cstrhas(i8*, i32*) #1

declare dso_local i64 @grid_line_length(%struct.grid*, i64) #1

declare dso_local %struct.utf8_data* @xreallocarray(%struct.utf8_data*, i64, i32) #1

declare dso_local i32 @memcpy(%struct.utf8_data*, i32*, i32) #1

declare dso_local i8* @utf8_tocstr(%struct.utf8_data*) #1

declare dso_local i32 @free(%struct.utf8_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

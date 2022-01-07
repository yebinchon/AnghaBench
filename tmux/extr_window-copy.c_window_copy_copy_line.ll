; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_copy_line.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_copy_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.grid* }
%struct.grid = type { i64 }
%struct.grid_cell = type { i32, i32, i32 }
%struct.grid_line = type { i32, i64 }
%struct.utf8_data = type { i32, i8* }

@GRID_LINE_WRAPPED = common dso_local global i32 0, align 4
@GRID_FLAG_PADDING = common dso_local global i32 0, align 4
@GRID_ATTR_CHARSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i8**, i64*, i64, i64, i64)* @window_copy_copy_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_copy_line(%struct.window_mode_entry* %0, i8** %1, i64* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.window_mode_entry*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.window_copy_mode_data*, align 8
  %14 = alloca %struct.grid*, align 8
  %15 = alloca %struct.grid_cell, align 4
  %16 = alloca %struct.grid_line*, align 8
  %17 = alloca %struct.utf8_data, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %22 = load %struct.window_mode_entry*, %struct.window_mode_entry** %7, align 8
  %23 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %22, i32 0, i32 0
  %24 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %23, align 8
  store %struct.window_copy_mode_data* %24, %struct.window_copy_mode_data** %13, align 8
  %25 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %13, align 8
  %26 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.grid*, %struct.grid** %28, align 8
  store %struct.grid* %29, %struct.grid** %14, align 8
  store i64 0, i64* %20, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  br label %185

34:                                               ; preds = %6
  %35 = load %struct.grid*, %struct.grid** %14, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call %struct.grid_line* @grid_get_line(%struct.grid* %35, i64 %36)
  store %struct.grid_line* %37, %struct.grid_line** %16, align 8
  %38 = load %struct.grid_line*, %struct.grid_line** %16, align 8
  %39 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load %struct.grid_line*, %struct.grid_line** %16, align 8
  %46 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.grid*, %struct.grid** %14, align 8
  %49 = getelementptr inbounds %struct.grid, %struct.grid* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i64 1, i64* %20, align 8
  br label %53

53:                                               ; preds = %52, %44, %34
  %54 = load i64, i64* %20, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.grid_line*, %struct.grid_line** %16, align 8
  %58 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %19, align 8
  br label %64

60:                                               ; preds = %53
  %61 = load %struct.window_mode_entry*, %struct.window_mode_entry** %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i64 @window_copy_find_length(%struct.window_mode_entry* %61, i64 %62)
  store i64 %63, i64* %19, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %19, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* %19, align 8
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %19, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* %19, align 8
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %164

80:                                               ; preds = %76
  %81 = load i64, i64* %11, align 8
  store i64 %81, i64* %18, align 8
  br label %82

82:                                               ; preds = %160, %80
  %83 = load i64, i64* %18, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %163

86:                                               ; preds = %82
  %87 = load %struct.grid*, %struct.grid** %14, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @grid_get_cell(%struct.grid* %87, i64 %88, i64 %89, %struct.grid_cell* %15)
  %91 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %15, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %160

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %15, i32 0, i32 2
  %99 = call i32 @utf8_copy(%struct.utf8_data* %17, i32* %98)
  %100 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %133

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %15, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @GRID_ATTR_CHARSET, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %133

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = call i8* @tty_acs_get(i32* null, i8 signext %113)
  store i8* %114, i8** %21, align 8
  %115 = load i8*, i8** %21, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %132

117:                                              ; preds = %109
  %118 = load i8*, i8** %21, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = sext i32 %119 to i64
  %121 = icmp ule i64 %120, 8
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load i8*, i8** %21, align 8
  %124 = call i32 @strlen(i8* %123)
  %125 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 0
  store i32 %124, i32* %125, align 8
  %126 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** %21, align 8
  %129 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @memcpy(i8* %127, i8* %128, i32 %130)
  br label %132

132:                                              ; preds = %122, %117, %109
  br label %133

133:                                              ; preds = %132, %103, %97
  %134 = load i8**, i8*** %8, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = load i64*, i64** %9, align 8
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = add i64 %137, %140
  %142 = call i8* @xrealloc(i8* %135, i64 %141)
  %143 = load i8**, i8*** %8, align 8
  store i8* %142, i8** %143, align 8
  %144 = load i8**, i8*** %8, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = load i64*, i64** %9, align 8
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @memcpy(i8* %148, i8* %150, i32 %152)
  %154 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = load i64*, i64** %9, align 8
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, %156
  store i64 %159, i64* %157, align 8
  br label %160

160:                                              ; preds = %133, %96
  %161 = load i64, i64* %18, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %18, align 8
  br label %82

163:                                              ; preds = %82
  br label %164

164:                                              ; preds = %163, %76
  %165 = load i64, i64* %20, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i64, i64* %12, align 8
  %169 = load i64, i64* %19, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %185

171:                                              ; preds = %167, %164
  %172 = load i8**, i8*** %8, align 8
  %173 = load i8*, i8** %172, align 8
  %174 = load i64*, i64** %9, align 8
  %175 = load i64, i64* %174, align 8
  %176 = add i64 %175, 1
  %177 = call i8* @xrealloc(i8* %173, i64 %176)
  %178 = load i8**, i8*** %8, align 8
  store i8* %177, i8** %178, align 8
  %179 = load i8**, i8*** %8, align 8
  %180 = load i8*, i8** %179, align 8
  %181 = load i64*, i64** %9, align 8
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %181, align 8
  %184 = getelementptr inbounds i8, i8* %180, i64 %182
  store i8 10, i8* %184, align 1
  br label %185

185:                                              ; preds = %33, %171, %167
  ret void
}

declare dso_local %struct.grid_line* @grid_get_line(%struct.grid*, i64) #1

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #1

declare dso_local i32 @grid_get_cell(%struct.grid*, i64, i64, %struct.grid_cell*) #1

declare dso_local i32 @utf8_copy(%struct.utf8_data*, i32*) #1

declare dso_local i8* @tty_acs_get(i32*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

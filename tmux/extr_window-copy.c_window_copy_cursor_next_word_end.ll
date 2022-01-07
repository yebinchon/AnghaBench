; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_next_word_end.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_next_word_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data*, %struct.window_pane* }
%struct.window_copy_mode_data = type { i64, i64, i64, %struct.screen* }
%struct.screen = type { i32 }
%struct.window_pane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.options* }
%struct.options = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"mode-keys\00", align 1
@MODEKEY_VI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i8*)* @window_copy_cursor_next_word_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_cursor_next_word_end(%struct.window_mode_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca %struct.window_copy_mode_data*, align 8
  %7 = alloca %struct.options*, align 8
  %8 = alloca %struct.screen*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %16 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %15, i32 0, i32 1
  %17 = load %struct.window_pane*, %struct.window_pane** %16, align 8
  store %struct.window_pane* %17, %struct.window_pane** %5, align 8
  %18 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %19 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %18, i32 0, i32 0
  %20 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %19, align 8
  store %struct.window_copy_mode_data* %20, %struct.window_copy_mode_data** %6, align 8
  %21 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %22 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.options*, %struct.options** %24, align 8
  store %struct.options* %25, %struct.options** %7, align 8
  %26 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %27 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %26, i32 0, i32 3
  %28 = load %struct.screen*, %struct.screen** %27, align 8
  store %struct.screen* %28, %struct.screen** %8, align 8
  store i32 1, i32* %14, align 4
  %29 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %30 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load %struct.screen*, %struct.screen** %8, align 8
  %33 = call i64 @screen_hsize(%struct.screen* %32)
  %34 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %35 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %39 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  store i64 %41, i64* %10, align 8
  %42 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @window_copy_find_length(%struct.window_mode_entry* %42, i64 %43)
  store i64 %44, i64* %11, align 8
  %45 = load %struct.screen*, %struct.screen** %8, align 8
  %46 = call i64 @screen_hsize(%struct.screen* %45)
  %47 = load %struct.screen*, %struct.screen** %8, align 8
  %48 = call i64 @screen_size_y(%struct.screen* %47)
  %49 = add nsw i64 %46, %48
  %50 = sub nsw i64 %49, 1
  store i64 %50, i64* %12, align 8
  %51 = load %struct.options*, %struct.options** %7, align 8
  %52 = call i32 @options_get_number(%struct.options* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @MODEKEY_VI, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %2
  %57 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @window_copy_in_set(%struct.window_mode_entry* %57, i64 %58, i64 %59, i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i64, i64* %9, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %63, %56, %2
  br label %67

67:                                               ; preds = %116, %66
  br label %68

68:                                               ; preds = %110, %67
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @window_copy_in_set(%struct.window_mode_entry* %73, i64 %74, i64 %75, i8* %76)
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %77, %78
  br label %80

80:                                               ; preds = %72, %68
  %81 = phi i1 [ true, %68 ], [ %79, %72 ]
  br i1 %81, label %82, label %111

82:                                               ; preds = %80
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %82
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %145

91:                                               ; preds = %86
  %92 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %93 = call i32 @window_copy_cursor_down(%struct.window_mode_entry* %92, i32 0)
  store i64 0, i64* %9, align 8
  %94 = load %struct.screen*, %struct.screen** %8, align 8
  %95 = call i64 @screen_hsize(%struct.screen* %94)
  %96 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %97 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %101 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  store i64 %103, i64* %10, align 8
  %104 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i64 @window_copy_find_length(%struct.window_mode_entry* %104, i64 %105)
  store i64 %106, i64* %11, align 8
  br label %110

107:                                              ; preds = %82
  %108 = load i64, i64* %9, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %9, align 8
  br label %110

110:                                              ; preds = %107, %91
  br label %68

111:                                              ; preds = %80
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %14, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %67, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @MODEKEY_VI, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i64, i64* %9, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i64, i64* %9, align 8
  %128 = add nsw i64 %127, -1
  store i64 %128, i64* %9, align 8
  br label %129

129:                                              ; preds = %126, %123, %119
  %130 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %133 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %130, i64 %131, i64 %134)
  %136 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %137 = call i64 @window_copy_update_selection(%struct.window_mode_entry* %136, i32 1)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %129
  %140 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %141 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %142 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %140, i64 %143, i32 1)
  br label %145

145:                                              ; preds = %90, %139, %129
  ret void
}

declare dso_local i64 @screen_hsize(%struct.screen*) #1

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #1

declare dso_local i64 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @options_get_number(%struct.options*, i8*) #1

declare dso_local i32 @window_copy_in_set(%struct.window_mode_entry*, i64, i64, i8*) #1

declare dso_local i32 @window_copy_cursor_down(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_update_cursor(%struct.window_mode_entry*, i64, i64) #1

declare dso_local i64 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_redraw_lines(%struct.window_mode_entry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

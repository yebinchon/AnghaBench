; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_previous_word.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_previous_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i8*, i32)* @window_copy_cursor_previous_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_cursor_previous_word(%struct.window_mode_entry* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.window_copy_mode_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %11 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %10, i32 0, i32 0
  %12 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %11, align 8
  store %struct.window_copy_mode_data* %12, %struct.window_copy_mode_data** %7, align 8
  %13 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %14 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %17 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @screen_hsize(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %22 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %26 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %3
  %32 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @window_copy_in_set(%struct.window_mode_entry* %32, i64 %33, i64 %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %109

38:                                               ; preds = %31, %3
  br label %39

39:                                               ; preds = %107, %38
  %40 = load i64, i64* %8, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %8, align 8
  %45 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @window_copy_in_set(%struct.window_mode_entry* %45, i64 %46, i64 %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %108

52:                                               ; preds = %42
  br label %107

53:                                               ; preds = %39
  %54 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %55 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %60 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @screen_hsize(i32 %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %58
  %65 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %66 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %69 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @screen_hsize(i32 %70)
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = icmp sge i64 %67, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64, %58
  br label %128

76:                                               ; preds = %64, %53
  %77 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %78 = call i32 @window_copy_cursor_up(%struct.window_mode_entry* %77, i32 0)
  %79 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %80 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @screen_hsize(i32 %81)
  %83 = sext i32 %82 to i64
  %84 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %85 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %89 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  store i64 %91, i64* %9, align 8
  %92 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i64 @window_copy_find_length(%struct.window_mode_entry* %92, i64 %93)
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %8, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %76
  %98 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %99 = load i64, i64* %8, align 8
  %100 = sub nsw i64 %99, 1
  %101 = load i64, i64* %9, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = call i64 @window_copy_in_set(%struct.window_mode_entry* %98, i64 %100, i64 %101, i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %108

106:                                              ; preds = %97, %76
  br label %107

107:                                              ; preds = %106, %52
  br label %39

108:                                              ; preds = %105, %51
  br label %109

109:                                              ; preds = %108, %31
  br label %110

110:                                              ; preds = %124, %109
  %111 = load i64, i64* %8, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %115 = load i64, i64* %8, align 8
  %116 = sub nsw i64 %115, 1
  %117 = load i64, i64* %9, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = call i64 @window_copy_in_set(%struct.window_mode_entry* %114, i64 %116, i64 %117, i8* %118)
  %120 = icmp ne i64 %119, 0
  %121 = xor i1 %120, true
  br label %122

122:                                              ; preds = %113, %110
  %123 = phi i1 [ false, %110 ], [ %121, %113 ]
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = load i64, i64* %8, align 8
  %126 = add nsw i64 %125, -1
  store i64 %126, i64* %8, align 8
  br label %110

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %75
  %129 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %132 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %129, i64 %130, i64 %133)
  %135 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %136 = call i64 @window_copy_update_selection(%struct.window_mode_entry* %135, i32 1)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %128
  %139 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %140 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %141 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %139, i64 %142, i32 1)
  br label %144

144:                                              ; preds = %138, %128
  ret void
}

declare dso_local i32 @screen_hsize(i32) #1

declare dso_local i64 @window_copy_in_set(%struct.window_mode_entry*, i64, i64, i8*) #1

declare dso_local i32 @window_copy_cursor_up(%struct.window_mode_entry*, i32) #1

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #1

declare dso_local i32 @window_copy_update_cursor(%struct.window_mode_entry*, i64, i64) #1

declare dso_local i64 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_redraw_lines(%struct.window_mode_entry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

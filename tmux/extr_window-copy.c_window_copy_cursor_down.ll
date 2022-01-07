; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_down.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.screen }
%struct.screen = type { i32* }

@LINE_SEL_RIGHT_LEFT = common dso_local global i64 0, align 8
@LINE_SEL_LEFT_RIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i32)* @window_copy_cursor_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_cursor_down(%struct.window_mode_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.window_copy_mode_data*, align 8
  %6 = alloca %struct.screen*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %12 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %11, i32 0, i32 0
  %13 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %12, align 8
  store %struct.window_copy_mode_data* %13, %struct.window_copy_mode_data** %5, align 8
  %14 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %15 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %14, i32 0, i32 9
  store %struct.screen* %15, %struct.screen** %6, align 8
  %16 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %17 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @screen_hsize(i32 %18)
  %20 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %21 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %25 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  store i64 %27, i64* %8, align 8
  %28 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @window_copy_find_length(%struct.window_mode_entry* %28, i64 %29)
  store i64 %30, i64* %7, align 8
  %31 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %32 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %38 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %41 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %44 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %36, %2
  %46 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %47 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @LINE_SEL_RIGHT_LEFT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %54 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %59 = call i32 @window_copy_other_end(%struct.window_mode_entry* %58)
  br label %60

60:                                               ; preds = %57, %51, %45
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %65 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.screen*, %struct.screen** %6, align 8
  %68 = call i32 @screen_size_y(%struct.screen* %67)
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %66, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %63, %60
  %73 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %74 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %77 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %79 = call i32 @window_copy_scroll_up(%struct.window_mode_entry* %78, i32 1)
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %72
  %83 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %84 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %89 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %90 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %91, 1
  %93 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %88, i64 %92, i32 2)
  br label %94

94:                                               ; preds = %87, %82, %72
  br label %116

95:                                               ; preds = %63
  %96 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %97 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %98 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %101 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  %104 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %96, i64 %99, i64 %103)
  %105 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %106 = call i64 @window_copy_update_selection(%struct.window_mode_entry* %105, i32 1)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %95
  %109 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %110 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %111 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %112, 1
  %114 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %109, i64 %113, i32 2)
  br label %115

115:                                              ; preds = %108, %95
  br label %116

116:                                              ; preds = %115, %94
  %117 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %118 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %117, i32 0, i32 9
  %119 = getelementptr inbounds %struct.screen, %struct.screen* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %116
  %123 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %124 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %166, label %127

127:                                              ; preds = %122, %116
  %128 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %129 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @screen_hsize(i32 %130)
  %132 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %133 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %131, %134
  %136 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %137 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %135, %138
  store i64 %139, i64* %10, align 8
  %140 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %141 = load i64, i64* %10, align 8
  %142 = call i64 @window_copy_find_length(%struct.window_mode_entry* %140, i64 %141)
  store i64 %142, i64* %9, align 8
  %143 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %144 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %147 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp sge i64 %145, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %127
  %151 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %152 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %9, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %162, label %156

156:                                              ; preds = %150, %127
  %157 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %158 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %9, align 8
  %161 = icmp sgt i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %156, %150
  %163 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %164 = call i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry* %163)
  br label %165

165:                                              ; preds = %162, %156
  br label %166

166:                                              ; preds = %165, %122
  %167 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %168 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @LINE_SEL_LEFT_RIGHT, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %174 = call i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry* %173)
  br label %185

175:                                              ; preds = %166
  %176 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %177 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @LINE_SEL_RIGHT_LEFT, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %183 = call i32 @window_copy_cursor_start_of_line(%struct.window_mode_entry* %182)
  br label %184

184:                                              ; preds = %181, %175
  br label %185

185:                                              ; preds = %184, %172
  ret void
}

declare dso_local i64 @screen_hsize(i32) #1

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #1

declare dso_local i32 @window_copy_other_end(%struct.window_mode_entry*) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @window_copy_scroll_up(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_redraw_lines(%struct.window_mode_entry*, i64, i32) #1

declare dso_local i32 @window_copy_update_cursor(%struct.window_mode_entry*, i64, i64) #1

declare dso_local i64 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_cursor_start_of_line(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

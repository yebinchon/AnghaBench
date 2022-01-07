; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_pagedown.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_pagedown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i64, i64, %struct.screen*, i32, %struct.screen }
%struct.screen = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_mode_entry*, i32, i32)* @window_copy_pagedown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_pagedown(%struct.window_mode_entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.window_mode_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.window_copy_mode_data*, align 8
  %9 = alloca %struct.screen*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.window_mode_entry*, %struct.window_mode_entry** %5, align 8
  %16 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %15, i32 0, i32 0
  %17 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %16, align 8
  store %struct.window_copy_mode_data* %17, %struct.window_copy_mode_data** %8, align 8
  %18 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %19 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %18, i32 0, i32 7
  store %struct.screen* %19, %struct.screen** %9, align 8
  %20 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %21 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %20, i32 0, i32 5
  %22 = load %struct.screen*, %struct.screen** %21, align 8
  %23 = call i64 @screen_hsize(%struct.screen* %22)
  %24 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %25 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %29 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  store i64 %31, i64* %12, align 8
  %32 = load %struct.window_mode_entry*, %struct.window_mode_entry** %5, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i64 @window_copy_find_length(%struct.window_mode_entry* %32, i64 %33)
  store i64 %34, i64* %11, align 8
  %35 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %36 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %3
  %41 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %42 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %45 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %48 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %40, %3
  %50 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %51 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %54 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  store i64 1, i64* %10, align 8
  %55 = load %struct.screen*, %struct.screen** %9, align 8
  %56 = call i32 @screen_size_y(%struct.screen* %55)
  %57 = icmp sgt i32 %56, 2
  br i1 %57, label %58, label %72

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.screen*, %struct.screen** %9, align 8
  %63 = call i32 @screen_size_y(%struct.screen* %62)
  %64 = sdiv i32 %63, 2
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %10, align 8
  br label %71

66:                                               ; preds = %58
  %67 = load %struct.screen*, %struct.screen** %9, align 8
  %68 = call i32 @screen_size_y(%struct.screen* %67)
  %69 = sub nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %49
  %73 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %74 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %116

78:                                               ; preds = %72
  %79 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %80 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %82 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %86 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = add nsw i64 %83, %88
  %90 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %91 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %90, i32 0, i32 5
  %92 = load %struct.screen*, %struct.screen** %91, align 8
  %93 = call i32 @screen_size_y(%struct.screen* %92)
  %94 = sext i32 %93 to i64
  %95 = icmp sge i64 %89, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %78
  %97 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %98 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %97, i32 0, i32 5
  %99 = load %struct.screen*, %struct.screen** %98, align 8
  %100 = call i32 @screen_size_y(%struct.screen* %99)
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %104 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %115

105:                                              ; preds = %78
  %106 = load i64, i64* %10, align 8
  %107 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %108 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  %111 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %112 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %105, %96
  br label %122

116:                                              ; preds = %72
  %117 = load i64, i64* %10, align 8
  %118 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %119 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %116, %115
  %123 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %124 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.screen, %struct.screen* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %122
  %129 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %130 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %172, label %133

133:                                              ; preds = %128, %122
  %134 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %135 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %134, i32 0, i32 5
  %136 = load %struct.screen*, %struct.screen** %135, align 8
  %137 = call i64 @screen_hsize(%struct.screen* %136)
  %138 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %139 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %143 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %141, %144
  store i64 %145, i64* %14, align 8
  %146 = load %struct.window_mode_entry*, %struct.window_mode_entry** %5, align 8
  %147 = load i64, i64* %14, align 8
  %148 = call i64 @window_copy_find_length(%struct.window_mode_entry* %146, i64 %147)
  store i64 %148, i64* %13, align 8
  %149 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %150 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %153 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = icmp sge i64 %151, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %133
  %157 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %158 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %13, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %168, label %162

162:                                              ; preds = %156, %133
  %163 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %164 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %13, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %162, %156
  %169 = load %struct.window_mode_entry*, %struct.window_mode_entry** %5, align 8
  %170 = call i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry* %169)
  br label %171

171:                                              ; preds = %168, %162
  br label %172

172:                                              ; preds = %171, %128
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %177 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  store i32 1, i32* %4, align 4
  br label %186

181:                                              ; preds = %175, %172
  %182 = load %struct.window_mode_entry*, %struct.window_mode_entry** %5, align 8
  %183 = call i32 @window_copy_update_selection(%struct.window_mode_entry* %182, i32 1)
  %184 = load %struct.window_mode_entry*, %struct.window_mode_entry** %5, align 8
  %185 = call i32 @window_copy_redraw_screen(%struct.window_mode_entry* %184)
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %181, %180
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i64 @screen_hsize(%struct.screen*) #1

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_redraw_screen(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

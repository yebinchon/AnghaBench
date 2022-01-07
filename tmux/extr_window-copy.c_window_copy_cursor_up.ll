; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_up.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.screen }
%struct.screen = type { i32* }

@LINE_SEL_LEFT_RIGHT = common dso_local global i64 0, align 8
@LINE_SEL_RIGHT_LEFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i32)* @window_copy_cursor_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_cursor_up(%struct.window_mode_entry* %0, i32 %1) #0 {
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
  %49 = load i64, i64* @LINE_SEL_LEFT_RIGHT, align 8
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
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %65 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %103

68:                                               ; preds = %63, %60
  %69 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %70 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %73 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %75 = call i32 @window_copy_scroll_down(%struct.window_mode_entry* %74, i32 1)
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %68
  %79 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %80 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.screen*, %struct.screen** %6, align 8
  %83 = call i32 @screen_size_y(%struct.screen* %82)
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = icmp eq i64 %81, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %78
  %88 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %89 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %90 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %88, i32 %92, i32 1)
  br label %101

94:                                               ; preds = %78
  %95 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %96 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %97 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %95, i32 %99, i32 2)
  br label %101

101:                                              ; preds = %94, %87
  br label %102

102:                                              ; preds = %101, %68
  br label %142

103:                                              ; preds = %63
  %104 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %105 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %106 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %109 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, 1
  %112 = trunc i64 %111 to i32
  %113 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %104, i64 %107, i32 %112)
  %114 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %115 = call i64 @window_copy_update_selection(%struct.window_mode_entry* %114, i32 1)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %103
  %118 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %119 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.screen*, %struct.screen** %6, align 8
  %122 = call i32 @screen_size_y(%struct.screen* %121)
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = icmp eq i64 %120, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %117
  %127 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %128 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %129 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %127, i32 %131, i32 1)
  br label %140

133:                                              ; preds = %117
  %134 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %135 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %136 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %134, i32 %138, i32 2)
  br label %140

140:                                              ; preds = %133, %126
  br label %141

141:                                              ; preds = %140, %103
  br label %142

142:                                              ; preds = %141, %102
  %143 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %144 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %143, i32 0, i32 9
  %145 = getelementptr inbounds %struct.screen, %struct.screen* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %142
  %149 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %150 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %192, label %153

153:                                              ; preds = %148, %142
  %154 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %155 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @screen_hsize(i32 %156)
  %158 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %159 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %157, %160
  %162 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %163 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %161, %164
  store i64 %165, i64* %10, align 8
  %166 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %167 = load i64, i64* %10, align 8
  %168 = call i64 @window_copy_find_length(%struct.window_mode_entry* %166, i64 %167)
  store i64 %168, i64* %9, align 8
  %169 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %170 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %173 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = icmp sge i64 %171, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %153
  %177 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %178 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %9, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %188, label %182

182:                                              ; preds = %176, %153
  %183 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %184 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %9, align 8
  %187 = icmp sgt i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %182, %176
  %189 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %190 = call i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry* %189)
  br label %191

191:                                              ; preds = %188, %182
  br label %192

192:                                              ; preds = %191, %148
  %193 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %194 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @LINE_SEL_LEFT_RIGHT, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %200 = call i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry* %199)
  br label %211

201:                                              ; preds = %192
  %202 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %203 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @LINE_SEL_RIGHT_LEFT, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %209 = call i32 @window_copy_cursor_start_of_line(%struct.window_mode_entry* %208)
  br label %210

210:                                              ; preds = %207, %201
  br label %211

211:                                              ; preds = %210, %198
  ret void
}

declare dso_local i64 @screen_hsize(i32) #1

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #1

declare dso_local i32 @window_copy_other_end(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_scroll_down(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @window_copy_redraw_lines(%struct.window_mode_entry*, i32, i32) #1

declare dso_local i32 @window_copy_update_cursor(%struct.window_mode_entry*, i64, i32) #1

declare dso_local i64 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_cursor_start_of_line(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

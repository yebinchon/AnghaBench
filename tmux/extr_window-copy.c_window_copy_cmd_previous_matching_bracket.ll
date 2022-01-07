; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_previous_matching_bracket.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_previous_matching_bracket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.window_mode_entry* }
%struct.window_mode_entry = type { i64, %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i64, %struct.screen* }
%struct.screen = type { i32 }
%struct.grid_cell = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@__const.window_copy_cmd_previous_matching_bracket.open = private unnamed_addr constant [4 x i8] c"{[(\00", align 1
@__const.window_copy_cmd_previous_matching_bracket.close = private unnamed_addr constant [4 x i8] c"}])\00", align 1
@GRID_FLAG_PADDING = common dso_local global i32 0, align 4
@MODEKEY_EMACS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"}]) \00", align 1
@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_previous_matching_bracket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_previous_matching_bracket(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca %struct.window_copy_cmd_state*, align 8
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.window_copy_mode_data*, align 8
  %6 = alloca %struct.screen*, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca [4 x i8], align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.grid_cell, align 8
  %18 = alloca i32, align 4
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %2, align 8
  %19 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %20 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %19, i32 0, i32 0
  %21 = load %struct.window_mode_entry*, %struct.window_mode_entry** %20, align 8
  store %struct.window_mode_entry* %21, %struct.window_mode_entry** %3, align 8
  %22 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %23 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  %25 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %26 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %25, i32 0, i32 1
  %27 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %26, align 8
  store %struct.window_copy_mode_data* %27, %struct.window_copy_mode_data** %5, align 8
  %28 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %29 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %28, i32 0, i32 4
  %30 = load %struct.screen*, %struct.screen** %29, align 8
  store %struct.screen* %30, %struct.screen** %6, align 8
  %31 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.window_copy_cmd_previous_matching_bracket.open, i32 0, i32 0), i64 4, i1 false)
  %32 = bitcast [4 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.window_copy_cmd_previous_matching_bracket.close, i32 0, i32 0), i64 4, i1 false)
  br label %33

33:                                               ; preds = %205, %1
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %208

36:                                               ; preds = %33
  %37 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %38 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %13, align 8
  %40 = load %struct.screen*, %struct.screen** %6, align 8
  %41 = call i64 @screen_hsize(%struct.screen* %40)
  %42 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %43 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %47 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  store i64 %49, i64* %14, align 8
  %50 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i64 @window_copy_find_length(%struct.window_mode_entry* %50, i64 %51)
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %36
  br label %208

56:                                               ; preds = %36
  store i8 0, i8* %9, align 1
  br label %57

57:                                               ; preds = %98, %56
  %58 = load %struct.screen*, %struct.screen** %6, align 8
  %59 = getelementptr inbounds %struct.screen, %struct.screen* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = call i32 @grid_get_cell(i32 %60, i64 %61, i64 %62, %struct.grid_cell* %17)
  %64 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %17, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %74, label %68

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %17, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68, %57
  store i8* null, i8** %12, align 8
  br label %83

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %17, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %10, align 1
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %81 = load i8, i8* %10, align 1
  %82 = call i8* @strchr(i8* %80, i8 signext %81)
  store i8* %82, i8** %12, align 8
  br label %83

83:                                               ; preds = %75, %74
  %84 = load i8*, i8** %12, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %88 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MODEKEY_EMACS, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load i8, i8* %9, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %13, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i64, i64* %13, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %13, align 8
  store i8 1, i8* %9, align 1
  br label %57

101:                                              ; preds = %95, %92
  %102 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %103 = call i32 @window_copy_cursor_previous_word(%struct.window_mode_entry* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %104

104:                                              ; preds = %101, %86
  br label %205

105:                                              ; preds = %83
  %106 = load i8*, i8** %12, align 8
  %107 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  store i8 %112, i8* %11, align 1
  store i64 1, i64* %16, align 8
  store i32 0, i32* %18, align 4
  br label %113

113:                                              ; preds = %193, %105
  %114 = load i64, i64* %13, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %145

116:                                              ; preds = %113
  %117 = load i64, i64* %14, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 1, i32* %18, align 4
  br label %196

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %133, %120
  %122 = load i64, i64* %14, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* %14, align 8
  %124 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %125 = load i64, i64* %14, align 8
  %126 = call i64 @window_copy_find_length(%struct.window_mode_entry* %124, i64 %125)
  store i64 %126, i64* %15, align 8
  br label %127

127:                                              ; preds = %121
  %128 = load i64, i64* %15, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i64, i64* %14, align 8
  %132 = icmp sgt i64 %131, 0
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi i1 [ false, %127 ], [ %132, %130 ]
  br i1 %134, label %121, label %135

135:                                              ; preds = %133
  %136 = load i64, i64* %15, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i64, i64* %14, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 1, i32* %18, align 4
  br label %196

142:                                              ; preds = %138, %135
  %143 = load i64, i64* %15, align 8
  %144 = sub nsw i64 %143, 1
  store i64 %144, i64* %13, align 8
  br label %148

145:                                              ; preds = %113
  %146 = load i64, i64* %13, align 8
  %147 = add nsw i64 %146, -1
  store i64 %147, i64* %13, align 8
  br label %148

148:                                              ; preds = %145, %142
  %149 = load %struct.screen*, %struct.screen** %6, align 8
  %150 = getelementptr inbounds %struct.screen, %struct.screen* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i64, i64* %13, align 8
  %153 = load i64, i64* %14, align 8
  %154 = call i32 @grid_get_cell(i32 %151, i64 %152, i64 %153, %struct.grid_cell* %17)
  %155 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %17, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %192

159:                                              ; preds = %148
  %160 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %17, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = xor i32 %161, -1
  %163 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %192

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %17, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = load i8, i8* %10, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %166
  %176 = load i64, i64* %16, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %16, align 8
  br label %191

178:                                              ; preds = %166
  %179 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %17, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = load i8, i8* %11, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %183, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %178
  %188 = load i64, i64* %16, align 8
  %189 = add nsw i64 %188, -1
  store i64 %189, i64* %16, align 8
  br label %190

190:                                              ; preds = %187, %178
  br label %191

191:                                              ; preds = %190, %175
  br label %192

192:                                              ; preds = %191, %159, %148
  br label %193

193:                                              ; preds = %192
  %194 = load i64, i64* %16, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %113, label %196

196:                                              ; preds = %193, %141, %119
  %197 = load i32, i32* %18, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %196
  %200 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %201 = load i64, i64* %13, align 8
  %202 = load i64, i64* %14, align 8
  %203 = call i32 @window_copy_scroll_to(%struct.window_mode_entry* %200, i64 %201, i64 %202)
  br label %204

204:                                              ; preds = %199, %196
  br label %205

205:                                              ; preds = %204, %104
  %206 = load i64, i64* %4, align 8
  %207 = add nsw i64 %206, -1
  store i64 %207, i64* %4, align 8
  br label %33

208:                                              ; preds = %55, %33
  %209 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  ret i32 %209
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @screen_hsize(%struct.screen*) #2

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #2

declare dso_local i32 @grid_get_cell(i32, i64, i64, %struct.grid_cell*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @window_copy_cursor_previous_word(%struct.window_mode_entry*, i8*, i32) #2

declare dso_local i32 @window_copy_scroll_to(%struct.window_mode_entry*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

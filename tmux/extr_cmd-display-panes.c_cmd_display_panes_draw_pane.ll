; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-display-panes.c_cmd_display_panes_draw_pane.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-display-panes.c_cmd_display_panes_draw_pane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_redraw_ctx = type { i64, i64, i64, i64, i32, i64, %struct.client* }
%struct.client = type { %struct.session*, %struct.tty }
%struct.session = type { %struct.options* }
%struct.options = type { i32 }
%struct.tty = type { i32 }
%struct.window_pane = type { i64, i64, i64, i64, %struct.window* }
%struct.window = type { %struct.window_pane* }
%struct.grid_cell = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"index not found\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"display-panes-colour\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"display-panes-active-colour\00", align 1
@grid_default_cell = common dso_local global i32 0, align 4
@GRID_FLAG_NOPALETTE = common dso_local global i32 0, align 4
@window_clock_table = common dso_local global i64*** null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"%ux%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen_redraw_ctx*, %struct.window_pane*)* @cmd_display_panes_draw_pane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_display_panes_draw_pane(%struct.screen_redraw_ctx* %0, %struct.window_pane* %1) #0 {
  %3 = alloca %struct.screen_redraw_ctx*, align 8
  %4 = alloca %struct.window_pane*, align 8
  %5 = alloca %struct.client*, align 8
  %6 = alloca %struct.tty*, align 8
  %7 = alloca %struct.session*, align 8
  %8 = alloca %struct.options*, align 8
  %9 = alloca %struct.window*, align 8
  %10 = alloca %struct.grid_cell, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [16 x i8], align 16
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store %struct.screen_redraw_ctx* %0, %struct.screen_redraw_ctx** %3, align 8
  store %struct.window_pane* %1, %struct.window_pane** %4, align 8
  %25 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %25, i32 0, i32 6
  %27 = load %struct.client*, %struct.client** %26, align 8
  store %struct.client* %27, %struct.client** %5, align 8
  %28 = load %struct.client*, %struct.client** %5, align 8
  %29 = getelementptr inbounds %struct.client, %struct.client* %28, i32 0, i32 1
  store %struct.tty* %29, %struct.tty** %6, align 8
  %30 = load %struct.client*, %struct.client** %5, align 8
  %31 = getelementptr inbounds %struct.client, %struct.client* %30, i32 0, i32 0
  %32 = load %struct.session*, %struct.session** %31, align 8
  store %struct.session* %32, %struct.session** %7, align 8
  %33 = load %struct.session*, %struct.session** %7, align 8
  %34 = getelementptr inbounds %struct.session, %struct.session* %33, i32 0, i32 0
  %35 = load %struct.options*, %struct.options** %34, align 8
  store %struct.options* %35, %struct.options** %8, align 8
  %36 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %37 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %36, i32 0, i32 4
  %38 = load %struct.window*, %struct.window** %37, align 8
  store %struct.window* %38, %struct.window** %9, align 8
  %39 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %40 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %43 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %45, %48
  br i1 %49, label %86, label %50

50:                                               ; preds = %2
  %51 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %52 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = icmp sge i64 %53, %60
  br i1 %61, label %86, label %62

62:                                               ; preds = %50
  %63 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %64 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %67 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp sle i64 %69, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %62
  %75 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %76 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %79 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %82 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = icmp sge i64 %77, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %74, %62, %50, %2
  br label %514

87:                                               ; preds = %74
  %88 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %89 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %90, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %87
  %96 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %97 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %100 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %107 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = icmp sle i64 %102, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %95
  %112 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %113 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %116 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %114, %117
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %16, align 4
  %120 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %121 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %18, align 4
  br label %192

124:                                              ; preds = %95, %87
  %125 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %126 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %129 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %127, %130
  br i1 %131, label %132, label %153

132:                                              ; preds = %124
  %133 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %134 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %137 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %141 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %144 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %142, %145
  %147 = icmp sgt i64 %139, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %132
  store i32 0, i32* %16, align 4
  %149 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %150 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %18, align 4
  br label %191

153:                                              ; preds = %132, %124
  %154 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %155 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %158 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp slt i64 %156, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %153
  store i32 0, i32* %16, align 4
  %162 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %163 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %166 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %169 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = sub nsw i64 %167, %170
  %172 = sub nsw i64 %164, %171
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %18, align 4
  br label %190

174:                                              ; preds = %153
  %175 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %176 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %179 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %177, %180
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %16, align 4
  %183 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %184 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = sub nsw i64 %185, %187
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %18, align 4
  br label %190

190:                                              ; preds = %174, %161
  br label %191

191:                                              ; preds = %190, %148
  br label %192

192:                                              ; preds = %191, %111
  %193 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %194 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %197 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = icmp sge i64 %195, %198
  br i1 %199, label %200, label %229

200:                                              ; preds = %192
  %201 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %202 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %205 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %203, %206
  %208 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %209 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %212 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %210, %213
  %215 = icmp sle i64 %207, %214
  br i1 %215, label %216, label %229

216:                                              ; preds = %200
  %217 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %218 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %221 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = sub nsw i64 %219, %222
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %17, align 4
  %225 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %226 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %19, align 4
  br label %297

229:                                              ; preds = %200, %192
  %230 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %231 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %234 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = icmp slt i64 %232, %235
  br i1 %236, label %237, label %258

237:                                              ; preds = %229
  %238 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %239 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %242 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %240, %243
  %245 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %246 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %249 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %247, %250
  %252 = icmp sgt i64 %244, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %237
  store i32 0, i32* %17, align 4
  %254 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %255 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %19, align 4
  br label %296

258:                                              ; preds = %237, %229
  %259 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %260 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %263 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = icmp slt i64 %261, %264
  br i1 %265, label %266, label %279

266:                                              ; preds = %258
  store i32 0, i32* %17, align 4
  %267 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %268 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %271 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %274 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = sub nsw i64 %272, %275
  %277 = sub nsw i64 %269, %276
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %19, align 4
  br label %295

279:                                              ; preds = %258
  %280 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %281 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %284 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = sub nsw i64 %282, %285
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %17, align 4
  %288 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %289 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* %17, align 4
  %292 = sext i32 %291 to i64
  %293 = sub nsw i64 %290, %292
  %294 = trunc i64 %293 to i32
  store i32 %294, i32* %19, align 4
  br label %295

295:                                              ; preds = %279, %266
  br label %296

296:                                              ; preds = %295, %253
  br label %297

297:                                              ; preds = %296, %216
  %298 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %299 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %298, i32 0, i32 5
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %297
  %303 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %3, align 8
  %304 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* %17, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %17, align 4
  br label %308

308:                                              ; preds = %302, %297
  %309 = load i32, i32* %18, align 4
  %310 = sdiv i32 %309, 2
  store i32 %310, i32* %12, align 4
  %311 = load i32, i32* %19, align 4
  %312 = sdiv i32 %311, 2
  store i32 %312, i32* %13, align 4
  %313 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %314 = call i64 @window_pane_index(%struct.window_pane* %313, i32* %11)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %308
  %317 = call i32 @fatalx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %318

318:                                              ; preds = %316, %308
  %319 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %320 = load i32, i32* %11, align 4
  %321 = call i64 (i8*, i32, i8*, i32, ...) @xsnprintf(i8* %319, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %320)
  store i64 %321, i64* %24, align 8
  %322 = load i32, i32* %18, align 4
  %323 = sext i32 %322 to i64
  %324 = load i64, i64* %24, align 8
  %325 = icmp ult i64 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  br label %514

327:                                              ; preds = %318
  %328 = load %struct.options*, %struct.options** %8, align 8
  %329 = call i32 @options_get_number(%struct.options* %328, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %329, i32* %20, align 4
  %330 = load %struct.options*, %struct.options** %8, align 8
  %331 = call i32 @options_get_number(%struct.options* %330, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 %331, i32* %21, align 4
  %332 = load i32, i32* %18, align 4
  %333 = sext i32 %332 to i64
  %334 = load i64, i64* %24, align 8
  %335 = mul i64 %334, 6
  %336 = icmp ult i64 %333, %335
  br i1 %336, label %340, label %337

337:                                              ; preds = %327
  %338 = load i32, i32* %19, align 4
  %339 = icmp slt i32 %338, 5
  br i1 %339, label %340, label %354

340:                                              ; preds = %337, %327
  %341 = load %struct.tty*, %struct.tty** %6, align 8
  %342 = load i32, i32* %16, align 4
  %343 = load i32, i32* %12, align 4
  %344 = add nsw i32 %342, %343
  %345 = sext i32 %344 to i64
  %346 = load i64, i64* %24, align 8
  %347 = udiv i64 %346, 2
  %348 = sub i64 %345, %347
  %349 = trunc i64 %348 to i32
  %350 = load i32, i32* %17, align 4
  %351 = load i32, i32* %13, align 4
  %352 = add nsw i32 %350, %351
  %353 = call i32 @tty_cursor(%struct.tty* %341, i32 %349, i32 %352)
  br label %488

354:                                              ; preds = %337
  %355 = load i64, i64* %24, align 8
  %356 = mul i64 %355, 3
  %357 = load i32, i32* %12, align 4
  %358 = sext i32 %357 to i64
  %359 = sub i64 %358, %356
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %12, align 4
  %361 = load i32, i32* %13, align 4
  %362 = sub nsw i32 %361, 2
  store i32 %362, i32* %13, align 4
  %363 = call i32 @memcpy(%struct.grid_cell* %10, i32* @grid_default_cell, i32 12)
  %364 = load %struct.window*, %struct.window** %9, align 8
  %365 = getelementptr inbounds %struct.window, %struct.window* %364, i32 0, i32 0
  %366 = load %struct.window_pane*, %struct.window_pane** %365, align 8
  %367 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %368 = icmp eq %struct.window_pane* %366, %367
  br i1 %368, label %369, label %372

369:                                              ; preds = %354
  %370 = load i32, i32* %21, align 4
  %371 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %10, i32 0, i32 0
  store i32 %370, i32* %371, align 4
  br label %375

372:                                              ; preds = %354
  %373 = load i32, i32* %20, align 4
  %374 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %10, i32 0, i32 0
  store i32 %373, i32* %374, align 4
  br label %375

375:                                              ; preds = %372, %369
  %376 = load i32, i32* @GRID_FLAG_NOPALETTE, align 4
  %377 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %10, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = or i32 %378, %376
  store i32 %379, i32* %377, align 4
  %380 = load %struct.tty*, %struct.tty** %6, align 8
  %381 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %382 = call i32 @tty_attributes(%struct.tty* %380, %struct.grid_cell* %10, %struct.window_pane* %381)
  %383 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  store i8* %383, i8** %23, align 8
  br label %384

384:                                              ; preds = %456, %375
  %385 = load i8*, i8** %23, align 8
  %386 = load i8, i8* %385, align 1
  %387 = sext i8 %386 to i32
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %459

389:                                              ; preds = %384
  %390 = load i8*, i8** %23, align 8
  %391 = load i8, i8* %390, align 1
  %392 = sext i8 %391 to i32
  %393 = icmp slt i32 %392, 48
  br i1 %393, label %399, label %394

394:                                              ; preds = %389
  %395 = load i8*, i8** %23, align 8
  %396 = load i8, i8* %395, align 1
  %397 = sext i8 %396 to i32
  %398 = icmp sgt i32 %397, 57
  br i1 %398, label %399, label %400

399:                                              ; preds = %394, %389
  br label %456

400:                                              ; preds = %394
  %401 = load i8*, i8** %23, align 8
  %402 = load i8, i8* %401, align 1
  %403 = sext i8 %402 to i32
  %404 = sub nsw i32 %403, 48
  store i32 %404, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %405

405:                                              ; preds = %450, %400
  %406 = load i32, i32* %15, align 4
  %407 = icmp slt i32 %406, 5
  br i1 %407, label %408, label %453

408:                                              ; preds = %405
  %409 = load i32, i32* %12, align 4
  store i32 %409, i32* %14, align 4
  br label %410

410:                                              ; preds = %446, %408
  %411 = load i32, i32* %14, align 4
  %412 = load i32, i32* %12, align 4
  %413 = add nsw i32 %412, 5
  %414 = icmp slt i32 %411, %413
  br i1 %414, label %415, label %449

415:                                              ; preds = %410
  %416 = load %struct.tty*, %struct.tty** %6, align 8
  %417 = load i32, i32* %16, align 4
  %418 = load i32, i32* %14, align 4
  %419 = add nsw i32 %417, %418
  %420 = load i32, i32* %17, align 4
  %421 = load i32, i32* %13, align 4
  %422 = add nsw i32 %420, %421
  %423 = load i32, i32* %15, align 4
  %424 = add nsw i32 %422, %423
  %425 = call i32 @tty_cursor(%struct.tty* %416, i32 %419, i32 %424)
  %426 = load i64***, i64**** @window_clock_table, align 8
  %427 = load i32, i32* %11, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i64**, i64*** %426, i64 %428
  %430 = load i64**, i64*** %429, align 8
  %431 = load i32, i32* %15, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i64*, i64** %430, i64 %432
  %434 = load i64*, i64** %433, align 8
  %435 = load i32, i32* %14, align 4
  %436 = load i32, i32* %12, align 4
  %437 = sub nsw i32 %435, %436
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i64, i64* %434, i64 %438
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %415
  %443 = load %struct.tty*, %struct.tty** %6, align 8
  %444 = call i32 @tty_putc(%struct.tty* %443, i8 signext 32)
  br label %445

445:                                              ; preds = %442, %415
  br label %446

446:                                              ; preds = %445
  %447 = load i32, i32* %14, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %14, align 4
  br label %410

449:                                              ; preds = %410
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %15, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %15, align 4
  br label %405

453:                                              ; preds = %405
  %454 = load i32, i32* %12, align 4
  %455 = add nsw i32 %454, 6
  store i32 %455, i32* %12, align 4
  br label %456

456:                                              ; preds = %453, %399
  %457 = load i8*, i8** %23, align 8
  %458 = getelementptr inbounds i8, i8* %457, i32 1
  store i8* %458, i8** %23, align 8
  br label %384

459:                                              ; preds = %384
  %460 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %461 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %462 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %461, i32 0, i32 1
  %463 = load i64, i64* %462, align 8
  %464 = trunc i64 %463 to i32
  %465 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %466 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %465, i32 0, i32 3
  %467 = load i64, i64* %466, align 8
  %468 = call i64 (i8*, i32, i8*, i32, ...) @xsnprintf(i8* %460, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %464, i64 %467)
  store i64 %468, i64* %24, align 8
  %469 = load i32, i32* %18, align 4
  %470 = sext i32 %469 to i64
  %471 = load i64, i64* %24, align 8
  %472 = icmp ult i64 %470, %471
  br i1 %472, label %476, label %473

473:                                              ; preds = %459
  %474 = load i32, i32* %19, align 4
  %475 = icmp slt i32 %474, 6
  br i1 %475, label %476, label %477

476:                                              ; preds = %473, %459
  br label %514

477:                                              ; preds = %473
  %478 = load %struct.tty*, %struct.tty** %6, align 8
  %479 = load i32, i32* %16, align 4
  %480 = load i32, i32* %18, align 4
  %481 = add nsw i32 %479, %480
  %482 = sext i32 %481 to i64
  %483 = load i64, i64* %24, align 8
  %484 = sub i64 %482, %483
  %485 = trunc i64 %484 to i32
  %486 = load i32, i32* %17, align 4
  %487 = call i32 @tty_cursor(%struct.tty* %478, i32 %485, i32 %486)
  br label %488

488:                                              ; preds = %477, %340
  %489 = call i32 @memcpy(%struct.grid_cell* %10, i32* @grid_default_cell, i32 12)
  %490 = load %struct.window*, %struct.window** %9, align 8
  %491 = getelementptr inbounds %struct.window, %struct.window* %490, i32 0, i32 0
  %492 = load %struct.window_pane*, %struct.window_pane** %491, align 8
  %493 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %494 = icmp eq %struct.window_pane* %492, %493
  br i1 %494, label %495, label %498

495:                                              ; preds = %488
  %496 = load i32, i32* %21, align 4
  %497 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %10, i32 0, i32 1
  store i32 %496, i32* %497, align 4
  br label %501

498:                                              ; preds = %488
  %499 = load i32, i32* %20, align 4
  %500 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %10, i32 0, i32 1
  store i32 %499, i32* %500, align 4
  br label %501

501:                                              ; preds = %498, %495
  %502 = load i32, i32* @GRID_FLAG_NOPALETTE, align 4
  %503 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %10, i32 0, i32 2
  %504 = load i32, i32* %503, align 4
  %505 = or i32 %504, %502
  store i32 %505, i32* %503, align 4
  %506 = load %struct.tty*, %struct.tty** %6, align 8
  %507 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %508 = call i32 @tty_attributes(%struct.tty* %506, %struct.grid_cell* %10, %struct.window_pane* %507)
  %509 = load %struct.tty*, %struct.tty** %6, align 8
  %510 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %511 = call i32 @tty_puts(%struct.tty* %509, i8* %510)
  %512 = load %struct.tty*, %struct.tty** %6, align 8
  %513 = call i32 @tty_cursor(%struct.tty* %512, i32 0, i32 0)
  br label %514

514:                                              ; preds = %501, %476, %326, %86
  ret void
}

declare dso_local i64 @window_pane_index(%struct.window_pane*, i32*) #1

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i64 @xsnprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @options_get_number(%struct.options*, i8*) #1

declare dso_local i32 @tty_cursor(%struct.tty*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @tty_attributes(%struct.tty*, %struct.grid_cell*, %struct.window_pane*) #1

declare dso_local i32 @tty_putc(%struct.tty*, i8 signext) #1

declare dso_local i32 @tty_puts(%struct.tty*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

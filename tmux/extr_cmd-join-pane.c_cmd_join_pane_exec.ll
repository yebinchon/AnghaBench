; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-join-pane.c_cmd_join_pane_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-join-pane.c_cmd_join_pane_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32*, %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.window_pane*, %struct.winlink* }
%struct.window_pane = type { i32, i32, i32, i32, %struct.window* }
%struct.window = type { i32, i32 }
%struct.winlink = type { i32, %struct.window* }
%struct.TYPE_5__ = type { %struct.window_pane*, %struct.winlink*, %struct.session* }
%struct.session = type { i32 }
%struct.TYPE_4__ = type { %struct.cmd_find_state }
%struct.cmd_find_state = type { i32 }
%struct.layout_cell = type { i32 }

@cmd_join_pane_entry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"can't join a pane to its own window\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"source and target panes must be different\00", align 1
@LAYOUT_TOPBOTTOM = common dso_local global i32 0, align 4
@LAYOUT_LEFTRIGHT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"percentage %s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"size %s\00", align 1
@SPAWN_BEFORE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"create pane failed: pane too small\00", align 1
@entry = common dso_local global i32 0, align 4
@PANE_STYLECHANGED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"window-layout-changed\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_join_pane_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_join_pane_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.cmd_find_state*, align 8
  %8 = alloca %struct.session*, align 8
  %9 = alloca %struct.winlink*, align 8
  %10 = alloca %struct.winlink*, align 8
  %11 = alloca %struct.window*, align 8
  %12 = alloca %struct.window*, align 8
  %13 = alloca %struct.window_pane*, align 8
  %14 = alloca %struct.window_pane*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.layout_cell*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %27 = load %struct.cmd*, %struct.cmd** %4, align 8
  %28 = getelementptr inbounds %struct.cmd, %struct.cmd* %27, i32 0, i32 1
  %29 = load %struct.args*, %struct.args** %28, align 8
  store %struct.args* %29, %struct.args** %6, align 8
  %30 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %31 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.cmd_find_state* %33, %struct.cmd_find_state** %7, align 8
  %34 = load %struct.cmd*, %struct.cmd** %4, align 8
  %35 = getelementptr inbounds %struct.cmd, %struct.cmd* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, @cmd_join_pane_entry
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i32 1, i32* %23, align 4
  br label %40

39:                                               ; preds = %2
  store i32 0, i32* %23, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %42 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load %struct.session*, %struct.session** %43, align 8
  store %struct.session* %44, %struct.session** %8, align 8
  %45 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %46 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.winlink*, %struct.winlink** %47, align 8
  store %struct.winlink* %48, %struct.winlink** %10, align 8
  %49 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %50 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.window_pane*, %struct.window_pane** %51, align 8
  store %struct.window_pane* %52, %struct.window_pane** %14, align 8
  %53 = load %struct.winlink*, %struct.winlink** %10, align 8
  %54 = getelementptr inbounds %struct.winlink, %struct.winlink* %53, i32 0, i32 1
  %55 = load %struct.window*, %struct.window** %54, align 8
  store %struct.window* %55, %struct.window** %12, align 8
  %56 = load %struct.winlink*, %struct.winlink** %10, align 8
  %57 = getelementptr inbounds %struct.winlink, %struct.winlink* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %22, align 4
  %59 = load %struct.window*, %struct.window** %12, align 8
  %60 = call i32 @server_unzoom_window(%struct.window* %59)
  %61 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %62 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.winlink*, %struct.winlink** %63, align 8
  store %struct.winlink* %64, %struct.winlink** %9, align 8
  %65 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %66 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.window_pane*, %struct.window_pane** %67, align 8
  store %struct.window_pane* %68, %struct.window_pane** %13, align 8
  %69 = load %struct.winlink*, %struct.winlink** %9, align 8
  %70 = getelementptr inbounds %struct.winlink, %struct.winlink* %69, i32 0, i32 1
  %71 = load %struct.window*, %struct.window** %70, align 8
  store %struct.window* %71, %struct.window** %11, align 8
  %72 = load %struct.window*, %struct.window** %11, align 8
  %73 = call i32 @server_unzoom_window(%struct.window* %72)
  %74 = load i32, i32* %23, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %40
  %77 = load %struct.window*, %struct.window** %11, align 8
  %78 = load %struct.window*, %struct.window** %12, align 8
  %79 = icmp eq %struct.window* %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %82 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %83, i32* %3, align 4
  br label %296

84:                                               ; preds = %76, %40
  %85 = load i32, i32* %23, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %89 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %90 = icmp eq %struct.window_pane* %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %93 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %92, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %94, i32* %3, align 4
  br label %296

95:                                               ; preds = %87, %84
  %96 = load i32, i32* @LAYOUT_TOPBOTTOM, align 4
  store i32 %96, i32* %25, align 4
  %97 = load %struct.args*, %struct.args** %6, align 8
  %98 = call i64 @args_has(%struct.args* %97, i8 signext 104)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @LAYOUT_LEFTRIGHT, align 4
  store i32 %101, i32* %25, align 4
  br label %102

102:                                              ; preds = %100, %95
  store i32 -1, i32* %20, align 4
  %103 = load %struct.args*, %struct.args** %6, align 8
  %104 = call i8* @args_get(%struct.args* %103, i8 signext 108)
  store i8* %104, i8** %18, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %169

106:                                              ; preds = %102
  %107 = load i8*, i8** %18, align 8
  %108 = call i64 @strlen(i8* %107)
  store i64 %108, i64* %19, align 8
  %109 = load i8*, i8** %18, align 8
  %110 = load i64, i64* %19, align 8
  %111 = sub i64 %110, 1
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 37
  br i1 %115, label %116, label %154

116:                                              ; preds = %106
  %117 = load i8*, i8** %18, align 8
  %118 = call i8* @xstrdup(i8* %117)
  store i8* %118, i8** %16, align 8
  %119 = load i8*, i8** %16, align 8
  %120 = load i64, i64* %19, align 8
  %121 = sub i64 %120, 1
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 0, i8* %122, align 1
  %123 = load i8*, i8** %16, align 8
  %124 = load i32, i32* @INT_MAX, align 4
  %125 = call i32 @strtonum(i8* %123, i32 0, i32 %124, i8** %17)
  store i32 %125, i32* %21, align 4
  %126 = load i8*, i8** %16, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load i8*, i8** %17, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %116
  %131 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %132 = load i8*, i8** %17, align 8
  %133 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %132)
  %134 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %134, i32* %3, align 4
  br label %296

135:                                              ; preds = %116
  %136 = load i32, i32* %25, align 4
  %137 = load i32, i32* @LAYOUT_TOPBOTTOM, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %141 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %21, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sdiv i32 %144, 100
  store i32 %145, i32* %20, align 4
  br label %153

146:                                              ; preds = %135
  %147 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %148 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %21, align 4
  %151 = mul nsw i32 %149, %150
  %152 = sdiv i32 %151, 100
  store i32 %152, i32* %20, align 4
  br label %153

153:                                              ; preds = %146, %139
  br label %168

154:                                              ; preds = %106
  %155 = load %struct.args*, %struct.args** %6, align 8
  %156 = load i32, i32* @INT_MAX, align 4
  %157 = call i32 @args_strtonum(%struct.args* %155, i8 signext 108, i32 0, i32 %156, i8** %15)
  store i32 %157, i32* %20, align 4
  %158 = load i8*, i8** %15, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %154
  %161 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %162 = load i8*, i8** %15, align 8
  %163 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %161, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %162)
  %164 = load i8*, i8** %15, align 8
  %165 = call i32 @free(i8* %164)
  %166 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %166, i32* %3, align 4
  br label %296

167:                                              ; preds = %154
  br label %168

168:                                              ; preds = %167, %153
  br label %205

169:                                              ; preds = %102
  %170 = load %struct.args*, %struct.args** %6, align 8
  %171 = call i64 @args_has(%struct.args* %170, i8 signext 112)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %204

173:                                              ; preds = %169
  %174 = load %struct.args*, %struct.args** %6, align 8
  %175 = call i32 @args_strtonum(%struct.args* %174, i8 signext 112, i32 0, i32 100, i8** %15)
  store i32 %175, i32* %21, align 4
  %176 = load i8*, i8** %15, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %185

178:                                              ; preds = %173
  %179 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %180 = load i8*, i8** %15, align 8
  %181 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %179, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %180)
  %182 = load i8*, i8** %15, align 8
  %183 = call i32 @free(i8* %182)
  %184 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %184, i32* %3, align 4
  br label %296

185:                                              ; preds = %173
  %186 = load i32, i32* %25, align 4
  %187 = load i32, i32* @LAYOUT_TOPBOTTOM, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %191 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %21, align 4
  %194 = mul nsw i32 %192, %193
  %195 = sdiv i32 %194, 100
  store i32 %195, i32* %20, align 4
  br label %203

196:                                              ; preds = %185
  %197 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %198 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %21, align 4
  %201 = mul nsw i32 %199, %200
  %202 = sdiv i32 %201, 100
  store i32 %202, i32* %20, align 4
  br label %203

203:                                              ; preds = %196, %189
  br label %204

204:                                              ; preds = %203, %169
  br label %205

205:                                              ; preds = %204, %168
  %206 = load %struct.args*, %struct.args** %6, align 8
  %207 = call i64 @args_has(%struct.args* %206, i8 signext 98)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = load i32, i32* @SPAWN_BEFORE, align 4
  store i32 %210, i32* %24, align 4
  br label %212

211:                                              ; preds = %205
  store i32 0, i32* %24, align 4
  br label %212

212:                                              ; preds = %211, %209
  %213 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %214 = load i32, i32* %25, align 4
  %215 = load i32, i32* %20, align 4
  %216 = load i32, i32* %24, align 4
  %217 = call %struct.layout_cell* @layout_split_pane(%struct.window_pane* %213, i32 %214, i32 %215, i32 %216)
  store %struct.layout_cell* %217, %struct.layout_cell** %26, align 8
  %218 = load %struct.layout_cell*, %struct.layout_cell** %26, align 8
  %219 = icmp eq %struct.layout_cell* %218, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %212
  %221 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %222 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %221, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %223 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %223, i32* %3, align 4
  br label %296

224:                                              ; preds = %212
  %225 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %226 = call i32 @layout_close_pane(%struct.window_pane* %225)
  %227 = load %struct.window*, %struct.window** %11, align 8
  %228 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %229 = call i32 @window_lost_pane(%struct.window* %227, %struct.window_pane* %228)
  %230 = load %struct.window*, %struct.window** %11, align 8
  %231 = getelementptr inbounds %struct.window, %struct.window* %230, i32 0, i32 0
  %232 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %233 = load i32, i32* @entry, align 4
  %234 = call i32 @TAILQ_REMOVE(i32* %231, %struct.window_pane* %232, i32 %233)
  %235 = load %struct.window*, %struct.window** %12, align 8
  %236 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %237 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %236, i32 0, i32 4
  store %struct.window* %235, %struct.window** %237, align 8
  %238 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %239 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.window*, %struct.window** %12, align 8
  %242 = getelementptr inbounds %struct.window, %struct.window* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @options_set_parent(i32 %240, i32 %243)
  %245 = load i32, i32* @PANE_STYLECHANGED, align 4
  %246 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %247 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  %250 = load %struct.window*, %struct.window** %12, align 8
  %251 = getelementptr inbounds %struct.window, %struct.window* %250, i32 0, i32 0
  %252 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %253 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %254 = load i32, i32* @entry, align 4
  %255 = call i32 @TAILQ_INSERT_AFTER(i32* %251, %struct.window_pane* %252, %struct.window_pane* %253, i32 %254)
  %256 = load %struct.layout_cell*, %struct.layout_cell** %26, align 8
  %257 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %258 = call i32 @layout_assign_pane(%struct.layout_cell* %256, %struct.window_pane* %257)
  %259 = call i32 (...) @recalculate_sizes()
  %260 = load %struct.window*, %struct.window** %11, align 8
  %261 = call i32 @server_redraw_window(%struct.window* %260)
  %262 = load %struct.window*, %struct.window** %12, align 8
  %263 = call i32 @server_redraw_window(%struct.window* %262)
  %264 = load %struct.args*, %struct.args** %6, align 8
  %265 = call i64 @args_has(%struct.args* %264, i8 signext 100)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %279, label %267

267:                                              ; preds = %224
  %268 = load %struct.window*, %struct.window** %12, align 8
  %269 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %270 = call i32 @window_set_active_pane(%struct.window* %268, %struct.window_pane* %269, i32 1)
  %271 = load %struct.session*, %struct.session** %8, align 8
  %272 = load i32, i32* %22, align 4
  %273 = call i32 @session_select(%struct.session* %271, i32 %272)
  %274 = load %struct.cmd_find_state*, %struct.cmd_find_state** %7, align 8
  %275 = load %struct.session*, %struct.session** %8, align 8
  %276 = call i32 @cmd_find_from_session(%struct.cmd_find_state* %274, %struct.session* %275, i32 0)
  %277 = load %struct.session*, %struct.session** %8, align 8
  %278 = call i32 @server_redraw_session(%struct.session* %277)
  br label %282

279:                                              ; preds = %224
  %280 = load %struct.session*, %struct.session** %8, align 8
  %281 = call i32 @server_status_session(%struct.session* %280)
  br label %282

282:                                              ; preds = %279, %267
  %283 = load %struct.window*, %struct.window** %11, align 8
  %284 = call i64 @window_count_panes(%struct.window* %283)
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = load %struct.window*, %struct.window** %11, align 8
  %288 = call i32 @server_kill_window(%struct.window* %287)
  br label %292

289:                                              ; preds = %282
  %290 = load %struct.window*, %struct.window** %11, align 8
  %291 = call i32 @notify_window(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), %struct.window* %290)
  br label %292

292:                                              ; preds = %289, %286
  %293 = load %struct.window*, %struct.window** %12, align 8
  %294 = call i32 @notify_window(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), %struct.window* %293)
  %295 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %295, i32* %3, align 4
  br label %296

296:                                              ; preds = %292, %220, %178, %160, %130, %91, %80
  %297 = load i32, i32* %3, align 4
  ret i32 %297
}

declare dso_local i32 @server_unzoom_window(%struct.window*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @args_strtonum(%struct.args*, i8 signext, i32, i32, i8**) #1

declare dso_local %struct.layout_cell* @layout_split_pane(%struct.window_pane*, i32, i32, i32) #1

declare dso_local i32 @layout_close_pane(%struct.window_pane*) #1

declare dso_local i32 @window_lost_pane(%struct.window*, %struct.window_pane*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.window_pane*, i32) #1

declare dso_local i32 @options_set_parent(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.window_pane*, %struct.window_pane*, i32) #1

declare dso_local i32 @layout_assign_pane(%struct.layout_cell*, %struct.window_pane*) #1

declare dso_local i32 @recalculate_sizes(...) #1

declare dso_local i32 @server_redraw_window(%struct.window*) #1

declare dso_local i32 @window_set_active_pane(%struct.window*, %struct.window_pane*, i32) #1

declare dso_local i32 @session_select(%struct.session*, i32) #1

declare dso_local i32 @cmd_find_from_session(%struct.cmd_find_state*, %struct.session*, i32) #1

declare dso_local i32 @server_redraw_session(%struct.session*) #1

declare dso_local i32 @server_status_session(%struct.session*) #1

declare dso_local i64 @window_count_panes(%struct.window*) #1

declare dso_local i32 @server_kill_window(%struct.window*) #1

declare dso_local i32 @notify_window(i8*, %struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

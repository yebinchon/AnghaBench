; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-split-window.c_cmd_split_window_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-split-window.c_cmd_split_window_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32, i8** }
%struct.cmdq_item = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.window_pane*, %struct.winlink*, %struct.session* }
%struct.window_pane = type { i32, i32, i32 }
%struct.winlink = type { i32 }
%struct.session = type { i32 }
%struct.TYPE_3__ = type { %struct.cmd_find_state }
%struct.cmd_find_state = type { i32 }
%struct.spawn_context = type { i32, i8**, i32, i32, i32, i8*, i32*, %struct.layout_cell*, %struct.window_pane*, %struct.winlink*, %struct.session*, %struct.cmdq_item* }
%struct.layout_cell = type { i32 }
%struct.client = type { i32 }
%struct.args_value = type { i32 }

@LAYOUT_LEFTRIGHT = common dso_local global i32 0, align 4
@LAYOUT_TOPBOTTOM = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"percentage %s\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"lines %s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"create pane failed: -p %s\00", align 1
@SPAWN_BEFORE = common dso_local global i32 0, align 4
@SPAWN_FULLSIZE = common dso_local global i32 0, align 4
@SPAWN_EMPTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"no space for new pane\00", align 1
@SPAWN_DETACHED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"create pane failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SPLIT_WINDOW_TEMPLATE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"after-split-window\00", align 1
@CMD_RETURN_WAIT = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_split_window_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_split_window_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.cmd_find_state*, align 8
  %8 = alloca %struct.spawn_context, align 8
  %9 = alloca %struct.client*, align 8
  %10 = alloca %struct.session*, align 8
  %11 = alloca %struct.winlink*, align 8
  %12 = alloca %struct.window_pane*, align 8
  %13 = alloca %struct.window_pane*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.layout_cell*, align 8
  %16 = alloca %struct.cmd_find_state, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.args_value*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %30 = load %struct.cmd*, %struct.cmd** %4, align 8
  %31 = getelementptr inbounds %struct.cmd, %struct.cmd* %30, i32 0, i32 0
  %32 = load %struct.args*, %struct.args** %31, align 8
  store %struct.args* %32, %struct.args** %6, align 8
  %33 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %34 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store %struct.cmd_find_state* %36, %struct.cmd_find_state** %7, align 8
  %37 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %38 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %37, i32* null, i32 1)
  store %struct.client* %38, %struct.client** %9, align 8
  %39 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %40 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load %struct.session*, %struct.session** %41, align 8
  store %struct.session* %42, %struct.session** %10, align 8
  %43 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %44 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.winlink*, %struct.winlink** %45, align 8
  store %struct.winlink* %46, %struct.winlink** %11, align 8
  %47 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %48 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.window_pane*, %struct.window_pane** %49, align 8
  store %struct.window_pane* %50, %struct.window_pane** %12, align 8
  %51 = load %struct.args*, %struct.args** %6, align 8
  %52 = call i64 @args_has(%struct.args* %51, i8 signext 104)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %2
  %55 = load i32, i32* @LAYOUT_LEFTRIGHT, align 4
  store i32 %55, i32* %14, align 4
  br label %58

56:                                               ; preds = %2
  %57 = load i32, i32* @LAYOUT_TOPBOTTOM, align 4
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = load %struct.args*, %struct.args** %6, align 8
  %60 = call i8* @args_get(%struct.args* %59, float 1.080000e+02)
  store i8* %60, i8** %24, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %125

62:                                               ; preds = %58
  %63 = load i8*, i8** %24, align 8
  %64 = call i64 @strlen(i8* %63)
  store i64 %64, i64* %28, align 8
  %65 = load i8*, i8** %24, align 8
  %66 = load i64, i64* %28, align 8
  %67 = sub i64 %66, 1
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 37
  br i1 %71, label %72, label %110

72:                                               ; preds = %62
  %73 = load i8*, i8** %24, align 8
  %74 = call i8* @xstrdup(i8* %73)
  store i8* %74, i8** %27, align 8
  %75 = load i8*, i8** %27, align 8
  %76 = load i64, i64* %28, align 8
  %77 = sub i64 %76, 1
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %27, align 8
  %80 = load i32, i32* @INT_MAX, align 4
  %81 = call i32 @strtonum(i8* %79, i32 0, i32 %80, i8** %23)
  store i32 %81, i32* %18, align 4
  %82 = load i8*, i8** %27, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i8*, i8** %23, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %72
  %87 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %88 = load i8*, i8** %23, align 8
  %89 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %90, i32* %3, align 4
  br label %364

91:                                               ; preds = %72
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @LAYOUT_TOPBOTTOM, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %97 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %18, align 4
  %100 = mul nsw i32 %98, %99
  %101 = sdiv i32 %100, 100
  store i32 %101, i32* %17, align 4
  br label %109

102:                                              ; preds = %91
  %103 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %104 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %18, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sdiv i32 %107, 100
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %102, %95
  br label %124

110:                                              ; preds = %62
  %111 = load %struct.args*, %struct.args** %6, align 8
  %112 = load i32, i32* @INT_MAX, align 4
  %113 = call i32 @args_strtonum(%struct.args* %111, i8 signext 108, i32 0, i32 %112, i8** %25)
  store i32 %113, i32* %17, align 4
  %114 = load i8*, i8** %25, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %118 = load i8*, i8** %25, align 8
  %119 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %118)
  %120 = load i8*, i8** %25, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %122, i32* %3, align 4
  br label %364

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123, %109
  br label %163

125:                                              ; preds = %58
  %126 = load %struct.args*, %struct.args** %6, align 8
  %127 = call i64 @args_has(%struct.args* %126, i8 signext 112)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %161

129:                                              ; preds = %125
  %130 = load %struct.args*, %struct.args** %6, align 8
  %131 = load i32, i32* @INT_MAX, align 4
  %132 = call i32 @args_strtonum(%struct.args* %130, i8 signext 112, i32 0, i32 %131, i8** %25)
  store i32 %132, i32* %18, align 4
  %133 = load i8*, i8** %25, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %137 = load i8*, i8** %25, align 8
  %138 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %137)
  %139 = load i8*, i8** %25, align 8
  %140 = call i32 @free(i8* %139)
  %141 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %141, i32* %3, align 4
  br label %364

142:                                              ; preds = %129
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @LAYOUT_TOPBOTTOM, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %148 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %18, align 4
  %151 = mul nsw i32 %149, %150
  %152 = sdiv i32 %151, 100
  store i32 %152, i32* %17, align 4
  br label %160

153:                                              ; preds = %142
  %154 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %155 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %18, align 4
  %158 = mul nsw i32 %156, %157
  %159 = sdiv i32 %158, 100
  store i32 %159, i32* %17, align 4
  br label %160

160:                                              ; preds = %153, %146
  br label %162

161:                                              ; preds = %125
  store i32 -1, i32* %17, align 4
  br label %162

162:                                              ; preds = %161, %160
  br label %163

163:                                              ; preds = %162, %124
  %164 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %165 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @server_unzoom_window(i32 %166)
  %168 = load %struct.args*, %struct.args** %6, align 8
  %169 = call i64 @args_has(%struct.args* %168, i8 signext 73)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %163
  %172 = load %struct.args*, %struct.args** %6, align 8
  %173 = getelementptr inbounds %struct.args, %struct.args* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 0
  br label %176

176:                                              ; preds = %171, %163
  %177 = phi i1 [ false, %163 ], [ %175, %171 ]
  %178 = zext i1 %177 to i32
  store i32 %178, i32* %20, align 4
  store i32 0, i32* %19, align 4
  %179 = load %struct.args*, %struct.args** %6, align 8
  %180 = call i64 @args_has(%struct.args* %179, i8 signext 98)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i32, i32* @SPAWN_BEFORE, align 4
  %184 = load i32, i32* %19, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %19, align 4
  br label %186

186:                                              ; preds = %182, %176
  %187 = load %struct.args*, %struct.args** %6, align 8
  %188 = call i64 @args_has(%struct.args* %187, i8 signext 102)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = load i32, i32* @SPAWN_FULLSIZE, align 4
  %192 = load i32, i32* %19, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %19, align 4
  br label %194

194:                                              ; preds = %190, %186
  %195 = load i32, i32* %20, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %211, label %197

197:                                              ; preds = %194
  %198 = load %struct.args*, %struct.args** %6, align 8
  %199 = getelementptr inbounds %struct.args, %struct.args* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %215

202:                                              ; preds = %197
  %203 = load %struct.args*, %struct.args** %6, align 8
  %204 = getelementptr inbounds %struct.args, %struct.args* %203, i32 0, i32 1
  %205 = load i8**, i8*** %204, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 0
  %207 = load i8*, i8** %206, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %202, %194
  %212 = load i32, i32* @SPAWN_EMPTY, align 4
  %213 = load i32, i32* %19, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %19, align 4
  br label %215

215:                                              ; preds = %211, %202, %197
  %216 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* %19, align 4
  %220 = call %struct.layout_cell* @layout_split_pane(%struct.window_pane* %216, i32 %217, i32 %218, i32 %219)
  store %struct.layout_cell* %220, %struct.layout_cell** %15, align 8
  %221 = load %struct.layout_cell*, %struct.layout_cell** %15, align 8
  %222 = icmp eq %struct.layout_cell* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %215
  %224 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %225 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %224, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %226 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %226, i32* %3, align 4
  br label %364

227:                                              ; preds = %215
  %228 = call i32 @memset(%struct.spawn_context* %8, i32 0, i32 88)
  %229 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %230 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 11
  store %struct.cmdq_item* %229, %struct.cmdq_item** %230, align 8
  %231 = load %struct.session*, %struct.session** %10, align 8
  %232 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 10
  store %struct.session* %231, %struct.session** %232, align 8
  %233 = load %struct.winlink*, %struct.winlink** %11, align 8
  %234 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 9
  store %struct.winlink* %233, %struct.winlink** %234, align 8
  %235 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %236 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 8
  store %struct.window_pane* %235, %struct.window_pane** %236, align 8
  %237 = load %struct.layout_cell*, %struct.layout_cell** %15, align 8
  %238 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 7
  store %struct.layout_cell* %237, %struct.layout_cell** %238, align 8
  %239 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 6
  store i32* null, i32** %239, align 8
  %240 = load %struct.args*, %struct.args** %6, align 8
  %241 = getelementptr inbounds %struct.args, %struct.args* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 0
  store i32 %242, i32* %243, align 8
  %244 = load %struct.args*, %struct.args** %6, align 8
  %245 = getelementptr inbounds %struct.args, %struct.args* %244, i32 0, i32 1
  %246 = load i8**, i8*** %245, align 8
  %247 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 1
  store i8** %246, i8*** %247, align 8
  %248 = call i32 (...) @environ_create()
  %249 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 4
  store i32 %248, i32* %249, align 8
  %250 = load %struct.args*, %struct.args** %6, align 8
  %251 = call i8* @args_first_value(%struct.args* %250, i8 signext 101, %struct.args_value** %29)
  store i8* %251, i8** %22, align 8
  br label %252

252:                                              ; preds = %255, %227
  %253 = load i8*, i8** %22, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %261

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = load i8*, i8** %22, align 8
  %259 = call i32 @environ_put(i32 %257, i8* %258)
  %260 = call i8* @args_next_value(%struct.args_value** %29)
  store i8* %260, i8** %22, align 8
  br label %252

261:                                              ; preds = %252
  %262 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 2
  store i32 -1, i32* %262, align 8
  %263 = load %struct.args*, %struct.args** %6, align 8
  %264 = call i8* @args_get(%struct.args* %263, float 9.900000e+01)
  %265 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 5
  store i8* %264, i8** %265, align 8
  %266 = load i32, i32* %19, align 4
  %267 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 3
  store i32 %266, i32* %267, align 4
  %268 = load %struct.args*, %struct.args** %6, align 8
  %269 = call i64 @args_has(%struct.args* %268, i8 signext 100)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %261
  %272 = load i32, i32* @SPAWN_DETACHED, align 4
  %273 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %272
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %271, %261
  %277 = call %struct.window_pane* @spawn_pane(%struct.spawn_context* %8, i8** %25)
  store %struct.window_pane* %277, %struct.window_pane** %13, align 8
  %278 = icmp eq %struct.window_pane* %277, null
  br i1 %278, label %279, label %288

279:                                              ; preds = %276
  %280 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %281 = call i32 @layout_close_pane(%struct.window_pane* %280)
  %282 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %283 = load i8*, i8** %25, align 8
  %284 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %282, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %283)
  %285 = load i8*, i8** %25, align 8
  %286 = call i32 @free(i8* %285)
  %287 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %287, i32* %3, align 4
  br label %364

288:                                              ; preds = %276
  %289 = load i32, i32* %20, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %310

291:                                              ; preds = %288
  %292 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %293 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %294 = call i64 @window_pane_start_input(%struct.window_pane* %292, %struct.cmdq_item* %293, i8** %25)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %310

296:                                              ; preds = %291
  %297 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %298 = call i32 @layout_close_pane(%struct.window_pane* %297)
  %299 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %300 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %303 = call i32 @window_remove_pane(i32 %301, %struct.window_pane* %302)
  %304 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %305 = load i8*, i8** %25, align 8
  %306 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %304, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %305)
  %307 = load i8*, i8** %25, align 8
  %308 = call i32 @free(i8* %307)
  %309 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %309, i32* %3, align 4
  br label %364

310:                                              ; preds = %291, %288
  %311 = load %struct.args*, %struct.args** %6, align 8
  %312 = call i64 @args_has(%struct.args* %311, i8 signext 100)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %319, label %314

314:                                              ; preds = %310
  %315 = load %struct.cmd_find_state*, %struct.cmd_find_state** %7, align 8
  %316 = load %struct.winlink*, %struct.winlink** %11, align 8
  %317 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %318 = call i32 @cmd_find_from_winlink_pane(%struct.cmd_find_state* %315, %struct.winlink* %316, %struct.window_pane* %317, i32 0)
  br label %319

319:                                              ; preds = %314, %310
  %320 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %321 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @server_redraw_window(i32 %322)
  %324 = load %struct.session*, %struct.session** %10, align 8
  %325 = call i32 @server_status_session(%struct.session* %324)
  %326 = load %struct.args*, %struct.args** %6, align 8
  %327 = call i64 @args_has(%struct.args* %326, i8 signext 80)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %348

329:                                              ; preds = %319
  %330 = load %struct.args*, %struct.args** %6, align 8
  %331 = call i8* @args_get(%struct.args* %330, float 7.000000e+01)
  store i8* %331, i8** %21, align 8
  %332 = icmp eq i8* %331, null
  br i1 %332, label %333, label %335

333:                                              ; preds = %329
  %334 = load i8*, i8** @SPLIT_WINDOW_TEMPLATE, align 8
  store i8* %334, i8** %21, align 8
  br label %335

335:                                              ; preds = %333, %329
  %336 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %337 = load i8*, i8** %21, align 8
  %338 = load %struct.client*, %struct.client** %9, align 8
  %339 = load %struct.session*, %struct.session** %10, align 8
  %340 = load %struct.winlink*, %struct.winlink** %11, align 8
  %341 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %342 = call i8* @format_single(%struct.cmdq_item* %336, i8* %337, %struct.client* %338, %struct.session* %339, %struct.winlink* %340, %struct.window_pane* %341)
  store i8* %342, i8** %26, align 8
  %343 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %344 = load i8*, i8** %26, align 8
  %345 = call i32 @cmdq_print(%struct.cmdq_item* %343, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %344)
  %346 = load i8*, i8** %26, align 8
  %347 = call i32 @free(i8* %346)
  br label %348

348:                                              ; preds = %335, %319
  %349 = load %struct.winlink*, %struct.winlink** %11, align 8
  %350 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %351 = call i32 @cmd_find_from_winlink_pane(%struct.cmd_find_state* %16, %struct.winlink* %349, %struct.window_pane* %350, i32 0)
  %352 = load %struct.session*, %struct.session** %10, align 8
  %353 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %354 = call i32 @cmdq_insert_hook(%struct.session* %352, %struct.cmdq_item* %353, %struct.cmd_find_state* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %355 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 4
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @environ_free(i32 %356)
  %358 = load i32, i32* %20, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %348
  %361 = load i32, i32* @CMD_RETURN_WAIT, align 4
  store i32 %361, i32* %3, align 4
  br label %364

362:                                              ; preds = %348
  %363 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %363, i32* %3, align 4
  br label %364

364:                                              ; preds = %362, %360, %296, %279, %223, %135, %116, %86
  %365 = load i32, i32* %3, align 4
  ret i32 %365
}

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i32*, i32) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i8* @args_get(%struct.args*, float) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i32 @args_strtonum(%struct.args*, i8 signext, i32, i32, i8**) #1

declare dso_local i32 @server_unzoom_window(i32) #1

declare dso_local %struct.layout_cell* @layout_split_pane(%struct.window_pane*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.spawn_context*, i32, i32) #1

declare dso_local i32 @environ_create(...) #1

declare dso_local i8* @args_first_value(%struct.args*, i8 signext, %struct.args_value**) #1

declare dso_local i32 @environ_put(i32, i8*) #1

declare dso_local i8* @args_next_value(%struct.args_value**) #1

declare dso_local %struct.window_pane* @spawn_pane(%struct.spawn_context*, i8**) #1

declare dso_local i32 @layout_close_pane(%struct.window_pane*) #1

declare dso_local i64 @window_pane_start_input(%struct.window_pane*, %struct.cmdq_item*, i8**) #1

declare dso_local i32 @window_remove_pane(i32, %struct.window_pane*) #1

declare dso_local i32 @cmd_find_from_winlink_pane(%struct.cmd_find_state*, %struct.winlink*, %struct.window_pane*, i32) #1

declare dso_local i32 @server_redraw_window(i32) #1

declare dso_local i32 @server_status_session(%struct.session*) #1

declare dso_local i8* @format_single(%struct.cmdq_item*, i8*, %struct.client*, %struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i32 @cmdq_print(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i32 @cmdq_insert_hook(%struct.session*, %struct.cmdq_item*, %struct.cmd_find_state*, i8*) #1

declare dso_local i32 @environ_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

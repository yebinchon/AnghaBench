; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-resize-pane.c_cmd_resize_pane_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-resize-pane.c_cmd_resize_pane_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i64, i8** }
%struct.cmdq_item = type { %struct.TYPE_3__, %struct.client*, %struct.cmdq_shared* }
%struct.TYPE_3__ = type { %struct.session*, %struct.winlink*, %struct.window_pane* }
%struct.session = type { i32 }
%struct.winlink = type { %struct.window* }
%struct.window = type { i32, i32, i32 }
%struct.window_pane = type { i32 }
%struct.client = type { %struct.TYPE_4__, %struct.session* }
%struct.TYPE_4__ = type { i32 (%struct.client*, i32*)* }
%struct.cmdq_shared = type { i32 }

@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@WINDOW_ZOOMED = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"adjustment %s\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"width %s\00", align 1
@PANE_MINIMUM = common dso_local global i32 0, align 4
@LAYOUT_LEFTRIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"height %s\00", align 1
@LAYOUT_TOPBOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_resize_pane_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_resize_pane_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.cmdq_shared*, align 8
  %8 = alloca %struct.window_pane*, align 8
  %9 = alloca %struct.winlink*, align 8
  %10 = alloca %struct.window*, align 8
  %11 = alloca %struct.client*, align 8
  %12 = alloca %struct.session*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %22 = load %struct.cmd*, %struct.cmd** %4, align 8
  %23 = getelementptr inbounds %struct.cmd, %struct.cmd* %22, i32 0, i32 0
  %24 = load %struct.args*, %struct.args** %23, align 8
  store %struct.args* %24, %struct.args** %6, align 8
  %25 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %26 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %25, i32 0, i32 2
  %27 = load %struct.cmdq_shared*, %struct.cmdq_shared** %26, align 8
  store %struct.cmdq_shared* %27, %struct.cmdq_shared** %7, align 8
  %28 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %29 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load %struct.window_pane*, %struct.window_pane** %30, align 8
  store %struct.window_pane* %31, %struct.window_pane** %8, align 8
  %32 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %33 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.winlink*, %struct.winlink** %34, align 8
  store %struct.winlink* %35, %struct.winlink** %9, align 8
  %36 = load %struct.winlink*, %struct.winlink** %9, align 8
  %37 = getelementptr inbounds %struct.winlink, %struct.winlink* %36, i32 0, i32 0
  %38 = load %struct.window*, %struct.window** %37, align 8
  store %struct.window* %38, %struct.window** %10, align 8
  %39 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %40 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %39, i32 0, i32 1
  %41 = load %struct.client*, %struct.client** %40, align 8
  store %struct.client* %41, %struct.client** %11, align 8
  %42 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %43 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.session*, %struct.session** %44, align 8
  store %struct.session* %45, %struct.session** %12, align 8
  %46 = load %struct.args*, %struct.args** %6, align 8
  %47 = call i64 @args_has(%struct.args* %46, i8 signext 77)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %2
  %50 = load %struct.cmdq_shared*, %struct.cmdq_shared** %7, align 8
  %51 = getelementptr inbounds %struct.cmdq_shared, %struct.cmdq_shared* %50, i32 0, i32 0
  %52 = call i32* @cmd_mouse_window(i32* %51, %struct.session** %12)
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %55, i32* %3, align 4
  br label %317

56:                                               ; preds = %49
  %57 = load %struct.client*, %struct.client** %11, align 8
  %58 = icmp eq %struct.client* %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load %struct.client*, %struct.client** %11, align 8
  %61 = getelementptr inbounds %struct.client, %struct.client* %60, i32 0, i32 1
  %62 = load %struct.session*, %struct.session** %61, align 8
  %63 = load %struct.session*, %struct.session** %12, align 8
  %64 = icmp ne %struct.session* %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59, %56
  %66 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %66, i32* %3, align 4
  br label %317

67:                                               ; preds = %59
  %68 = load %struct.client*, %struct.client** %11, align 8
  %69 = getelementptr inbounds %struct.client, %struct.client* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 (%struct.client*, i32*)* @cmd_resize_pane_mouse_update, i32 (%struct.client*, i32*)** %70, align 8
  %71 = load %struct.client*, %struct.client** %11, align 8
  %72 = load %struct.cmdq_shared*, %struct.cmdq_shared** %7, align 8
  %73 = getelementptr inbounds %struct.cmdq_shared, %struct.cmdq_shared* %72, i32 0, i32 0
  %74 = call i32 @cmd_resize_pane_mouse_update(%struct.client* %71, i32* %73)
  %75 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %75, i32* %3, align 4
  br label %317

76:                                               ; preds = %2
  %77 = load %struct.args*, %struct.args** %6, align 8
  %78 = call i64 @args_has(%struct.args* %77, i8 signext 90)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load %struct.window*, %struct.window** %10, align 8
  %82 = getelementptr inbounds %struct.window, %struct.window* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @WINDOW_ZOOMED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.window*, %struct.window** %10, align 8
  %89 = call i32 @window_unzoom(%struct.window* %88)
  br label %93

90:                                               ; preds = %80
  %91 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %92 = call i32 @window_zoom(%struct.window_pane* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.window*, %struct.window** %10, align 8
  %95 = call i32 @server_redraw_window(%struct.window* %94)
  %96 = load %struct.window*, %struct.window** %10, align 8
  %97 = call i32 @server_status_window(%struct.window* %96)
  %98 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %98, i32* %3, align 4
  br label %317

99:                                               ; preds = %76
  %100 = load %struct.window*, %struct.window** %10, align 8
  %101 = call i32 @server_unzoom_window(%struct.window* %100)
  %102 = load %struct.args*, %struct.args** %6, align 8
  %103 = getelementptr inbounds %struct.args, %struct.args* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 1, i32* %17, align 4
  br label %124

107:                                              ; preds = %99
  %108 = load %struct.args*, %struct.args** %6, align 8
  %109 = getelementptr inbounds %struct.args, %struct.args* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* @INT_MAX, align 4
  %114 = call i8* @strtonum(i8* %112, i32 1, i32 %113, i8** %13)
  %115 = ptrtoint i8* %114 to i32
  store i32 %115, i32* %17, align 4
  %116 = load i8*, i8** %13, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %107
  %119 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = call i32 @cmdq_error(%struct.cmdq_item* %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %120)
  %122 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %122, i32* %3, align 4
  br label %317

123:                                              ; preds = %107
  br label %124

124:                                              ; preds = %123, %106
  %125 = load %struct.args*, %struct.args** %6, align 8
  %126 = call i8* @args_get(%struct.args* %125, i8 signext 120)
  store i8* %126, i8** %14, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %197

128:                                              ; preds = %124
  %129 = load i8*, i8** %14, align 8
  %130 = call i64 @strlen(i8* %129)
  store i64 %130, i64* %21, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = load i64, i64* %21, align 8
  %133 = sub i64 %132, 1
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 37
  br i1 %137, label %138, label %177

138:                                              ; preds = %128
  %139 = load i8*, i8** %14, align 8
  %140 = call i8* @xstrdup(i8* %139)
  store i8* %140, i8** %16, align 8
  %141 = load i8*, i8** %16, align 8
  %142 = load i64, i64* %21, align 8
  %143 = sub i64 %142, 1
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  store i8 0, i8* %144, align 1
  %145 = load i8*, i8** %16, align 8
  %146 = load i32, i32* @INT_MAX, align 4
  %147 = call i8* @strtonum(i8* %145, i32 0, i32 %146, i8** %13)
  %148 = ptrtoint i8* %147 to i32
  store i32 %148, i32* %20, align 4
  %149 = load i8*, i8** %16, align 8
  %150 = call i32 @free(i8* %149)
  %151 = load i8*, i8** %13, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %138
  %154 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %155 = load i8*, i8** %13, align 8
  %156 = call i32 @cmdq_error(%struct.cmdq_item* %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %155)
  %157 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %157, i32* %3, align 4
  br label %317

158:                                              ; preds = %138
  %159 = load %struct.window*, %struct.window** %10, align 8
  %160 = getelementptr inbounds %struct.window, %struct.window* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %20, align 4
  %163 = mul nsw i32 %161, %162
  %164 = sdiv i32 %163, 100
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* @PANE_MINIMUM, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32, i32* @PANE_MINIMUM, align 4
  store i32 %169, i32* %18, align 4
  br label %170

170:                                              ; preds = %168, %158
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* @INT_MAX, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* @INT_MAX, align 4
  store i32 %175, i32* %18, align 4
  br label %176

176:                                              ; preds = %174, %170
  br label %192

177:                                              ; preds = %128
  %178 = load %struct.args*, %struct.args** %6, align 8
  %179 = load i32, i32* @PANE_MINIMUM, align 4
  %180 = load i32, i32* @INT_MAX, align 4
  %181 = call i32 @args_strtonum(%struct.args* %178, i8 signext 120, i32 %179, i32 %180, i8** %15)
  store i32 %181, i32* %18, align 4
  %182 = load i8*, i8** %15, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %177
  %185 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %186 = load i8*, i8** %15, align 8
  %187 = call i32 @cmdq_error(%struct.cmdq_item* %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %186)
  %188 = load i8*, i8** %15, align 8
  %189 = call i32 @free(i8* %188)
  %190 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %190, i32* %3, align 4
  br label %317

191:                                              ; preds = %177
  br label %192

192:                                              ; preds = %191, %176
  %193 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %194 = load i32, i32* @LAYOUT_LEFTRIGHT, align 4
  %195 = load i32, i32* %18, align 4
  %196 = call i32 @layout_resize_pane_to(%struct.window_pane* %193, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %192, %124
  %198 = load %struct.args*, %struct.args** %6, align 8
  %199 = call i8* @args_get(%struct.args* %198, i8 signext 121)
  store i8* %199, i8** %14, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %270

201:                                              ; preds = %197
  %202 = load i8*, i8** %14, align 8
  %203 = call i64 @strlen(i8* %202)
  store i64 %203, i64* %21, align 8
  %204 = load i8*, i8** %14, align 8
  %205 = load i64, i64* %21, align 8
  %206 = sub i64 %205, 1
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 37
  br i1 %210, label %211, label %250

211:                                              ; preds = %201
  %212 = load i8*, i8** %14, align 8
  %213 = call i8* @xstrdup(i8* %212)
  store i8* %213, i8** %16, align 8
  %214 = load i8*, i8** %16, align 8
  %215 = load i64, i64* %21, align 8
  %216 = sub i64 %215, 1
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  store i8 0, i8* %217, align 1
  %218 = load i8*, i8** %16, align 8
  %219 = load i32, i32* @INT_MAX, align 4
  %220 = call i8* @strtonum(i8* %218, i32 0, i32 %219, i8** %13)
  %221 = ptrtoint i8* %220 to i32
  store i32 %221, i32* %20, align 4
  %222 = load i8*, i8** %16, align 8
  %223 = call i32 @free(i8* %222)
  %224 = load i8*, i8** %13, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %211
  %227 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %228 = load i8*, i8** %13, align 8
  %229 = call i32 @cmdq_error(%struct.cmdq_item* %227, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %228)
  %230 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %230, i32* %3, align 4
  br label %317

231:                                              ; preds = %211
  %232 = load %struct.window*, %struct.window** %10, align 8
  %233 = getelementptr inbounds %struct.window, %struct.window* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %20, align 4
  %236 = mul nsw i32 %234, %235
  %237 = sdiv i32 %236, 100
  store i32 %237, i32* %19, align 4
  %238 = load i32, i32* %19, align 4
  %239 = load i32, i32* @PANE_MINIMUM, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %231
  %242 = load i32, i32* @PANE_MINIMUM, align 4
  store i32 %242, i32* %19, align 4
  br label %243

243:                                              ; preds = %241, %231
  %244 = load i32, i32* %19, align 4
  %245 = load i32, i32* @INT_MAX, align 4
  %246 = icmp sgt i32 %244, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %243
  %248 = load i32, i32* @INT_MAX, align 4
  store i32 %248, i32* %19, align 4
  br label %249

249:                                              ; preds = %247, %243
  br label %265

250:                                              ; preds = %201
  %251 = load %struct.args*, %struct.args** %6, align 8
  %252 = load i32, i32* @PANE_MINIMUM, align 4
  %253 = load i32, i32* @INT_MAX, align 4
  %254 = call i32 @args_strtonum(%struct.args* %251, i8 signext 121, i32 %252, i32 %253, i8** %15)
  store i32 %254, i32* %19, align 4
  %255 = load i8*, i8** %15, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %264

257:                                              ; preds = %250
  %258 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %259 = load i8*, i8** %15, align 8
  %260 = call i32 @cmdq_error(%struct.cmdq_item* %258, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %259)
  %261 = load i8*, i8** %15, align 8
  %262 = call i32 @free(i8* %261)
  %263 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %263, i32* %3, align 4
  br label %317

264:                                              ; preds = %250
  br label %265

265:                                              ; preds = %264, %249
  %266 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %267 = load i32, i32* @LAYOUT_TOPBOTTOM, align 4
  %268 = load i32, i32* %19, align 4
  %269 = call i32 @layout_resize_pane_to(%struct.window_pane* %266, i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %265, %197
  %271 = load %struct.args*, %struct.args** %6, align 8
  %272 = call i64 @args_has(%struct.args* %271, i8 signext 76)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %270
  %275 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %276 = load i32, i32* @LAYOUT_LEFTRIGHT, align 4
  %277 = load i32, i32* %17, align 4
  %278 = sub nsw i32 0, %277
  %279 = call i32 @layout_resize_pane(%struct.window_pane* %275, i32 %276, i32 %278, i32 1)
  br label %311

280:                                              ; preds = %270
  %281 = load %struct.args*, %struct.args** %6, align 8
  %282 = call i64 @args_has(%struct.args* %281, i8 signext 82)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %280
  %285 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %286 = load i32, i32* @LAYOUT_LEFTRIGHT, align 4
  %287 = load i32, i32* %17, align 4
  %288 = call i32 @layout_resize_pane(%struct.window_pane* %285, i32 %286, i32 %287, i32 1)
  br label %310

289:                                              ; preds = %280
  %290 = load %struct.args*, %struct.args** %6, align 8
  %291 = call i64 @args_has(%struct.args* %290, i8 signext 85)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %289
  %294 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %295 = load i32, i32* @LAYOUT_TOPBOTTOM, align 4
  %296 = load i32, i32* %17, align 4
  %297 = sub nsw i32 0, %296
  %298 = call i32 @layout_resize_pane(%struct.window_pane* %294, i32 %295, i32 %297, i32 1)
  br label %309

299:                                              ; preds = %289
  %300 = load %struct.args*, %struct.args** %6, align 8
  %301 = call i64 @args_has(%struct.args* %300, i8 signext 68)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %299
  %304 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %305 = load i32, i32* @LAYOUT_TOPBOTTOM, align 4
  %306 = load i32, i32* %17, align 4
  %307 = call i32 @layout_resize_pane(%struct.window_pane* %304, i32 %305, i32 %306, i32 1)
  br label %308

308:                                              ; preds = %303, %299
  br label %309

309:                                              ; preds = %308, %293
  br label %310

310:                                              ; preds = %309, %284
  br label %311

311:                                              ; preds = %310, %274
  %312 = load %struct.winlink*, %struct.winlink** %9, align 8
  %313 = getelementptr inbounds %struct.winlink, %struct.winlink* %312, i32 0, i32 0
  %314 = load %struct.window*, %struct.window** %313, align 8
  %315 = call i32 @server_redraw_window(%struct.window* %314)
  %316 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %316, i32* %3, align 4
  br label %317

317:                                              ; preds = %311, %257, %226, %184, %153, %118, %93, %67, %65, %54
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32* @cmd_mouse_window(i32*, %struct.session**) #1

declare dso_local i32 @cmd_resize_pane_mouse_update(%struct.client*, i32*) #1

declare dso_local i32 @window_unzoom(%struct.window*) #1

declare dso_local i32 @window_zoom(%struct.window_pane*) #1

declare dso_local i32 @server_redraw_window(%struct.window*) #1

declare dso_local i32 @server_status_window(%struct.window*) #1

declare dso_local i32 @server_unzoom_window(%struct.window*) #1

declare dso_local i8* @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @args_strtonum(%struct.args*, i8 signext, i32, i32, i8**) #1

declare dso_local i32 @layout_resize_pane_to(%struct.window_pane*, i32, i32) #1

declare dso_local i32 @layout_resize_pane(%struct.window_pane*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_key_callback.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_item = type { %struct.client* }
%struct.client = type { i32, %struct.key_table*, i32, %struct.TYPE_3__, i32, %struct.session* }
%struct.key_table = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.client*, %struct.mouse_event*)* }
%struct.mouse_event = type { i32, i32 }
%struct.session = type { i32, %struct.winlink* }
%struct.winlink = type { i32 }
%struct.key_event = type { i32, %struct.mouse_event }
%struct.window_pane = type { i32, i32 }
%struct.window_mode_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.window_mode_entry*)* }
%struct.timeval = type { i32, i32 }
%struct.key_binding = type { i32 }
%struct.cmd_find_state = type { %struct.window_pane* }

@CLIENT_DEAD = common dso_local global i32 0, align 4
@CLIENT_SUSPENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"gettimeofday failed\00", align 1
@KEYC_MOUSE = common dso_local global i32 0, align 4
@CLIENT_READONLY = common dso_local global i32 0, align 4
@KEYC_UNKNOWN = common dso_local global i32 0, align 4
@KEYC_DRAGGING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@KEYC_XTERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"prefix2\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"key table %s (no pane)\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"key table %s (pane %%%u)\00", align 1
@CLIENT_REPEAT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"currently repeating\00", align 1
@KEY_BINDING_REPEAT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"found in key table %s (not repeating)\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"found in key table %s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"repeat-time\00", align 1
@KEYC_ANY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"not found in key table %s\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"trying in root table\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdq_item*, i8*)* @server_client_key_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_client_key_callback(%struct.cmdq_item* %0, i8* %1) #0 {
  %3 = alloca %struct.cmdq_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.client*, align 8
  %6 = alloca %struct.key_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mouse_event*, align 8
  %9 = alloca %struct.session*, align 8
  %10 = alloca %struct.winlink*, align 8
  %11 = alloca %struct.window_pane*, align 8
  %12 = alloca %struct.window_mode_entry*, align 8
  %13 = alloca %struct.timeval, align 4
  %14 = alloca %struct.key_table*, align 8
  %15 = alloca %struct.key_table*, align 8
  %16 = alloca %struct.key_binding*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.cmd_find_state, align 8
  %20 = alloca i32, align 4
  store %struct.cmdq_item* %0, %struct.cmdq_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %21 = load %struct.cmdq_item*, %struct.cmdq_item** %3, align 8
  %22 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %21, i32 0, i32 0
  %23 = load %struct.client*, %struct.client** %22, align 8
  store %struct.client* %23, %struct.client** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to %struct.key_event*
  store %struct.key_event* %25, %struct.key_event** %6, align 8
  %26 = load %struct.key_event*, %struct.key_event** %6, align 8
  %27 = getelementptr inbounds %struct.key_event, %struct.key_event* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.key_event*, %struct.key_event** %6, align 8
  %30 = getelementptr inbounds %struct.key_event, %struct.key_event* %29, i32 0, i32 1
  store %struct.mouse_event* %30, %struct.mouse_event** %8, align 8
  %31 = load %struct.client*, %struct.client** %5, align 8
  %32 = getelementptr inbounds %struct.client, %struct.client* %31, i32 0, i32 5
  %33 = load %struct.session*, %struct.session** %32, align 8
  store %struct.session* %33, %struct.session** %9, align 8
  %34 = load %struct.session*, %struct.session** %9, align 8
  %35 = icmp eq %struct.session* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %2
  %37 = load %struct.client*, %struct.client** %5, align 8
  %38 = getelementptr inbounds %struct.client, %struct.client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CLIENT_DEAD, align 4
  %41 = load i32, i32* @CLIENT_SUSPENDED, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36, %2
  br label %411

46:                                               ; preds = %36
  %47 = load %struct.session*, %struct.session** %9, align 8
  %48 = getelementptr inbounds %struct.session, %struct.session* %47, i32 0, i32 1
  %49 = load %struct.winlink*, %struct.winlink** %48, align 8
  store %struct.winlink* %49, %struct.winlink** %10, align 8
  %50 = load %struct.client*, %struct.client** %5, align 8
  %51 = getelementptr inbounds %struct.client, %struct.client* %50, i32 0, i32 4
  %52 = call i64 @gettimeofday(i32* %51, i32* null)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = call i32 @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %46
  %57 = load %struct.session*, %struct.session** %9, align 8
  %58 = load %struct.client*, %struct.client** %5, align 8
  %59 = getelementptr inbounds %struct.client, %struct.client* %58, i32 0, i32 4
  %60 = call i32 @session_update_activity(%struct.session* %57, i32* %59)
  %61 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %62 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @KEYC_MOUSE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %56
  %67 = load %struct.client*, %struct.client** %5, align 8
  %68 = getelementptr inbounds %struct.client, %struct.client* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CLIENT_READONLY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %411

74:                                               ; preds = %66
  %75 = load %struct.client*, %struct.client** %5, align 8
  %76 = load %struct.key_event*, %struct.key_event** %6, align 8
  %77 = call i32 @server_client_check_mouse(%struct.client* %75, %struct.key_event* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @KEYC_UNKNOWN, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %411

82:                                               ; preds = %74
  %83 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %84 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %87 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @KEYC_DRAGGING, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %82
  %92 = load %struct.client*, %struct.client** %5, align 8
  %93 = getelementptr inbounds %struct.client, %struct.client* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32 (%struct.client*, %struct.mouse_event*)*, i32 (%struct.client*, %struct.mouse_event*)** %94, align 8
  %96 = load %struct.client*, %struct.client** %5, align 8
  %97 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %98 = call i32 %95(%struct.client* %96, %struct.mouse_event* %97)
  br label %411

99:                                               ; preds = %82
  br label %100

100:                                              ; preds = %99, %56
  %101 = load i32, i32* %7, align 4
  %102 = call i64 @KEYC_IS_MOUSE(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %106 = call i64 @cmd_find_from_mouse(%struct.cmd_find_state* %19, %struct.mouse_event* %105, i32 0)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104, %100
  %109 = load %struct.session*, %struct.session** %9, align 8
  %110 = call i32 @cmd_find_from_session(%struct.cmd_find_state* %19, %struct.session* %109, i32 0)
  br label %111

111:                                              ; preds = %108, %104
  %112 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %19, i32 0, i32 0
  %113 = load %struct.window_pane*, %struct.window_pane** %112, align 8
  store %struct.window_pane* %113, %struct.window_pane** %11, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @KEYC_IS_MOUSE(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load %struct.session*, %struct.session** %9, align 8
  %119 = getelementptr inbounds %struct.session, %struct.session* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @options_get_number(i32 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %117
  br label %391

124:                                              ; preds = %117, %111
  %125 = load i32, i32* %7, align 4
  %126 = call i64 @KEYC_IS_MOUSE(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %124
  %129 = load %struct.session*, %struct.session** %9, align 8
  %130 = call i64 @server_client_assume_paste(%struct.session* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %391

133:                                              ; preds = %128, %124
  %134 = load %struct.client*, %struct.client** %5, align 8
  %135 = load %struct.client*, %struct.client** %5, align 8
  %136 = getelementptr inbounds %struct.client, %struct.client* %135, i32 0, i32 1
  %137 = load %struct.key_table*, %struct.key_table** %136, align 8
  %138 = call i64 @server_client_is_default_key_table(%struct.client* %134, %struct.key_table* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %164

140:                                              ; preds = %133
  %141 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  %142 = icmp ne %struct.window_pane* %141, null
  br i1 %142, label %143, label %164

143:                                              ; preds = %140
  %144 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  %145 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %144, i32 0, i32 1
  %146 = call %struct.window_mode_entry* @TAILQ_FIRST(i32* %145)
  store %struct.window_mode_entry* %146, %struct.window_mode_entry** %12, align 8
  %147 = icmp ne %struct.window_mode_entry* %146, null
  br i1 %147, label %148, label %164

148:                                              ; preds = %143
  %149 = load %struct.window_mode_entry*, %struct.window_mode_entry** %12, align 8
  %150 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %149, i32 0, i32 0
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32 (%struct.window_mode_entry*)*, i32 (%struct.window_mode_entry*)** %152, align 8
  %154 = icmp ne i32 (%struct.window_mode_entry*)* %153, null
  br i1 %154, label %155, label %164

155:                                              ; preds = %148
  %156 = load %struct.window_mode_entry*, %struct.window_mode_entry** %12, align 8
  %157 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %156, i32 0, i32 0
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32 (%struct.window_mode_entry*)*, i32 (%struct.window_mode_entry*)** %159, align 8
  %161 = load %struct.window_mode_entry*, %struct.window_mode_entry** %12, align 8
  %162 = call i32 %160(%struct.window_mode_entry* %161)
  %163 = call %struct.key_table* @key_bindings_get_table(i32 %162, i32 1)
  store %struct.key_table* %163, %struct.key_table** %14, align 8
  br label %168

164:                                              ; preds = %148, %143, %140, %133
  %165 = load %struct.client*, %struct.client** %5, align 8
  %166 = getelementptr inbounds %struct.client, %struct.client* %165, i32 0, i32 1
  %167 = load %struct.key_table*, %struct.key_table** %166, align 8
  store %struct.key_table* %167, %struct.key_table** %14, align 8
  br label %168

168:                                              ; preds = %164, %155
  %169 = load %struct.key_table*, %struct.key_table** %14, align 8
  store %struct.key_table* %169, %struct.key_table** %15, align 8
  br label %170

170:                                              ; preds = %366, %249, %168
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @KEYC_XTERM, align 4
  %173 = xor i32 %172, -1
  %174 = and i32 %171, %173
  store i32 %174, i32* %20, align 4
  %175 = load i32, i32* %20, align 4
  %176 = load %struct.session*, %struct.session** %9, align 8
  %177 = getelementptr inbounds %struct.session, %struct.session* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @options_get_number(i32 %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %180 = icmp eq i32 %175, %179
  br i1 %180, label %188, label %181

181:                                              ; preds = %170
  %182 = load i32, i32* %20, align 4
  %183 = load %struct.session*, %struct.session** %9, align 8
  %184 = getelementptr inbounds %struct.session, %struct.session* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @options_get_number(i32 %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %187 = icmp eq i32 %182, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %181, %170
  %189 = load %struct.key_table*, %struct.key_table** %14, align 8
  %190 = getelementptr inbounds %struct.key_table, %struct.key_table* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @strcmp(i32 %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = load %struct.client*, %struct.client** %5, align 8
  %196 = call i32 @server_client_set_key_table(%struct.client* %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %197 = load %struct.client*, %struct.client** %5, align 8
  %198 = call i32 @server_status_client(%struct.client* %197)
  br label %411

199:                                              ; preds = %188, %181
  %200 = load %struct.client*, %struct.client** %5, align 8
  %201 = getelementptr inbounds %struct.client, %struct.client* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %18, align 4
  br label %203

203:                                              ; preds = %333, %199
  %204 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  %205 = icmp eq %struct.window_pane* %204, null
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load %struct.key_table*, %struct.key_table** %14, align 8
  %208 = getelementptr inbounds %struct.key_table, %struct.key_table* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %209)
  br label %219

211:                                              ; preds = %203
  %212 = load %struct.key_table*, %struct.key_table** %14, align 8
  %213 = getelementptr inbounds %struct.key_table, %struct.key_table* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  %216 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %214, i32 %217)
  br label %219

219:                                              ; preds = %211, %206
  %220 = load %struct.client*, %struct.client** %5, align 8
  %221 = getelementptr inbounds %struct.client, %struct.client* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @CLIENT_REPEAT, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %219
  %227 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %228

228:                                              ; preds = %226, %219
  %229 = load %struct.key_table*, %struct.key_table** %14, align 8
  %230 = load i32, i32* %20, align 4
  %231 = call %struct.key_binding* @key_bindings_get(%struct.key_table* %229, i32 %230)
  store %struct.key_binding* %231, %struct.key_binding** %16, align 8
  %232 = load %struct.key_binding*, %struct.key_binding** %16, align 8
  %233 = icmp ne %struct.key_binding* %232, null
  br i1 %233, label %234, label %329

234:                                              ; preds = %228
  %235 = load %struct.client*, %struct.client** %5, align 8
  %236 = getelementptr inbounds %struct.client, %struct.client* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @CLIENT_REPEAT, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %267

241:                                              ; preds = %234
  %242 = load %struct.key_binding*, %struct.key_binding** %16, align 8
  %243 = getelementptr inbounds %struct.key_binding, %struct.key_binding* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = xor i32 %244, -1
  %246 = load i32, i32* @KEY_BINDING_REPEAT, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %267

249:                                              ; preds = %241
  %250 = load %struct.key_table*, %struct.key_table** %14, align 8
  %251 = getelementptr inbounds %struct.key_table, %struct.key_table* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %252)
  %254 = load %struct.client*, %struct.client** %5, align 8
  %255 = call i32 @server_client_set_key_table(%struct.client* %254, i8* null)
  %256 = load %struct.client*, %struct.client** %5, align 8
  %257 = getelementptr inbounds %struct.client, %struct.client* %256, i32 0, i32 1
  %258 = load %struct.key_table*, %struct.key_table** %257, align 8
  store %struct.key_table* %258, %struct.key_table** %14, align 8
  store %struct.key_table* %258, %struct.key_table** %15, align 8
  %259 = load i32, i32* @CLIENT_REPEAT, align 4
  %260 = xor i32 %259, -1
  %261 = load %struct.client*, %struct.client** %5, align 8
  %262 = getelementptr inbounds %struct.client, %struct.client* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = and i32 %263, %260
  store i32 %264, i32* %262, align 8
  %265 = load %struct.client*, %struct.client** %5, align 8
  %266 = call i32 @server_status_client(%struct.client* %265)
  br label %170

267:                                              ; preds = %241, %234
  %268 = load %struct.key_table*, %struct.key_table** %14, align 8
  %269 = getelementptr inbounds %struct.key_table, %struct.key_table* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %270)
  %272 = load %struct.key_table*, %struct.key_table** %14, align 8
  %273 = getelementptr inbounds %struct.key_table, %struct.key_table* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 4
  %276 = load %struct.session*, %struct.session** %9, align 8
  %277 = getelementptr inbounds %struct.session, %struct.session* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @options_get_number(i32 %278, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  store i32 %279, i32* %17, align 4
  %280 = load i32, i32* %17, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %310

282:                                              ; preds = %267
  %283 = load %struct.key_binding*, %struct.key_binding** %16, align 8
  %284 = getelementptr inbounds %struct.key_binding, %struct.key_binding* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @KEY_BINDING_REPEAT, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %310

289:                                              ; preds = %282
  %290 = load i32, i32* @CLIENT_REPEAT, align 4
  %291 = load %struct.client*, %struct.client** %5, align 8
  %292 = getelementptr inbounds %struct.client, %struct.client* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  %295 = load i32, i32* %17, align 4
  %296 = sdiv i32 %295, 1000
  %297 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i32 %296, i32* %297, align 4
  %298 = load i32, i32* %17, align 4
  %299 = srem i32 %298, 1000
  %300 = sext i32 %299 to i64
  %301 = mul nsw i64 %300, 1000
  %302 = trunc i64 %301 to i32
  %303 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i32 %302, i32* %303, align 4
  %304 = load %struct.client*, %struct.client** %5, align 8
  %305 = getelementptr inbounds %struct.client, %struct.client* %304, i32 0, i32 2
  %306 = call i32 @evtimer_del(i32* %305)
  %307 = load %struct.client*, %struct.client** %5, align 8
  %308 = getelementptr inbounds %struct.client, %struct.client* %307, i32 0, i32 2
  %309 = call i32 @evtimer_add(i32* %308, %struct.timeval* %13)
  br label %319

310:                                              ; preds = %282, %267
  %311 = load i32, i32* @CLIENT_REPEAT, align 4
  %312 = xor i32 %311, -1
  %313 = load %struct.client*, %struct.client** %5, align 8
  %314 = getelementptr inbounds %struct.client, %struct.client* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = and i32 %315, %312
  store i32 %316, i32* %314, align 8
  %317 = load %struct.client*, %struct.client** %5, align 8
  %318 = call i32 @server_client_set_key_table(%struct.client* %317, i8* null)
  br label %319

319:                                              ; preds = %310, %289
  %320 = load %struct.client*, %struct.client** %5, align 8
  %321 = call i32 @server_status_client(%struct.client* %320)
  %322 = load %struct.key_binding*, %struct.key_binding** %16, align 8
  %323 = load %struct.cmdq_item*, %struct.cmdq_item** %3, align 8
  %324 = load %struct.client*, %struct.client** %5, align 8
  %325 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %326 = call i32 @key_bindings_dispatch(%struct.key_binding* %322, %struct.cmdq_item* %323, %struct.client* %324, %struct.mouse_event* %325, %struct.cmd_find_state* %19)
  %327 = load %struct.key_table*, %struct.key_table** %14, align 8
  %328 = call i32 @key_bindings_unref_table(%struct.key_table* %327)
  br label %411

329:                                              ; preds = %228
  %330 = load i32, i32* %20, align 4
  %331 = load i32, i32* @KEYC_ANY, align 4
  %332 = icmp ne i32 %330, %331
  br i1 %332, label %333, label %335

333:                                              ; preds = %329
  %334 = load i32, i32* @KEYC_ANY, align 4
  store i32 %334, i32* %20, align 4
  br label %203

335:                                              ; preds = %329
  %336 = load %struct.key_table*, %struct.key_table** %14, align 8
  %337 = getelementptr inbounds %struct.key_table, %struct.key_table* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %338)
  %340 = load %struct.client*, %struct.client** %5, align 8
  %341 = load %struct.key_table*, %struct.key_table** %14, align 8
  %342 = call i64 @server_client_is_default_key_table(%struct.client* %340, %struct.key_table* %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %335
  %345 = load %struct.client*, %struct.client** %5, align 8
  %346 = getelementptr inbounds %struct.client, %struct.client* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @CLIENT_REPEAT, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %375

351:                                              ; preds = %344, %335
  %352 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %353 = load %struct.client*, %struct.client** %5, align 8
  %354 = call i32 @server_client_set_key_table(%struct.client* %353, i8* null)
  %355 = load %struct.client*, %struct.client** %5, align 8
  %356 = getelementptr inbounds %struct.client, %struct.client* %355, i32 0, i32 1
  %357 = load %struct.key_table*, %struct.key_table** %356, align 8
  store %struct.key_table* %357, %struct.key_table** %14, align 8
  %358 = load %struct.client*, %struct.client** %5, align 8
  %359 = getelementptr inbounds %struct.client, %struct.client* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @CLIENT_REPEAT, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %351
  %365 = load %struct.key_table*, %struct.key_table** %14, align 8
  store %struct.key_table* %365, %struct.key_table** %15, align 8
  br label %366

366:                                              ; preds = %364, %351
  %367 = load i32, i32* @CLIENT_REPEAT, align 4
  %368 = xor i32 %367, -1
  %369 = load %struct.client*, %struct.client** %5, align 8
  %370 = getelementptr inbounds %struct.client, %struct.client* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = and i32 %371, %368
  store i32 %372, i32* %370, align 8
  %373 = load %struct.client*, %struct.client** %5, align 8
  %374 = call i32 @server_status_client(%struct.client* %373)
  br label %170

375:                                              ; preds = %344
  %376 = load %struct.key_table*, %struct.key_table** %15, align 8
  %377 = load %struct.key_table*, %struct.key_table** %14, align 8
  %378 = icmp ne %struct.key_table* %376, %377
  br i1 %378, label %379, label %390

379:                                              ; preds = %375
  %380 = load i32, i32* %18, align 4
  %381 = xor i32 %380, -1
  %382 = load i32, i32* @CLIENT_REPEAT, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %379
  %386 = load %struct.client*, %struct.client** %5, align 8
  %387 = call i32 @server_client_set_key_table(%struct.client* %386, i8* null)
  %388 = load %struct.client*, %struct.client** %5, align 8
  %389 = call i32 @server_status_client(%struct.client* %388)
  br label %411

390:                                              ; preds = %379, %375
  br label %391

391:                                              ; preds = %390, %132, %123
  %392 = load %struct.client*, %struct.client** %5, align 8
  %393 = getelementptr inbounds %struct.client, %struct.client* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load i32, i32* @CLIENT_READONLY, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %391
  br label %411

399:                                              ; preds = %391
  %400 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  %401 = icmp ne %struct.window_pane* %400, null
  br i1 %401, label %402, label %410

402:                                              ; preds = %399
  %403 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  %404 = load %struct.client*, %struct.client** %5, align 8
  %405 = load %struct.session*, %struct.session** %9, align 8
  %406 = load %struct.winlink*, %struct.winlink** %10, align 8
  %407 = load i32, i32* %7, align 4
  %408 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %409 = call i32 @window_pane_key(%struct.window_pane* %403, %struct.client* %404, %struct.session* %405, %struct.winlink* %406, i32 %407, %struct.mouse_event* %408)
  br label %410

410:                                              ; preds = %402, %399
  br label %411

411:                                              ; preds = %410, %398, %385, %319, %194, %91, %81, %73, %45
  %412 = load %struct.session*, %struct.session** %9, align 8
  %413 = icmp ne %struct.session* %412, null
  br i1 %413, label %414, label %417

414:                                              ; preds = %411
  %415 = load %struct.client*, %struct.client** %5, align 8
  %416 = call i32 @server_client_update_latest(%struct.client* %415)
  br label %417

417:                                              ; preds = %414, %411
  %418 = load %struct.key_event*, %struct.key_event** %6, align 8
  %419 = call i32 @free(%struct.key_event* %418)
  %420 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  ret i32 %420
}

declare dso_local i64 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @session_update_activity(%struct.session*, i32*) #1

declare dso_local i32 @server_client_check_mouse(%struct.client*, %struct.key_event*) #1

declare dso_local i64 @KEYC_IS_MOUSE(i32) #1

declare dso_local i64 @cmd_find_from_mouse(%struct.cmd_find_state*, %struct.mouse_event*, i32) #1

declare dso_local i32 @cmd_find_from_session(%struct.cmd_find_state*, %struct.session*, i32) #1

declare dso_local i32 @options_get_number(i32, i8*) #1

declare dso_local i64 @server_client_assume_paste(%struct.session*) #1

declare dso_local i64 @server_client_is_default_key_table(%struct.client*, %struct.key_table*) #1

declare dso_local %struct.window_mode_entry* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.key_table* @key_bindings_get_table(i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @server_client_set_key_table(%struct.client*, i8*) #1

declare dso_local i32 @server_status_client(%struct.client*) #1

declare dso_local i32 @log_debug(i8*, ...) #1

declare dso_local %struct.key_binding* @key_bindings_get(%struct.key_table*, i32) #1

declare dso_local i32 @evtimer_del(i32*) #1

declare dso_local i32 @evtimer_add(i32*, %struct.timeval*) #1

declare dso_local i32 @key_bindings_dispatch(%struct.key_binding*, %struct.cmdq_item*, %struct.client*, %struct.mouse_event*, %struct.cmd_find_state*) #1

declare dso_local i32 @key_bindings_unref_table(%struct.key_table*) #1

declare dso_local i32 @window_pane_key(%struct.window_pane*, %struct.client*, %struct.session*, %struct.winlink*, i32, %struct.mouse_event*) #1

declare dso_local i32 @server_client_update_latest(%struct.client*) #1

declare dso_local i32 @free(%struct.key_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

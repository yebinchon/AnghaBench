; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_handle_button.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_handle_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.wlr_xwayland* }
%struct.wlr_xwayland = type { i32 }
%struct.sway_seat = type { i32, %struct.sway_cursor*, %struct.seatop_default_event* }
%struct.sway_cursor = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.seatop_default_event = type { i32 }
%struct.wlr_input_device = type { i32 }
%struct.wlr_surface = type { i32 }
%struct.sway_node = type { i64, %struct.sway_container* }
%struct.sway_container = type { i64, i32, i64, i32, i64, i32, %struct.sway_container* }
%struct.wlr_keyboard = type { i32 }
%struct.sway_binding = type { i32 }
%struct.wlr_layer_surface_v1 = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@N_CONTAINER = common dso_local global i64 0, align 8
@WLR_EDGE_NONE = common dso_local global i32 0, align 4
@N_WORKSPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@WLR_BUTTON_PRESSED = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_12__* null, align 8
@BTN_LEFT = common dso_local global i64 0, align 8
@BTN_RIGHT = common dso_local global i64 0, align 8
@WLR_EDGE_RIGHT = common dso_local global i32 0, align 4
@WLR_EDGE_LEFT = common dso_local global i32 0, align 4
@WLR_EDGE_BOTTOM = common dso_local global i32 0, align 4
@WLR_EDGE_TOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"nw-resize\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ne-resize\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"se-resize\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sw-resize\00", align 1
@FULLSCREEN_NONE = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, i64, %struct.wlr_input_device*, i64, i32)* @handle_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_button(%struct.sway_seat* %0, i64 %1, %struct.wlr_input_device* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wlr_input_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.seatop_default_event*, align 8
  %12 = alloca %struct.sway_cursor*, align 8
  %13 = alloca %struct.wlr_surface*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.sway_node*, align 8
  %17 = alloca %struct.sway_container*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.wlr_keyboard*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %struct.sway_binding*, align 8
  %31 = alloca %struct.wlr_layer_surface_v1*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca %struct.sway_container*, align 8
  %38 = alloca %struct.sway_container*, align 8
  %39 = alloca i32, align 4
  store %struct.sway_seat* %0, %struct.sway_seat** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.wlr_input_device* %2, %struct.wlr_input_device** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %40 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %41 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %40, i32 0, i32 2
  %42 = load %struct.seatop_default_event*, %struct.seatop_default_event** %41, align 8
  store %struct.seatop_default_event* %42, %struct.seatop_default_event** %11, align 8
  %43 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %44 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %43, i32 0, i32 1
  %45 = load %struct.sway_cursor*, %struct.sway_cursor** %44, align 8
  store %struct.sway_cursor* %45, %struct.sway_cursor** %12, align 8
  store %struct.wlr_surface* null, %struct.wlr_surface** %13, align 8
  %46 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %47 = load %struct.sway_cursor*, %struct.sway_cursor** %12, align 8
  %48 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sway_cursor*, %struct.sway_cursor** %12, align 8
  %53 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call %struct.sway_node* @node_at_coords(%struct.sway_seat* %46, i64 %51, i64 %56, %struct.wlr_surface** %13, double* %14, double* %15)
  store %struct.sway_node* %57, %struct.sway_node** %16, align 8
  %58 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %59 = icmp ne %struct.sway_node* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %5
  %61 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %62 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @N_CONTAINER, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %68 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %67, i32 0, i32 1
  %69 = load %struct.sway_container*, %struct.sway_container** %68, align 8
  br label %71

70:                                               ; preds = %60, %5
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi %struct.sway_container* [ %69, %66 ], [ null, %70 ]
  store %struct.sway_container* %72, %struct.sway_container** %17, align 8
  %73 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %74 = icmp ne %struct.sway_container* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %77 = call i64 @container_is_floating(%struct.sway_container* %76)
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i1 [ false, %71 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %18, align 4
  %82 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %83 = icmp ne %struct.sway_container* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %86 = call i64 @container_is_floating_or_child(%struct.sway_container* %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi i1 [ false, %79 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %19, align 4
  %91 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %92 = icmp ne %struct.sway_container* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %95 = call i64 @container_is_fullscreen_or_child(%struct.sway_container* %94)
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %93, %88
  %98 = phi i1 [ false, %88 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %20, align 4
  %100 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %101 = icmp ne %struct.sway_container* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %104 = load %struct.wlr_surface*, %struct.wlr_surface** %13, align 8
  %105 = load %struct.sway_cursor*, %struct.sway_cursor** %12, align 8
  %106 = call i32 @find_edge(%struct.sway_container* %103, %struct.wlr_surface* %104, %struct.sway_cursor* %105)
  br label %109

107:                                              ; preds = %97
  %108 = load i32, i32* @WLR_EDGE_NONE, align 4
  br label %109

109:                                              ; preds = %107, %102
  %110 = phi i32 [ %106, %102 ], [ %108, %107 ]
  store i32 %110, i32* %21, align 4
  %111 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %112 = icmp ne %struct.sway_container* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %118 = load %struct.wlr_surface*, %struct.wlr_surface** %13, align 8
  %119 = load %struct.sway_cursor*, %struct.sway_cursor** %12, align 8
  %120 = call i32 @find_resize_edge(%struct.sway_container* %117, %struct.wlr_surface* %118, %struct.sway_cursor* %119)
  br label %123

121:                                              ; preds = %113, %109
  %122 = load i32, i32* @WLR_EDGE_NONE, align 4
  br label %123

123:                                              ; preds = %121, %116
  %124 = phi i32 [ %120, %116 ], [ %122, %121 ]
  store i32 %124, i32* %22, align 4
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* @WLR_EDGE_NONE, align 4
  %127 = icmp ne i32 %125, %126
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %23, align 4
  %129 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %130 = icmp ne %struct.sway_container* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = load i32, i32* %23, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load %struct.wlr_surface*, %struct.wlr_surface** %13, align 8
  %136 = icmp ne %struct.wlr_surface* %135, null
  br label %137

137:                                              ; preds = %134, %131, %123
  %138 = phi i1 [ false, %131 ], [ false, %123 ], [ %136, %134 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %24, align 4
  %140 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %141 = icmp ne %struct.sway_node* %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %144 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @N_WORKSPACE, align 8
  %147 = icmp eq i64 %145, %146
  br label %148

148:                                              ; preds = %142, %137
  %149 = phi i1 [ false, %137 ], [ %147, %142 ]
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %25, align 4
  %151 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %152 = icmp ne %struct.sway_container* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %148
  %154 = load i32, i32* %23, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = load %struct.wlr_surface*, %struct.wlr_surface** %13, align 8
  %158 = icmp ne %struct.wlr_surface* %157, null
  %159 = xor i1 %158, true
  br label %160

160:                                              ; preds = %156, %153, %148
  %161 = phi i1 [ false, %153 ], [ false, %148 ], [ %159, %156 ]
  %162 = zext i1 %161 to i32
  store i32 %162, i32* %26, align 4
  %163 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %164 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call %struct.wlr_keyboard* @wlr_seat_get_keyboard(i32 %165)
  store %struct.wlr_keyboard* %166, %struct.wlr_keyboard** %27, align 8
  %167 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %27, align 8
  %168 = icmp ne %struct.wlr_keyboard* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %160
  %170 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %27, align 8
  %171 = call i64 @wlr_keyboard_get_modifiers(%struct.wlr_keyboard* %170)
  br label %173

172:                                              ; preds = %160
  br label %173

173:                                              ; preds = %172, %169
  %174 = phi i64 [ %171, %169 ], [ 0, %172 ]
  store i64 %174, i64* %28, align 8
  %175 = load %struct.wlr_input_device*, %struct.wlr_input_device** %8, align 8
  %176 = icmp ne %struct.wlr_input_device* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load %struct.wlr_input_device*, %struct.wlr_input_device** %8, align 8
  %179 = call i8* @input_device_get_identifier(%struct.wlr_input_device* %178)
  br label %182

180:                                              ; preds = %173
  %181 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %177
  %183 = phi i8* [ %179, %177 ], [ %181, %180 ]
  store i8* %183, i8** %29, align 8
  store %struct.sway_binding* null, %struct.sway_binding** %30, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @WLR_BUTTON_PRESSED, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %204

187:                                              ; preds = %182
  %188 = load %struct.seatop_default_event*, %struct.seatop_default_event** %11, align 8
  %189 = load i64, i64* %9, align 8
  %190 = call i32 @state_add_button(%struct.seatop_default_event* %188, i64 %189)
  %191 = load %struct.seatop_default_event*, %struct.seatop_default_event** %11, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** @config, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i64, i64* %28, align 8
  %198 = load i32, i32* %26, align 4
  %199 = load i32, i32* %23, align 4
  %200 = load i32, i32* %24, align 4
  %201 = load i32, i32* %25, align 4
  %202 = load i8*, i8** %29, align 8
  %203 = call %struct.sway_binding* @get_active_mouse_binding(%struct.seatop_default_event* %191, i32 %196, i64 %197, i32 0, i32 %198, i32 %199, i32 %200, i32 %201, i8* %202)
  store %struct.sway_binding* %203, %struct.sway_binding** %30, align 8
  br label %221

204:                                              ; preds = %182
  %205 = load %struct.seatop_default_event*, %struct.seatop_default_event** %11, align 8
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** @config, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 4
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i64, i64* %28, align 8
  %212 = load i32, i32* %26, align 4
  %213 = load i32, i32* %23, align 4
  %214 = load i32, i32* %24, align 4
  %215 = load i32, i32* %25, align 4
  %216 = load i8*, i8** %29, align 8
  %217 = call %struct.sway_binding* @get_active_mouse_binding(%struct.seatop_default_event* %205, i32 %210, i64 %211, i32 1, i32 %212, i32 %213, i32 %214, i32 %215, i8* %216)
  store %struct.sway_binding* %217, %struct.sway_binding** %30, align 8
  %218 = load %struct.seatop_default_event*, %struct.seatop_default_event** %11, align 8
  %219 = load i64, i64* %9, align 8
  %220 = call i32 @state_erase_button(%struct.seatop_default_event* %218, i64 %219)
  br label %221

221:                                              ; preds = %204, %187
  %222 = load i8*, i8** %29, align 8
  %223 = call i32 @free(i8* %222)
  %224 = load %struct.sway_binding*, %struct.sway_binding** %30, align 8
  %225 = icmp ne %struct.sway_binding* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %228 = load %struct.sway_binding*, %struct.sway_binding** %30, align 8
  %229 = call i32 @seat_execute_command(%struct.sway_seat* %227, %struct.sway_binding* %228)
  br label %703

230:                                              ; preds = %221
  %231 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %232 = icmp ne %struct.sway_node* %231, null
  br i1 %232, label %233, label %243

233:                                              ; preds = %230
  %234 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %235 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @N_WORKSPACE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %241 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %242 = call i32 @seat_set_focus(%struct.sway_seat* %240, %struct.sway_node* %241)
  br label %703

243:                                              ; preds = %233, %230
  %244 = load %struct.wlr_surface*, %struct.wlr_surface** %13, align 8
  %245 = icmp ne %struct.wlr_surface* %244, null
  br i1 %245, label %246, label %268

246:                                              ; preds = %243
  %247 = load %struct.wlr_surface*, %struct.wlr_surface** %13, align 8
  %248 = call i64 @wlr_surface_is_layer_surface(%struct.wlr_surface* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %268

250:                                              ; preds = %246
  %251 = load %struct.wlr_surface*, %struct.wlr_surface** %13, align 8
  %252 = call %struct.wlr_layer_surface_v1* @wlr_layer_surface_v1_from_wlr_surface(%struct.wlr_surface* %251)
  store %struct.wlr_layer_surface_v1* %252, %struct.wlr_layer_surface_v1** %31, align 8
  %253 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %31, align 8
  %254 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %250
  %259 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %260 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %31, align 8
  %261 = call i32 @seat_set_focus_layer(%struct.sway_seat* %259, %struct.wlr_layer_surface_v1* %260)
  br label %262

262:                                              ; preds = %258, %250
  %263 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %264 = load i64, i64* %7, align 8
  %265 = load i64, i64* %9, align 8
  %266 = load i32, i32* %10, align 4
  %267 = call i32 @seat_pointer_notify_button(%struct.sway_seat* %263, i64 %264, i64 %265, i32 %266)
  br label %703

268:                                              ; preds = %246, %243
  %269 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %270 = icmp ne %struct.sway_container* %269, null
  br i1 %270, label %271, label %293

271:                                              ; preds = %268
  %272 = load i32, i32* %22, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %293

274:                                              ; preds = %271
  %275 = load i64, i64* %9, align 8
  %276 = load i64, i64* @BTN_LEFT, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %293

278:                                              ; preds = %274
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* @WLR_BUTTON_PRESSED, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %293

282:                                              ; preds = %278
  %283 = load i32, i32* %18, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %293, label %285

285:                                              ; preds = %282
  %286 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %287 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %288 = call i32 @seat_set_focus_container(%struct.sway_seat* %286, %struct.sway_container* %287)
  %289 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %290 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %291 = load i32, i32* %21, align 4
  %292 = call i32 @seatop_begin_resize_tiling(%struct.sway_seat* %289, %struct.sway_container* %290, i32 %291)
  br label %703

293:                                              ; preds = %282, %278, %274, %271, %268
  %294 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %27, align 8
  %295 = icmp ne %struct.wlr_keyboard* %294, null
  br i1 %295, label %296, label %304

296:                                              ; preds = %293
  %297 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %27, align 8
  %298 = call i64 @wlr_keyboard_get_modifiers(%struct.wlr_keyboard* %297)
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** @config, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = and i64 %298, %301
  %303 = icmp ne i64 %302, 0
  br label %304

304:                                              ; preds = %296, %293
  %305 = phi i1 [ false, %293 ], [ %303, %296 ]
  %306 = zext i1 %305 to i32
  store i32 %306, i32* %32, align 4
  %307 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %308 = icmp ne %struct.sway_container* %307, null
  br i1 %308, label %309, label %424

309:                                              ; preds = %304
  %310 = load i32, i32* %19, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %424, label %312

312:                                              ; preds = %309
  %313 = load i32, i32* %32, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %424

315:                                              ; preds = %312
  %316 = load i32, i32* %10, align 4
  %317 = load i32, i32* @WLR_BUTTON_PRESSED, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %424

319:                                              ; preds = %315
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** @config, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %319
  %325 = load i64, i64* @BTN_LEFT, align 8
  br label %328

326:                                              ; preds = %319
  %327 = load i64, i64* @BTN_RIGHT, align 8
  br label %328

328:                                              ; preds = %326, %324
  %329 = phi i64 [ %325, %324 ], [ %327, %326 ]
  store i64 %329, i64* %33, align 8
  %330 = load i64, i64* %9, align 8
  %331 = load i64, i64* %33, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %423

333:                                              ; preds = %328
  store i32 0, i32* %21, align 4
  %334 = load %struct.sway_cursor*, %struct.sway_cursor** %12, align 8
  %335 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %334, i32 0, i32 0
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %340 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %343 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = sdiv i32 %344, 2
  %346 = sext i32 %345 to i64
  %347 = add nsw i64 %341, %346
  %348 = icmp sgt i64 %338, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %333
  %350 = load i32, i32* @WLR_EDGE_RIGHT, align 4
  br label %353

351:                                              ; preds = %333
  %352 = load i32, i32* @WLR_EDGE_LEFT, align 4
  br label %353

353:                                              ; preds = %351, %349
  %354 = phi i32 [ %350, %349 ], [ %352, %351 ]
  %355 = load i32, i32* %21, align 4
  %356 = or i32 %355, %354
  store i32 %356, i32* %21, align 4
  %357 = load %struct.sway_cursor*, %struct.sway_cursor** %12, align 8
  %358 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %357, i32 0, i32 0
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %363 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %366 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 8
  %368 = sdiv i32 %367, 2
  %369 = sext i32 %368 to i64
  %370 = add nsw i64 %364, %369
  %371 = icmp sgt i64 %361, %370
  br i1 %371, label %372, label %374

372:                                              ; preds = %353
  %373 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  br label %376

374:                                              ; preds = %353
  %375 = load i32, i32* @WLR_EDGE_TOP, align 4
  br label %376

376:                                              ; preds = %374, %372
  %377 = phi i32 [ %373, %372 ], [ %375, %374 ]
  %378 = load i32, i32* %21, align 4
  %379 = or i32 %378, %377
  store i32 %379, i32* %21, align 4
  store i8* null, i8** %34, align 8
  %380 = load i32, i32* %21, align 4
  %381 = load i32, i32* @WLR_EDGE_LEFT, align 4
  %382 = load i32, i32* @WLR_EDGE_TOP, align 4
  %383 = or i32 %381, %382
  %384 = icmp eq i32 %380, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %376
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  br label %410

386:                                              ; preds = %376
  %387 = load i32, i32* %21, align 4
  %388 = load i32, i32* @WLR_EDGE_TOP, align 4
  %389 = load i32, i32* @WLR_EDGE_RIGHT, align 4
  %390 = or i32 %388, %389
  %391 = icmp eq i32 %387, %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %386
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 8
  br label %409

393:                                              ; preds = %386
  %394 = load i32, i32* %21, align 4
  %395 = load i32, i32* @WLR_EDGE_RIGHT, align 4
  %396 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  %397 = or i32 %395, %396
  %398 = icmp eq i32 %394, %397
  br i1 %398, label %399, label %400

399:                                              ; preds = %393
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %34, align 8
  br label %408

400:                                              ; preds = %393
  %401 = load i32, i32* %21, align 4
  %402 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  %403 = load i32, i32* @WLR_EDGE_LEFT, align 4
  %404 = or i32 %402, %403
  %405 = icmp eq i32 %401, %404
  br i1 %405, label %406, label %407

406:                                              ; preds = %400
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %34, align 8
  br label %407

407:                                              ; preds = %406, %400
  br label %408

408:                                              ; preds = %407, %399
  br label %409

409:                                              ; preds = %408, %392
  br label %410

410:                                              ; preds = %409, %385
  %411 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %412 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %411, i32 0, i32 1
  %413 = load %struct.sway_cursor*, %struct.sway_cursor** %412, align 8
  %414 = load i8*, i8** %34, align 8
  %415 = call i32 @cursor_set_image(%struct.sway_cursor* %413, i8* %414, i32* null)
  %416 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %417 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %418 = call i32 @seat_set_focus_container(%struct.sway_seat* %416, %struct.sway_container* %417)
  %419 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %420 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %421 = load i32, i32* %21, align 4
  %422 = call i32 @seatop_begin_resize_tiling(%struct.sway_seat* %419, %struct.sway_container* %420, i32 %421)
  br label %703

423:                                              ; preds = %328
  br label %424

424:                                              ; preds = %423, %315, %312, %309, %304
  %425 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %426 = icmp ne %struct.sway_container* %425, null
  br i1 %426, label %427, label %475

427:                                              ; preds = %424
  %428 = load i32, i32* %19, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %475

430:                                              ; preds = %427
  %431 = load i32, i32* %20, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %475, label %433

433:                                              ; preds = %430
  %434 = load i32, i32* %10, align 4
  %435 = load i32, i32* @WLR_BUTTON_PRESSED, align 4
  %436 = icmp eq i32 %434, %435
  br i1 %436, label %437, label %475

437:                                              ; preds = %433
  %438 = load %struct.TYPE_12__*, %struct.TYPE_12__** @config, align 8
  %439 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %438, i32 0, i32 3
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %444

442:                                              ; preds = %437
  %443 = load i64, i64* @BTN_RIGHT, align 8
  br label %446

444:                                              ; preds = %437
  %445 = load i64, i64* @BTN_LEFT, align 8
  br label %446

446:                                              ; preds = %444, %442
  %447 = phi i64 [ %443, %442 ], [ %445, %444 ]
  store i64 %447, i64* %35, align 8
  %448 = load i64, i64* %9, align 8
  %449 = load i64, i64* %35, align 8
  %450 = icmp eq i64 %448, %449
  br i1 %450, label %451, label %474

451:                                              ; preds = %446
  %452 = load i32, i32* %32, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %457, label %454

454:                                              ; preds = %451
  %455 = load i32, i32* %26, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %474

457:                                              ; preds = %454, %451
  br label %458

458:                                              ; preds = %463, %457
  %459 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %460 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %459, i32 0, i32 6
  %461 = load %struct.sway_container*, %struct.sway_container** %460, align 8
  %462 = icmp ne %struct.sway_container* %461, null
  br i1 %462, label %463, label %467

463:                                              ; preds = %458
  %464 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %465 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %464, i32 0, i32 6
  %466 = load %struct.sway_container*, %struct.sway_container** %465, align 8
  store %struct.sway_container* %466, %struct.sway_container** %17, align 8
  br label %458

467:                                              ; preds = %458
  %468 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %469 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %470 = call i32 @seat_set_focus_container(%struct.sway_seat* %468, %struct.sway_container* %469)
  %471 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %472 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %473 = call i32 @seatop_begin_move_floating(%struct.sway_seat* %471, %struct.sway_container* %472)
  br label %703

474:                                              ; preds = %454, %446
  br label %475

475:                                              ; preds = %474, %433, %430, %427, %424
  %476 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %477 = icmp ne %struct.sway_container* %476, null
  br i1 %477, label %478, label %581

478:                                              ; preds = %475
  %479 = load i32, i32* %19, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %581

481:                                              ; preds = %478
  %482 = load i32, i32* %20, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %581, label %484

484:                                              ; preds = %481
  %485 = load i32, i32* %10, align 4
  %486 = load i32, i32* @WLR_BUTTON_PRESSED, align 4
  %487 = icmp eq i32 %485, %486
  br i1 %487, label %488, label %581

488:                                              ; preds = %484
  %489 = load i64, i64* %9, align 8
  %490 = load i64, i64* @BTN_LEFT, align 8
  %491 = icmp eq i64 %489, %490
  br i1 %491, label %492, label %501

492:                                              ; preds = %488
  %493 = load i32, i32* %22, align 4
  %494 = load i32, i32* @WLR_EDGE_NONE, align 4
  %495 = icmp ne i32 %493, %494
  br i1 %495, label %496, label %501

496:                                              ; preds = %492
  %497 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %498 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %499 = load i32, i32* %22, align 4
  %500 = call i32 @seatop_begin_resize_floating(%struct.sway_seat* %497, %struct.sway_container* %498, i32 %499)
  br label %703

501:                                              ; preds = %492, %488
  %502 = load %struct.TYPE_12__*, %struct.TYPE_12__** @config, align 8
  %503 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %502, i32 0, i32 3
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %508

506:                                              ; preds = %501
  %507 = load i64, i64* @BTN_LEFT, align 8
  br label %510

508:                                              ; preds = %501
  %509 = load i64, i64* @BTN_RIGHT, align 8
  br label %510

510:                                              ; preds = %508, %506
  %511 = phi i64 [ %507, %506 ], [ %509, %508 ]
  store i64 %511, i64* %36, align 8
  %512 = load i32, i32* %32, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %580

514:                                              ; preds = %510
  %515 = load i64, i64* %9, align 8
  %516 = load i64, i64* %36, align 8
  %517 = icmp eq i64 %515, %516
  br i1 %517, label %518, label %580

518:                                              ; preds = %514
  %519 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  store %struct.sway_container* %519, %struct.sway_container** %37, align 8
  br label %520

520:                                              ; preds = %525, %518
  %521 = load %struct.sway_container*, %struct.sway_container** %37, align 8
  %522 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %521, i32 0, i32 6
  %523 = load %struct.sway_container*, %struct.sway_container** %522, align 8
  %524 = icmp ne %struct.sway_container* %523, null
  br i1 %524, label %525, label %529

525:                                              ; preds = %520
  %526 = load %struct.sway_container*, %struct.sway_container** %37, align 8
  %527 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %526, i32 0, i32 6
  %528 = load %struct.sway_container*, %struct.sway_container** %527, align 8
  store %struct.sway_container* %528, %struct.sway_container** %37, align 8
  br label %520

529:                                              ; preds = %520
  store i32 0, i32* %21, align 4
  %530 = load %struct.sway_cursor*, %struct.sway_cursor** %12, align 8
  %531 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %530, i32 0, i32 0
  %532 = load %struct.TYPE_10__*, %struct.TYPE_10__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = load %struct.sway_container*, %struct.sway_container** %37, align 8
  %536 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %535, i32 0, i32 0
  %537 = load i64, i64* %536, align 8
  %538 = load %struct.sway_container*, %struct.sway_container** %37, align 8
  %539 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %538, i32 0, i32 1
  %540 = load i32, i32* %539, align 8
  %541 = sdiv i32 %540, 2
  %542 = sext i32 %541 to i64
  %543 = add nsw i64 %537, %542
  %544 = icmp sgt i64 %534, %543
  br i1 %544, label %545, label %547

545:                                              ; preds = %529
  %546 = load i32, i32* @WLR_EDGE_RIGHT, align 4
  br label %549

547:                                              ; preds = %529
  %548 = load i32, i32* @WLR_EDGE_LEFT, align 4
  br label %549

549:                                              ; preds = %547, %545
  %550 = phi i32 [ %546, %545 ], [ %548, %547 ]
  %551 = load i32, i32* %21, align 4
  %552 = or i32 %551, %550
  store i32 %552, i32* %21, align 4
  %553 = load %struct.sway_cursor*, %struct.sway_cursor** %12, align 8
  %554 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %553, i32 0, i32 0
  %555 = load %struct.TYPE_10__*, %struct.TYPE_10__** %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %555, i32 0, i32 1
  %557 = load i64, i64* %556, align 8
  %558 = load %struct.sway_container*, %struct.sway_container** %37, align 8
  %559 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %558, i32 0, i32 2
  %560 = load i64, i64* %559, align 8
  %561 = load %struct.sway_container*, %struct.sway_container** %37, align 8
  %562 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %561, i32 0, i32 3
  %563 = load i32, i32* %562, align 8
  %564 = sdiv i32 %563, 2
  %565 = sext i32 %564 to i64
  %566 = add nsw i64 %560, %565
  %567 = icmp sgt i64 %557, %566
  br i1 %567, label %568, label %570

568:                                              ; preds = %549
  %569 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  br label %572

570:                                              ; preds = %549
  %571 = load i32, i32* @WLR_EDGE_TOP, align 4
  br label %572

572:                                              ; preds = %570, %568
  %573 = phi i32 [ %569, %568 ], [ %571, %570 ]
  %574 = load i32, i32* %21, align 4
  %575 = or i32 %574, %573
  store i32 %575, i32* %21, align 4
  %576 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %577 = load %struct.sway_container*, %struct.sway_container** %37, align 8
  %578 = load i32, i32* %21, align 4
  %579 = call i32 @seatop_begin_resize_floating(%struct.sway_seat* %576, %struct.sway_container* %577, i32 %578)
  br label %703

580:                                              ; preds = %514, %510
  br label %581

581:                                              ; preds = %580, %484, %481, %478, %475
  %582 = load %struct.TYPE_12__*, %struct.TYPE_12__** @config, align 8
  %583 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %582, i32 0, i32 2
  %584 = load i64, i64* %583, align 8
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %652

586:                                              ; preds = %581
  %587 = load i32, i32* %32, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %592, label %589

589:                                              ; preds = %586
  %590 = load i32, i32* %26, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %652

592:                                              ; preds = %589, %586
  %593 = load i32, i32* %10, align 4
  %594 = load i32, i32* @WLR_BUTTON_PRESSED, align 4
  %595 = icmp eq i32 %593, %594
  br i1 %595, label %596, label %652

596:                                              ; preds = %592
  %597 = load i32, i32* %19, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %652, label %599

599:                                              ; preds = %596
  %600 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %601 = icmp ne %struct.sway_container* %600, null
  br i1 %601, label %602, label %652

602:                                              ; preds = %599
  %603 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %604 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %603, i32 0, i32 4
  %605 = load i64, i64* %604, align 8
  %606 = load i64, i64* @FULLSCREEN_NONE, align 8
  %607 = icmp eq i64 %605, %606
  br i1 %607, label %608, label %652

608:                                              ; preds = %602
  %609 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %610 = call %struct.sway_container* @seat_get_focused_container(%struct.sway_seat* %609)
  store %struct.sway_container* %610, %struct.sway_container** %38, align 8
  %611 = load %struct.sway_container*, %struct.sway_container** %38, align 8
  %612 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %613 = icmp eq %struct.sway_container* %611, %612
  br i1 %613, label %619, label %614

614:                                              ; preds = %608
  %615 = load %struct.sway_container*, %struct.sway_container** %38, align 8
  %616 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %617 = call i64 @container_has_ancestor(%struct.sway_container* %615, %struct.sway_container* %616)
  %618 = icmp ne i64 %617, 0
  br label %619

619:                                              ; preds = %614, %608
  %620 = phi i1 [ true, %608 ], [ %618, %614 ]
  %621 = zext i1 %620 to i32
  store i32 %621, i32* %39, align 4
  %622 = load i32, i32* %26, align 4
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %635

624:                                              ; preds = %619
  %625 = load i32, i32* %39, align 4
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %635, label %627

627:                                              ; preds = %624
  %628 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %629 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %630 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %629, i32 0, i32 5
  %631 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %628, i32* %630)
  store %struct.sway_node* %631, %struct.sway_node** %16, align 8
  %632 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %633 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %634 = call i32 @seat_set_focus(%struct.sway_seat* %632, %struct.sway_node* %633)
  br label %635

635:                                              ; preds = %627, %624, %619
  %636 = load i32, i32* %32, align 4
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %647, label %638

638:                                              ; preds = %635
  %639 = load %struct.TYPE_12__*, %struct.TYPE_12__** @config, align 8
  %640 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %639, i32 0, i32 1
  %641 = load i64, i64* %640, align 8
  %642 = icmp sgt i64 %641, 0
  br i1 %642, label %643, label %647

643:                                              ; preds = %638
  %644 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %645 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %646 = call i32 @seatop_begin_move_tiling_threshold(%struct.sway_seat* %644, %struct.sway_container* %645)
  br label %651

647:                                              ; preds = %638, %635
  %648 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %649 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %650 = call i32 @seatop_begin_move_tiling(%struct.sway_seat* %648, %struct.sway_container* %649)
  br label %651

651:                                              ; preds = %647, %643
  br label %703

652:                                              ; preds = %602, %599, %596, %592, %589, %581
  %653 = load %struct.wlr_surface*, %struct.wlr_surface** %13, align 8
  %654 = icmp ne %struct.wlr_surface* %653, null
  br i1 %654, label %655, label %677

655:                                              ; preds = %652
  %656 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %657 = icmp ne %struct.sway_container* %656, null
  br i1 %657, label %658, label %677

658:                                              ; preds = %655
  %659 = load i32, i32* %10, align 4
  %660 = load i32, i32* @WLR_BUTTON_PRESSED, align 4
  %661 = icmp eq i32 %659, %660
  br i1 %661, label %662, label %677

662:                                              ; preds = %658
  %663 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %664 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %665 = call i32 @seat_set_focus_container(%struct.sway_seat* %663, %struct.sway_container* %664)
  %666 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %667 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %668 = load i64, i64* %7, align 8
  %669 = load double, double* %14, align 8
  %670 = load double, double* %15, align 8
  %671 = call i32 @seatop_begin_down(%struct.sway_seat* %666, %struct.sway_container* %667, i64 %668, double %669, double %670)
  %672 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %673 = load i64, i64* %7, align 8
  %674 = load i64, i64* %9, align 8
  %675 = load i32, i32* @WLR_BUTTON_PRESSED, align 4
  %676 = call i32 @seat_pointer_notify_button(%struct.sway_seat* %672, i64 %673, i64 %674, i32 %675)
  br label %703

677:                                              ; preds = %658, %655, %652
  %678 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %679 = icmp ne %struct.sway_container* %678, null
  br i1 %679, label %680, label %697

680:                                              ; preds = %677
  %681 = load i32, i32* %10, align 4
  %682 = load i32, i32* @WLR_BUTTON_PRESSED, align 4
  %683 = icmp eq i32 %681, %682
  br i1 %683, label %684, label %697

684:                                              ; preds = %680
  %685 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %686 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %687 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %686, i32 0, i32 5
  %688 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %685, i32* %687)
  store %struct.sway_node* %688, %struct.sway_node** %16, align 8
  %689 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %690 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %691 = call i32 @seat_set_focus(%struct.sway_seat* %689, %struct.sway_node* %690)
  %692 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %693 = load i64, i64* %7, align 8
  %694 = load i64, i64* %9, align 8
  %695 = load i32, i32* %10, align 4
  %696 = call i32 @seat_pointer_notify_button(%struct.sway_seat* %692, i64 %693, i64 %694, i32 %695)
  br label %703

697:                                              ; preds = %680, %677
  %698 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %699 = load i64, i64* %7, align 8
  %700 = load i64, i64* %9, align 8
  %701 = load i32, i32* %10, align 4
  %702 = call i32 @seat_pointer_notify_button(%struct.sway_seat* %698, i64 %699, i64 %700, i32 %701)
  br label %703

703:                                              ; preds = %697, %684, %662, %651, %572, %496, %467, %410, %285, %262, %239, %226
  ret void
}

declare dso_local %struct.sway_node* @node_at_coords(%struct.sway_seat*, i64, i64, %struct.wlr_surface**, double*, double*) #1

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local i64 @container_is_floating_or_child(%struct.sway_container*) #1

declare dso_local i64 @container_is_fullscreen_or_child(%struct.sway_container*) #1

declare dso_local i32 @find_edge(%struct.sway_container*, %struct.wlr_surface*, %struct.sway_cursor*) #1

declare dso_local i32 @find_resize_edge(%struct.sway_container*, %struct.wlr_surface*, %struct.sway_cursor*) #1

declare dso_local %struct.wlr_keyboard* @wlr_seat_get_keyboard(i32) #1

declare dso_local i64 @wlr_keyboard_get_modifiers(%struct.wlr_keyboard*) #1

declare dso_local i8* @input_device_get_identifier(%struct.wlr_input_device*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @state_add_button(%struct.seatop_default_event*, i64) #1

declare dso_local %struct.sway_binding* @get_active_mouse_binding(%struct.seatop_default_event*, i32, i64, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @state_erase_button(%struct.seatop_default_event*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @seat_execute_command(%struct.sway_seat*, %struct.sway_binding*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i64 @wlr_surface_is_layer_surface(%struct.wlr_surface*) #1

declare dso_local %struct.wlr_layer_surface_v1* @wlr_layer_surface_v1_from_wlr_surface(%struct.wlr_surface*) #1

declare dso_local i32 @seat_set_focus_layer(%struct.sway_seat*, %struct.wlr_layer_surface_v1*) #1

declare dso_local i32 @seat_pointer_notify_button(%struct.sway_seat*, i64, i64, i32) #1

declare dso_local i32 @seat_set_focus_container(%struct.sway_seat*, %struct.sway_container*) #1

declare dso_local i32 @seatop_begin_resize_tiling(%struct.sway_seat*, %struct.sway_container*, i32) #1

declare dso_local i32 @cursor_set_image(%struct.sway_cursor*, i8*, i32*) #1

declare dso_local i32 @seatop_begin_move_floating(%struct.sway_seat*, %struct.sway_container*) #1

declare dso_local i32 @seatop_begin_resize_floating(%struct.sway_seat*, %struct.sway_container*, i32) #1

declare dso_local %struct.sway_container* @seat_get_focused_container(%struct.sway_seat*) #1

declare dso_local i64 @container_has_ancestor(%struct.sway_container*, %struct.sway_container*) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

declare dso_local i32 @seatop_begin_move_tiling_threshold(%struct.sway_seat*, %struct.sway_container*) #1

declare dso_local i32 @seatop_begin_move_tiling(%struct.sway_seat*, %struct.sway_container*) #1

declare dso_local i32 @seatop_begin_down(%struct.sway_seat*, %struct.sway_container*, i64, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

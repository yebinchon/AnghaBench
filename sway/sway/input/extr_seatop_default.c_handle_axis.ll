; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_handle_axis.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_handle_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.sway_seat = type { i32, %struct.seatop_default_event*, %struct.sway_cursor* }
%struct.seatop_default_event = type { i32 }
%struct.sway_cursor = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.wlr_event_pointer_axis = type { float, float, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.sway_input_device* }
%struct.sway_input_device = type { %struct.wlr_input_device* }
%struct.wlr_input_device = type { i32 }
%struct.input_config = type { float }
%struct.wlr_surface = type { i32 }
%struct.sway_node = type { i64, %struct.sway_container* }
%struct.sway_container = type { i64, %struct.sway_node }
%struct.wlr_keyboard = type { i32 }
%struct.sway_binding = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.sway_container** }

@N_CONTAINER = common dso_local global i64 0, align 8
@WLR_EDGE_NONE = common dso_local global i32 0, align 4
@N_WORKSPACE = common dso_local global i64 0, align 8
@FLT_MIN = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@config = common dso_local global %struct.TYPE_14__* null, align 8
@L_TABBED = common dso_local global i32 0, align 4
@L_STACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, %struct.wlr_event_pointer_axis*)* @handle_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_axis(%struct.sway_seat* %0, %struct.wlr_event_pointer_axis* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.wlr_event_pointer_axis*, align 8
  %5 = alloca %struct.sway_input_device*, align 8
  %6 = alloca %struct.input_config*, align 8
  %7 = alloca %struct.sway_cursor*, align 8
  %8 = alloca %struct.seatop_default_event*, align 8
  %9 = alloca %struct.wlr_surface*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.sway_node*, align 8
  %13 = alloca %struct.sway_container*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.wlr_keyboard*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.wlr_input_device*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.sway_binding*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.sway_node*, align 8
  %30 = alloca %struct.sway_node*, align 8
  %31 = alloca %struct.TYPE_13__*, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.sway_node*, align 8
  %34 = alloca %struct.sway_container*, align 8
  %35 = alloca %struct.sway_node*, align 8
  %36 = alloca %struct.sway_node*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.wlr_event_pointer_axis* %1, %struct.wlr_event_pointer_axis** %4, align 8
  %37 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %38 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %37, i32 0, i32 5
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %43 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %42, i32 0, i32 5
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.sway_input_device*, %struct.sway_input_device** %45, align 8
  br label %48

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %47, %41
  %49 = phi %struct.sway_input_device* [ %46, %41 ], [ null, %47 ]
  store %struct.sway_input_device* %49, %struct.sway_input_device** %5, align 8
  %50 = load %struct.sway_input_device*, %struct.sway_input_device** %5, align 8
  %51 = icmp ne %struct.sway_input_device* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.sway_input_device*, %struct.sway_input_device** %5, align 8
  %54 = call %struct.input_config* @input_device_get_config(%struct.sway_input_device* %53)
  br label %56

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi %struct.input_config* [ %54, %52 ], [ null, %55 ]
  store %struct.input_config* %57, %struct.input_config** %6, align 8
  %58 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %59 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %58, i32 0, i32 2
  %60 = load %struct.sway_cursor*, %struct.sway_cursor** %59, align 8
  store %struct.sway_cursor* %60, %struct.sway_cursor** %7, align 8
  %61 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %62 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %61, i32 0, i32 1
  %63 = load %struct.seatop_default_event*, %struct.seatop_default_event** %62, align 8
  store %struct.seatop_default_event* %63, %struct.seatop_default_event** %8, align 8
  store %struct.wlr_surface* null, %struct.wlr_surface** %9, align 8
  %64 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %65 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %66 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %71 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.sway_node* @node_at_coords(%struct.sway_seat* %64, i32 %69, i64 %74, %struct.wlr_surface** %9, double* %10, double* %11)
  store %struct.sway_node* %75, %struct.sway_node** %12, align 8
  %76 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %77 = icmp ne %struct.sway_node* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %56
  %79 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %80 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @N_CONTAINER, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %86 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %85, i32 0, i32 1
  %87 = load %struct.sway_container*, %struct.sway_container** %86, align 8
  br label %89

88:                                               ; preds = %78, %56
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi %struct.sway_container* [ %87, %84 ], [ null, %88 ]
  store %struct.sway_container* %90, %struct.sway_container** %13, align 8
  %91 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %92 = icmp ne %struct.sway_container* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %95 = load %struct.wlr_surface*, %struct.wlr_surface** %9, align 8
  %96 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %97 = call i32 @find_edge(%struct.sway_container* %94, %struct.wlr_surface* %95, %struct.sway_cursor* %96)
  br label %100

98:                                               ; preds = %89
  %99 = load i32, i32* @WLR_EDGE_NONE, align 4
  br label %100

100:                                              ; preds = %98, %93
  %101 = phi i32 [ %97, %93 ], [ %99, %98 ]
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @WLR_EDGE_NONE, align 4
  %104 = icmp ne i32 %102, %103
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %15, align 4
  %106 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %107 = icmp ne %struct.sway_container* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load %struct.wlr_surface*, %struct.wlr_surface** %9, align 8
  %113 = icmp ne %struct.wlr_surface* %112, null
  %114 = xor i1 %113, true
  br label %115

115:                                              ; preds = %111, %108, %100
  %116 = phi i1 [ false, %108 ], [ false, %100 ], [ %114, %111 ]
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %16, align 4
  %118 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %119 = icmp ne %struct.sway_container* %118, null
  br i1 %119, label %120, label %133

120:                                              ; preds = %115
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %125 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %130 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %128, %131
  br label %133

133:                                              ; preds = %123, %120, %115
  %134 = phi i1 [ false, %120 ], [ false, %115 ], [ %132, %123 ]
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %17, align 4
  %136 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %137 = icmp ne %struct.sway_container* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load %struct.wlr_surface*, %struct.wlr_surface** %9, align 8
  %143 = icmp ne %struct.wlr_surface* %142, null
  br label %144

144:                                              ; preds = %141, %138, %133
  %145 = phi i1 [ false, %138 ], [ false, %133 ], [ %143, %141 ]
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %18, align 4
  %147 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %148 = icmp ne %struct.sway_node* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %151 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @N_WORKSPACE, align 8
  %154 = icmp eq i64 %152, %153
  br label %155

155:                                              ; preds = %149, %144
  %156 = phi i1 [ false, %144 ], [ %154, %149 ]
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %19, align 4
  %158 = load %struct.input_config*, %struct.input_config** %6, align 8
  %159 = icmp eq %struct.input_config* %158, null
  br i1 %159, label %166, label %160

160:                                              ; preds = %155
  %161 = load %struct.input_config*, %struct.input_config** %6, align 8
  %162 = getelementptr inbounds %struct.input_config, %struct.input_config* %161, i32 0, i32 0
  %163 = load float, float* %162, align 4
  %164 = load float, float* @FLT_MIN, align 4
  %165 = fcmp oeq float %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %160, %155
  br label %171

167:                                              ; preds = %160
  %168 = load %struct.input_config*, %struct.input_config** %6, align 8
  %169 = getelementptr inbounds %struct.input_config, %struct.input_config* %168, i32 0, i32 0
  %170 = load float, float* %169, align 4
  br label %171

171:                                              ; preds = %167, %166
  %172 = phi float [ 1.000000e+00, %166 ], [ %170, %167 ]
  store float %172, float* %20, align 4
  store i32 0, i32* %21, align 4
  %173 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %174 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call %struct.wlr_keyboard* @wlr_seat_get_keyboard(i32 %175)
  store %struct.wlr_keyboard* %176, %struct.wlr_keyboard** %22, align 8
  %177 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %22, align 8
  %178 = icmp ne %struct.wlr_keyboard* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %22, align 8
  %181 = call i32 @wlr_keyboard_get_modifiers(%struct.wlr_keyboard* %180)
  br label %183

182:                                              ; preds = %171
  br label %183

183:                                              ; preds = %182, %179
  %184 = phi i32 [ %181, %179 ], [ 0, %182 ]
  store i32 %184, i32* %23, align 4
  %185 = load %struct.sway_input_device*, %struct.sway_input_device** %5, align 8
  %186 = icmp ne %struct.sway_input_device* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load %struct.sway_input_device*, %struct.sway_input_device** %5, align 8
  %189 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %188, i32 0, i32 0
  %190 = load %struct.wlr_input_device*, %struct.wlr_input_device** %189, align 8
  br label %192

191:                                              ; preds = %183
  br label %192

192:                                              ; preds = %191, %187
  %193 = phi %struct.wlr_input_device* [ %190, %187 ], [ null, %191 ]
  store %struct.wlr_input_device* %193, %struct.wlr_input_device** %24, align 8
  %194 = load %struct.wlr_input_device*, %struct.wlr_input_device** %24, align 8
  %195 = icmp ne %struct.wlr_input_device* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load %struct.wlr_input_device*, %struct.wlr_input_device** %24, align 8
  %198 = call i8* @input_device_get_identifier(%struct.wlr_input_device* %197)
  br label %201

199:                                              ; preds = %192
  %200 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %196
  %202 = phi i8* [ %198, %196 ], [ %200, %199 ]
  store i8* %202, i8** %25, align 8
  %203 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %204 = call i32 @wl_axis_to_button(%struct.wlr_event_pointer_axis* %203)
  store i32 %204, i32* %26, align 4
  store %struct.sway_binding* null, %struct.sway_binding** %27, align 8
  %205 = load %struct.seatop_default_event*, %struct.seatop_default_event** %8, align 8
  %206 = load i32, i32* %26, align 4
  %207 = call i32 @state_add_button(%struct.seatop_default_event* %205, i32 %206)
  %208 = load %struct.seatop_default_event*, %struct.seatop_default_event** %8, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** @config, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %23, align 4
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* %19, align 4
  %219 = load i8*, i8** %25, align 8
  %220 = call %struct.sway_binding* @get_active_mouse_binding(%struct.seatop_default_event* %208, i32 %213, i32 %214, i32 0, i32 %215, i32 %216, i32 %217, i32 %218, i8* %219)
  store %struct.sway_binding* %220, %struct.sway_binding** %27, align 8
  %221 = load %struct.sway_binding*, %struct.sway_binding** %27, align 8
  %222 = icmp ne %struct.sway_binding* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %201
  %224 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %225 = load %struct.sway_binding*, %struct.sway_binding** %27, align 8
  %226 = call i32 @seat_execute_command(%struct.sway_seat* %224, %struct.sway_binding* %225)
  store i32 1, i32* %21, align 4
  br label %227

227:                                              ; preds = %223, %201
  %228 = load i32, i32* %21, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %316, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %16, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %17, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %316

236:                                              ; preds = %233, %230
  %237 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %238 = call i32 @container_parent_layout(%struct.sway_container* %237)
  store i32 %238, i32* %28, align 4
  %239 = load i32, i32* %28, align 4
  %240 = load i32, i32* @L_TABBED, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %246, label %242

242:                                              ; preds = %236
  %243 = load i32, i32* %28, align 4
  %244 = load i32, i32* @L_STACKED, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %315

246:                                              ; preds = %242, %236
  %247 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %248 = call %struct.sway_node* @node_get_parent(%struct.sway_node* %247)
  store %struct.sway_node* %248, %struct.sway_node** %29, align 8
  %249 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %250 = load %struct.sway_node*, %struct.sway_node** %29, align 8
  %251 = call %struct.sway_node* @seat_get_active_tiling_child(%struct.sway_seat* %249, %struct.sway_node* %250)
  store %struct.sway_node* %251, %struct.sway_node** %30, align 8
  %252 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %253 = call %struct.TYPE_13__* @container_get_siblings(%struct.sway_container* %252)
  store %struct.TYPE_13__* %253, %struct.TYPE_13__** %31, align 8
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %255 = load %struct.sway_node*, %struct.sway_node** %30, align 8
  %256 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %255, i32 0, i32 1
  %257 = load %struct.sway_container*, %struct.sway_container** %256, align 8
  %258 = call i32 @list_find(%struct.TYPE_13__* %254, %struct.sway_container* %257)
  %259 = load float, float* %20, align 4
  %260 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %261 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %260, i32 0, i32 0
  %262 = load float, float* %261, align 8
  %263 = fmul float %259, %262
  %264 = call i32 @round(float %263)
  %265 = add nsw i32 %258, %264
  store i32 %265, i32* %32, align 4
  %266 = load i32, i32* %32, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %246
  store i32 0, i32* %32, align 4
  br label %281

269:                                              ; preds = %246
  %270 = load i32, i32* %32, align 4
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp sge i32 %270, %273
  br i1 %274, label %275, label %280

275:                                              ; preds = %269
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = sub nsw i32 %278, 1
  store i32 %279, i32* %32, align 4
  br label %280

280:                                              ; preds = %275, %269
  br label %281

281:                                              ; preds = %280, %268
  %282 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %283 = call %struct.sway_node* @seat_get_focus(%struct.sway_seat* %282)
  store %struct.sway_node* %283, %struct.sway_node** %33, align 8
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 1
  %286 = load %struct.sway_container**, %struct.sway_container*** %285, align 8
  %287 = load i32, i32* %32, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %286, i64 %288
  %290 = load %struct.sway_container*, %struct.sway_container** %289, align 8
  store %struct.sway_container* %290, %struct.sway_container** %34, align 8
  %291 = load %struct.sway_container*, %struct.sway_container** %34, align 8
  %292 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %291, i32 0, i32 1
  store %struct.sway_node* %292, %struct.sway_node** %35, align 8
  %293 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %294 = load %struct.sway_node*, %struct.sway_node** %35, align 8
  %295 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %293, %struct.sway_node* %294)
  store %struct.sway_node* %295, %struct.sway_node** %36, align 8
  %296 = load %struct.sway_node*, %struct.sway_node** %33, align 8
  %297 = load %struct.sway_node*, %struct.sway_node** %29, align 8
  %298 = call i64 @node_has_ancestor(%struct.sway_node* %296, %struct.sway_node* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %281
  %301 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %302 = load %struct.sway_node*, %struct.sway_node** %36, align 8
  %303 = call i32 @seat_set_focus(%struct.sway_seat* %301, %struct.sway_node* %302)
  br label %314

304:                                              ; preds = %281
  %305 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %306 = load %struct.sway_node*, %struct.sway_node** %35, align 8
  %307 = call i32 @seat_set_raw_focus(%struct.sway_seat* %305, %struct.sway_node* %306)
  %308 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %309 = load %struct.sway_node*, %struct.sway_node** %36, align 8
  %310 = call i32 @seat_set_raw_focus(%struct.sway_seat* %308, %struct.sway_node* %309)
  %311 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %312 = load %struct.sway_node*, %struct.sway_node** %33, align 8
  %313 = call i32 @seat_set_raw_focus(%struct.sway_seat* %311, %struct.sway_node* %312)
  br label %314

314:                                              ; preds = %304, %300
  store i32 1, i32* %21, align 4
  br label %315

315:                                              ; preds = %314, %242
  br label %316

316:                                              ; preds = %315, %233, %227
  %317 = load %struct.seatop_default_event*, %struct.seatop_default_event** %8, align 8
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** @config, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %23, align 4
  %324 = load i32, i32* %16, align 4
  %325 = load i32, i32* %15, align 4
  %326 = load i32, i32* %18, align 4
  %327 = load i32, i32* %19, align 4
  %328 = load i8*, i8** %25, align 8
  %329 = call %struct.sway_binding* @get_active_mouse_binding(%struct.seatop_default_event* %317, i32 %322, i32 %323, i32 1, i32 %324, i32 %325, i32 %326, i32 %327, i8* %328)
  store %struct.sway_binding* %329, %struct.sway_binding** %27, align 8
  %330 = load %struct.seatop_default_event*, %struct.seatop_default_event** %8, align 8
  %331 = load i32, i32* %26, align 4
  %332 = call i32 @state_erase_button(%struct.seatop_default_event* %330, i32 %331)
  %333 = load %struct.sway_binding*, %struct.sway_binding** %27, align 8
  %334 = icmp ne %struct.sway_binding* %333, null
  br i1 %334, label %335, label %339

335:                                              ; preds = %316
  %336 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %337 = load %struct.sway_binding*, %struct.sway_binding** %27, align 8
  %338 = call i32 @seat_execute_command(%struct.sway_seat* %336, %struct.sway_binding* %337)
  store i32 1, i32* %21, align 4
  br label %339

339:                                              ; preds = %335, %316
  %340 = load i8*, i8** %25, align 8
  %341 = call i32 @free(i8* %340)
  %342 = load i32, i32* %21, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %371, label %344

344:                                              ; preds = %339
  %345 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %346 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %345, i32 0, i32 0
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %351 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %354 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = load float, float* %20, align 4
  %357 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %358 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %357, i32 0, i32 1
  %359 = load float, float* %358, align 4
  %360 = fmul float %356, %359
  %361 = load float, float* %20, align 4
  %362 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %363 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %362, i32 0, i32 0
  %364 = load float, float* %363, align 8
  %365 = fmul float %361, %364
  %366 = call i32 @round(float %365)
  %367 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %368 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @wlr_seat_pointer_notify_axis(i32 %349, i32 %352, i32 %355, float %360, i32 %366, i32 %369)
  br label %371

371:                                              ; preds = %344, %339
  ret void
}

declare dso_local %struct.input_config* @input_device_get_config(%struct.sway_input_device*) #1

declare dso_local %struct.sway_node* @node_at_coords(%struct.sway_seat*, i32, i64, %struct.wlr_surface**, double*, double*) #1

declare dso_local i32 @find_edge(%struct.sway_container*, %struct.wlr_surface*, %struct.sway_cursor*) #1

declare dso_local %struct.wlr_keyboard* @wlr_seat_get_keyboard(i32) #1

declare dso_local i32 @wlr_keyboard_get_modifiers(%struct.wlr_keyboard*) #1

declare dso_local i8* @input_device_get_identifier(%struct.wlr_input_device*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @wl_axis_to_button(%struct.wlr_event_pointer_axis*) #1

declare dso_local i32 @state_add_button(%struct.seatop_default_event*, i32) #1

declare dso_local %struct.sway_binding* @get_active_mouse_binding(%struct.seatop_default_event*, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @seat_execute_command(%struct.sway_seat*, %struct.sway_binding*) #1

declare dso_local i32 @container_parent_layout(%struct.sway_container*) #1

declare dso_local %struct.sway_node* @node_get_parent(%struct.sway_node*) #1

declare dso_local %struct.sway_node* @seat_get_active_tiling_child(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local %struct.TYPE_13__* @container_get_siblings(%struct.sway_container*) #1

declare dso_local i32 @list_find(%struct.TYPE_13__*, %struct.sway_container*) #1

declare dso_local i32 @round(float) #1

declare dso_local %struct.sway_node* @seat_get_focus(%struct.sway_seat*) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i64 @node_has_ancestor(%struct.sway_node*, %struct.sway_node*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @seat_set_raw_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @state_erase_button(%struct.seatop_default_event*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @wlr_seat_pointer_notify_axis(i32, i32, i32, float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

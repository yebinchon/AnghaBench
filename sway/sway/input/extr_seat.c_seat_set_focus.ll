; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_set_focus.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_set_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.sway_container* }
%struct.sway_container = type { %struct.sway_view*, i64, i32, %struct.sway_container*, %struct.sway_workspace* }
%struct.sway_view = type { i64 }
%struct.sway_workspace = type { %struct.TYPE_5__*, i32, %struct.sway_output*, %struct.sway_container* }
%struct.TYPE_5__ = type { i32, %struct.sway_container** }
%struct.sway_output = type { %struct.sway_node }
%struct.sway_node = type { i64, %struct.sway_container*, %struct.sway_workspace* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.sway_seat = type { i32, %struct.wlr_layer_surface_v1* }
%struct.wlr_layer_surface_v1 = type { i32 }

@N_WORKSPACE = common dso_local global i64 0, align 8
@N_CONTAINER = common dso_local global i64 0, align 8
@root = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"focus\00", align 1
@config = common dso_local global %struct.TYPE_8__* null, align 8
@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to create urgency timer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seat_set_focus(%struct.sway_seat* %0, %struct.sway_node* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_node*, align 8
  %5 = alloca %struct.wlr_layer_surface_v1*, align 8
  %6 = alloca %struct.sway_node*, align 8
  %7 = alloca %struct.sway_workspace*, align 8
  %8 = alloca %struct.sway_workspace*, align 8
  %9 = alloca %struct.sway_container*, align 8
  %10 = alloca %struct.sway_output*, align 8
  %11 = alloca %struct.sway_workspace*, align 8
  %12 = alloca %struct.sway_node*, align 8
  %13 = alloca %struct.sway_container*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sway_container*, align 8
  %16 = alloca %struct.sway_view*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.sway_node* %1, %struct.sway_node** %4, align 8
  %17 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %18 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %17, i32 0, i32 1
  %19 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %18, align 8
  %20 = icmp ne %struct.wlr_layer_surface_v1* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %23 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %22, i32 0, i32 1
  %24 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %23, align 8
  store %struct.wlr_layer_surface_v1* %24, %struct.wlr_layer_surface_v1** %5, align 8
  %25 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %26 = call i32 @seat_set_focus_layer(%struct.sway_seat* %25, %struct.wlr_layer_surface_v1* null)
  %27 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %28 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  call void @seat_set_focus(%struct.sway_seat* %27, %struct.sway_node* %28)
  %29 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %30 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %31 = call i32 @seat_set_focus_layer(%struct.sway_seat* %29, %struct.wlr_layer_surface_v1* %30)
  br label %404

32:                                               ; preds = %2
  %33 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %34 = call %struct.sway_node* @seat_get_focus(%struct.sway_seat* %33)
  store %struct.sway_node* %34, %struct.sway_node** %6, align 8
  %35 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %36 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %37 = icmp eq %struct.sway_node* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %404

39:                                               ; preds = %32
  %40 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %41 = call %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat* %40)
  store %struct.sway_workspace* %41, %struct.sway_workspace** %7, align 8
  %42 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %43 = icmp eq %struct.sway_node* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %46 = call i64 @node_is_view(%struct.sway_node* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %50 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %49, i32 0, i32 1
  %51 = load %struct.sway_container*, %struct.sway_container** %50, align 8
  %52 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %51, i32 0, i32 0
  %53 = load %struct.sway_view*, %struct.sway_view** %52, align 8
  %54 = call i32 @view_close_popups(%struct.sway_view* %53)
  br label %55

55:                                               ; preds = %48, %44
  %56 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %57 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %58 = call i32 @seat_send_unfocus(%struct.sway_node* %56, %struct.sway_seat* %57)
  %59 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %60 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %404

61:                                               ; preds = %39
  %62 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %63 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @N_WORKSPACE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %69 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %68, i32 0, i32 2
  %70 = load %struct.sway_workspace*, %struct.sway_workspace** %69, align 8
  br label %77

71:                                               ; preds = %61
  %72 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %73 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %72, i32 0, i32 1
  %74 = load %struct.sway_container*, %struct.sway_container** %73, align 8
  %75 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %74, i32 0, i32 4
  %76 = load %struct.sway_workspace*, %struct.sway_workspace** %75, align 8
  br label %77

77:                                               ; preds = %71, %67
  %78 = phi %struct.sway_workspace* [ %70, %67 ], [ %76, %71 ]
  store %struct.sway_workspace* %78, %struct.sway_workspace** %8, align 8
  %79 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %80 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @N_CONTAINER, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %86 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %85, i32 0, i32 1
  %87 = load %struct.sway_container*, %struct.sway_container** %86, align 8
  br label %89

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi %struct.sway_container* [ %87, %84 ], [ null, %88 ]
  store %struct.sway_container* %90, %struct.sway_container** %9, align 8
  %91 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %92 = icmp ne %struct.sway_workspace* %91, null
  br i1 %92, label %93, label %114

93:                                               ; preds = %89
  %94 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %95 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %94, i32 0, i32 3
  %96 = load %struct.sway_container*, %struct.sway_container** %95, align 8
  %97 = icmp ne %struct.sway_container* %96, null
  br i1 %97, label %98, label %114

98:                                               ; preds = %93
  %99 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %100 = icmp ne %struct.sway_container* %99, null
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %103 = call i32 @container_is_fullscreen_or_child(%struct.sway_container* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %101
  %106 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %107 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %108 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %107, i32 0, i32 3
  %109 = load %struct.sway_container*, %struct.sway_container** %108, align 8
  %110 = call i32 @container_is_transient_for(%struct.sway_container* %106, %struct.sway_container* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %404

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %101, %98, %93, %89
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load %struct.sway_container*, %struct.sway_container** %116, align 8
  %118 = icmp ne %struct.sway_container* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %121 = icmp ne %struct.sway_container* %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %124 = icmp ne %struct.sway_workspace* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %404

126:                                              ; preds = %122, %119, %114
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load %struct.sway_container*, %struct.sway_container** %128, align 8
  %130 = icmp ne %struct.sway_container* %129, null
  br i1 %130, label %131, label %153

131:                                              ; preds = %126
  %132 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load %struct.sway_container*, %struct.sway_container** %134, align 8
  %136 = icmp ne %struct.sway_container* %132, %135
  br i1 %136, label %137, label %153

137:                                              ; preds = %131
  %138 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load %struct.sway_container*, %struct.sway_container** %140, align 8
  %142 = call i32 @container_has_ancestor(%struct.sway_container* %138, %struct.sway_container* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %137
  %145 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load %struct.sway_container*, %struct.sway_container** %147, align 8
  %149 = call i32 @container_is_transient_for(%struct.sway_container* %145, %struct.sway_container* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %144
  br label %404

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152, %137, %131, %126
  %154 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %155 = icmp ne %struct.sway_workspace* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %158 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %157, i32 0, i32 2
  %159 = load %struct.sway_output*, %struct.sway_output** %158, align 8
  br label %161

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %156
  %162 = phi %struct.sway_output* [ %159, %156 ], [ null, %160 ]
  store %struct.sway_output* %162, %struct.sway_output** %10, align 8
  %163 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %164 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %165 = icmp ne %struct.sway_workspace* %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %168 = icmp ne %struct.sway_output* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %171 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %170, i32 0, i32 0
  %172 = call i32 @node_set_dirty(%struct.sway_node* %171)
  br label %173

173:                                              ; preds = %169, %166, %161
  %174 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %175 = icmp ne %struct.sway_output* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %178 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %177)
  br label %180

179:                                              ; preds = %173
  br label %180

180:                                              ; preds = %179, %176
  %181 = phi %struct.sway_workspace* [ %178, %176 ], [ null, %179 ]
  store %struct.sway_workspace* %181, %struct.sway_workspace** %11, align 8
  %182 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %183 = icmp ne %struct.sway_node* %182, null
  br i1 %183, label %184, label %198

184:                                              ; preds = %180
  %185 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %186 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %187 = call i32 @seat_send_unfocus(%struct.sway_node* %185, %struct.sway_seat* %186)
  %188 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %189 = call i32 @node_set_dirty(%struct.sway_node* %188)
  %190 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %191 = call %struct.sway_node* @node_get_parent(%struct.sway_node* %190)
  store %struct.sway_node* %191, %struct.sway_node** %12, align 8
  %192 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %193 = icmp ne %struct.sway_node* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %184
  %195 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %196 = call i32 @node_set_dirty(%struct.sway_node* %195)
  br label %197

197:                                              ; preds = %194, %184
  br label %198

198:                                              ; preds = %197, %180
  %199 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %200 = icmp ne %struct.sway_container* %199, null
  br i1 %200, label %201, label %217

201:                                              ; preds = %198
  %202 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %203 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %202, i32 0, i32 3
  %204 = load %struct.sway_container*, %struct.sway_container** %203, align 8
  store %struct.sway_container* %204, %struct.sway_container** %13, align 8
  br label %205

205:                                              ; preds = %208, %201
  %206 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %207 = icmp ne %struct.sway_container* %206, null
  br i1 %207, label %208, label %216

208:                                              ; preds = %205
  %209 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %210 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %211 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %210, i32 0, i32 2
  %212 = call i32 @seat_set_raw_focus(%struct.sway_seat* %209, i32* %211)
  %213 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %214 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %213, i32 0, i32 3
  %215 = load %struct.sway_container*, %struct.sway_container** %214, align 8
  store %struct.sway_container* %215, %struct.sway_container** %13, align 8
  br label %205

216:                                              ; preds = %205
  br label %217

217:                                              ; preds = %216, %198
  %218 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %219 = icmp ne %struct.sway_workspace* %218, null
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %222 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %223 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %222, i32 0, i32 1
  %224 = call i32 @seat_set_raw_focus(%struct.sway_seat* %221, i32* %223)
  br label %225

225:                                              ; preds = %220, %217
  %226 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %227 = icmp ne %struct.sway_container* %226, null
  br i1 %227, label %228, label %237

228:                                              ; preds = %225
  %229 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %230 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %231 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %230, i32 0, i32 2
  %232 = call i32 @seat_set_raw_focus(%struct.sway_seat* %229, i32* %231)
  %233 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %234 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %233, i32 0, i32 2
  %235 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %236 = call i32 @seat_send_focus(i32* %234, %struct.sway_seat* %235)
  br label %237

237:                                              ; preds = %228, %225
  %238 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %239 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %240 = call i32 @set_workspace(%struct.sway_seat* %238, %struct.sway_workspace* %239)
  %241 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %242 = icmp ne %struct.sway_container* %241, null
  br i1 %242, label %243, label %251

243:                                              ; preds = %237
  %244 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %245 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %244, i32 0, i32 0
  %246 = load %struct.sway_view*, %struct.sway_view** %245, align 8
  %247 = icmp ne %struct.sway_view* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %250 = call i32 @ipc_event_window(%struct.sway_container* %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %251

251:                                              ; preds = %248, %243, %237
  %252 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %253 = icmp ne %struct.sway_workspace* %252, null
  br i1 %253, label %254, label %297

254:                                              ; preds = %251
  %255 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %256 = icmp ne %struct.sway_workspace* %255, null
  br i1 %256, label %257, label %297

257:                                              ; preds = %254
  %258 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %259 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %260 = icmp ne %struct.sway_workspace* %258, %259
  br i1 %260, label %261, label %297

261:                                              ; preds = %257
  store i32 0, i32* %14, align 4
  br label %262

262:                                              ; preds = %293, %261
  %263 = load i32, i32* %14, align 4
  %264 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %265 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %264, i32 0, i32 0
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = icmp slt i32 %263, %268
  br i1 %269, label %270, label %296

270:                                              ; preds = %262
  %271 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %272 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %271, i32 0, i32 0
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 1
  %275 = load %struct.sway_container**, %struct.sway_container*** %274, align 8
  %276 = load i32, i32* %14, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %275, i64 %277
  %279 = load %struct.sway_container*, %struct.sway_container** %278, align 8
  store %struct.sway_container* %279, %struct.sway_container** %15, align 8
  %280 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %281 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %270
  %285 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %286 = call i32 @container_detach(%struct.sway_container* %285)
  %287 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %288 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %289 = call i32 @workspace_add_floating(%struct.sway_workspace* %287, %struct.sway_container* %288)
  %290 = load i32, i32* %14, align 4
  %291 = add nsw i32 %290, -1
  store i32 %291, i32* %14, align 4
  br label %292

292:                                              ; preds = %284, %270
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %14, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %14, align 4
  br label %262

296:                                              ; preds = %262
  br label %297

297:                                              ; preds = %296, %257, %254, %251
  %298 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %299 = icmp ne %struct.sway_node* %298, null
  br i1 %299, label %300, label %311

300:                                              ; preds = %297
  %301 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %302 = call i64 @node_is_view(%struct.sway_node* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %311

304:                                              ; preds = %300
  %305 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %306 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %305, i32 0, i32 1
  %307 = load %struct.sway_container*, %struct.sway_container** %306, align 8
  %308 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %307, i32 0, i32 0
  %309 = load %struct.sway_view*, %struct.sway_view** %308, align 8
  %310 = call i32 @view_close_popups(%struct.sway_view* %309)
  br label %311

311:                                              ; preds = %304, %300, %297
  %312 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %313 = icmp ne %struct.sway_container* %312, null
  br i1 %313, label %314, label %375

314:                                              ; preds = %311
  %315 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %316 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %315, i32 0, i32 0
  %317 = load %struct.sway_view*, %struct.sway_view** %316, align 8
  %318 = icmp ne %struct.sway_view* %317, null
  br i1 %318, label %319, label %375

319:                                              ; preds = %314
  %320 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %321 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %320, i32 0, i32 0
  %322 = load %struct.sway_view*, %struct.sway_view** %321, align 8
  %323 = call i64 @view_is_urgent(%struct.sway_view* %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %375

325:                                              ; preds = %319
  %326 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %327 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %326, i32 0, i32 0
  %328 = load %struct.sway_view*, %struct.sway_view** %327, align 8
  %329 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %375, label %332

332:                                              ; preds = %325
  %333 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %334 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %333, i32 0, i32 0
  %335 = load %struct.sway_view*, %struct.sway_view** %334, align 8
  store %struct.sway_view* %335, %struct.sway_view** %16, align 8
  %336 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %337 = icmp ne %struct.sway_workspace* %336, null
  br i1 %337, label %338, label %371

338:                                              ; preds = %332
  %339 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %340 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %341 = icmp ne %struct.sway_workspace* %339, %340
  br i1 %341, label %342, label %371

342:                                              ; preds = %338
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = icmp sgt i64 %345, 0
  br i1 %346, label %347, label %371

347:                                              ; preds = %342
  %348 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 4
  %349 = load %struct.sway_view*, %struct.sway_view** %16, align 8
  %350 = call i64 @wl_event_loop_add_timer(i32 %348, i32 (%struct.sway_view*)* @handle_urgent_timeout, %struct.sway_view* %349)
  %351 = load %struct.sway_view*, %struct.sway_view** %16, align 8
  %352 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %351, i32 0, i32 0
  store i64 %350, i64* %352, align 8
  %353 = load %struct.sway_view*, %struct.sway_view** %16, align 8
  %354 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %365

357:                                              ; preds = %347
  %358 = load %struct.sway_view*, %struct.sway_view** %16, align 8
  %359 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = call i32 @wl_event_source_timer_update(i64 %360, i64 %363)
  br label %370

365:                                              ; preds = %347
  %366 = load i32, i32* @SWAY_ERROR, align 4
  %367 = call i32 @sway_log_errno(i32 %366, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %368 = load %struct.sway_view*, %struct.sway_view** %16, align 8
  %369 = call i32 @handle_urgent_timeout(%struct.sway_view* %368)
  br label %370

370:                                              ; preds = %365, %357
  br label %374

371:                                              ; preds = %342, %338, %332
  %372 = load %struct.sway_view*, %struct.sway_view** %16, align 8
  %373 = call i32 @view_set_urgent(%struct.sway_view* %372, i32 0)
  br label %374

374:                                              ; preds = %371, %370
  br label %375

375:                                              ; preds = %374, %325, %319, %314, %311
  %376 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %377 = icmp ne %struct.sway_workspace* %376, null
  br i1 %377, label %378, label %381

378:                                              ; preds = %375
  %379 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %380 = call i32 @workspace_consider_destroy(%struct.sway_workspace* %379)
  br label %381

381:                                              ; preds = %378, %375
  %382 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %383 = icmp ne %struct.sway_workspace* %382, null
  br i1 %383, label %384, label %391

384:                                              ; preds = %381
  %385 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %386 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %387 = icmp ne %struct.sway_workspace* %385, %386
  br i1 %387, label %388, label %391

388:                                              ; preds = %384
  %389 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %390 = call i32 @workspace_consider_destroy(%struct.sway_workspace* %389)
  br label %391

391:                                              ; preds = %388, %384, %381
  %392 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %393 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %392, i32 0, i32 0
  store i32 1, i32* %393, align 8
  %394 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %391
  %399 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %400 = icmp ne %struct.sway_workspace* %399, null
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %403 = call i32 @arrange_workspace(%struct.sway_workspace* %402)
  br label %404

404:                                              ; preds = %21, %38, %55, %112, %125, %151, %401, %398, %391
  ret void
}

declare dso_local i32 @seat_set_focus_layer(%struct.sway_seat*, %struct.wlr_layer_surface_v1*) #1

declare dso_local %struct.sway_node* @seat_get_focus(%struct.sway_seat*) #1

declare dso_local %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat*) #1

declare dso_local i64 @node_is_view(%struct.sway_node*) #1

declare dso_local i32 @view_close_popups(%struct.sway_view*) #1

declare dso_local i32 @seat_send_unfocus(%struct.sway_node*, %struct.sway_seat*) #1

declare dso_local i32 @container_is_fullscreen_or_child(%struct.sway_container*) #1

declare dso_local i32 @container_is_transient_for(%struct.sway_container*, %struct.sway_container*) #1

declare dso_local i32 @container_has_ancestor(%struct.sway_container*, %struct.sway_container*) #1

declare dso_local i32 @node_set_dirty(%struct.sway_node*) #1

declare dso_local %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output*) #1

declare dso_local %struct.sway_node* @node_get_parent(%struct.sway_node*) #1

declare dso_local i32 @seat_set_raw_focus(%struct.sway_seat*, i32*) #1

declare dso_local i32 @seat_send_focus(i32*, %struct.sway_seat*) #1

declare dso_local i32 @set_workspace(%struct.sway_seat*, %struct.sway_workspace*) #1

declare dso_local i32 @ipc_event_window(%struct.sway_container*, i8*) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @workspace_add_floating(%struct.sway_workspace*, %struct.sway_container*) #1

declare dso_local i64 @view_is_urgent(%struct.sway_view*) #1

declare dso_local i64 @wl_event_loop_add_timer(i32, i32 (%struct.sway_view*)*, %struct.sway_view*) #1

declare dso_local i32 @handle_urgent_timeout(%struct.sway_view*) #1

declare dso_local i32 @wl_event_source_timer_update(i64, i64) #1

declare dso_local i32 @sway_log_errno(i32, i8*) #1

declare dso_local i32 @view_set_urgent(%struct.sway_view*, i32) #1

declare dso_local i32 @workspace_consider_destroy(%struct.sway_workspace*) #1

declare dso_local i32 @arrange_workspace(%struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

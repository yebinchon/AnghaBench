; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_handle_button.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_handle_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.seatop_move_tiling_event*, %struct.TYPE_5__* }
%struct.seatop_move_tiling_event = type { i32, %struct.sway_node*, %struct.sway_container* }
%struct.sway_node = type { i64, %struct.sway_container*, %struct.sway_workspace* }
%struct.sway_workspace = type { i32 }
%struct.sway_container = type { i32, i32, i32, i32, %struct.sway_workspace*, %struct.sway_container* }
%struct.TYPE_5__ = type { i64 }
%struct.wlr_input_device = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.sway_container** }

@N_WORKSPACE = common dso_local global i64 0, align 8
@WLR_EDGE_TOP = common dso_local global i32 0, align 4
@WLR_EDGE_LEFT = common dso_local global i32 0, align 4
@WLR_EDGE_NONE = common dso_local global i32 0, align 4
@N_CONTAINER = common dso_local global i64 0, align 8
@WLR_EDGE_BOTTOM = common dso_local global i32 0, align 4
@L_VERT = common dso_local global i32 0, align 4
@L_HORIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, i32, %struct.wlr_input_device*, i32, i32)* @handle_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_button(%struct.sway_seat* %0, i32 %1, %struct.wlr_input_device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wlr_input_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.seatop_move_tiling_event*, align 8
  %12 = alloca %struct.sway_container*, align 8
  %13 = alloca %struct.sway_container*, align 8
  %14 = alloca %struct.sway_workspace*, align 8
  %15 = alloca %struct.sway_node*, align 8
  %16 = alloca %struct.sway_workspace*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sway_container*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_6__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.sway_container*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.wlr_input_device* %2, %struct.wlr_input_device** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %27 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %28 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  br label %260

34:                                               ; preds = %5
  %35 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %36 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %35, i32 0, i32 0
  %37 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %36, align 8
  store %struct.seatop_move_tiling_event* %37, %struct.seatop_move_tiling_event** %11, align 8
  %38 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %11, align 8
  %39 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %38, i32 0, i32 1
  %40 = load %struct.sway_node*, %struct.sway_node** %39, align 8
  %41 = icmp ne %struct.sway_node* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %44 = call i32 @seatop_begin_default(%struct.sway_seat* %43)
  br label %260

45:                                               ; preds = %34
  %46 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %11, align 8
  %47 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %46, i32 0, i32 2
  %48 = load %struct.sway_container*, %struct.sway_container** %47, align 8
  store %struct.sway_container* %48, %struct.sway_container** %12, align 8
  %49 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %50 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %49, i32 0, i32 5
  %51 = load %struct.sway_container*, %struct.sway_container** %50, align 8
  store %struct.sway_container* %51, %struct.sway_container** %13, align 8
  %52 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %53 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %52, i32 0, i32 4
  %54 = load %struct.sway_workspace*, %struct.sway_workspace** %53, align 8
  store %struct.sway_workspace* %54, %struct.sway_workspace** %14, align 8
  %55 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %11, align 8
  %56 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %55, i32 0, i32 1
  %57 = load %struct.sway_node*, %struct.sway_node** %56, align 8
  store %struct.sway_node* %57, %struct.sway_node** %15, align 8
  %58 = load %struct.sway_node*, %struct.sway_node** %15, align 8
  %59 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @N_WORKSPACE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %45
  %64 = load %struct.sway_node*, %struct.sway_node** %15, align 8
  %65 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %64, i32 0, i32 2
  %66 = load %struct.sway_workspace*, %struct.sway_workspace** %65, align 8
  br label %73

67:                                               ; preds = %45
  %68 = load %struct.sway_node*, %struct.sway_node** %15, align 8
  %69 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %68, i32 0, i32 1
  %70 = load %struct.sway_container*, %struct.sway_container** %69, align 8
  %71 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %70, i32 0, i32 4
  %72 = load %struct.sway_workspace*, %struct.sway_workspace** %71, align 8
  br label %73

73:                                               ; preds = %67, %63
  %74 = phi %struct.sway_workspace* [ %66, %63 ], [ %72, %67 ]
  store %struct.sway_workspace* %74, %struct.sway_workspace** %16, align 8
  %75 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %11, align 8
  %76 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @WLR_EDGE_TOP, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @WLR_EDGE_LEFT, align 4
  %84 = icmp ne i32 %82, %83
  br label %85

85:                                               ; preds = %81, %73
  %86 = phi i1 [ false, %73 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* @WLR_EDGE_NONE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.sway_node*, %struct.sway_node** %15, align 8
  %93 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @N_CONTAINER, align 8
  %96 = icmp eq i64 %94, %95
  br label %97

97:                                               ; preds = %91, %85
  %98 = phi i1 [ false, %85 ], [ %96, %91 ]
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %19, align 4
  %100 = load i32, i32* %19, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %104 = call i32 @container_detach(%struct.sway_container* %103)
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.sway_node*, %struct.sway_node** %15, align 8
  %107 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @N_WORKSPACE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* @WLR_EDGE_NONE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load %struct.sway_workspace*, %struct.sway_workspace** %16, align 8
  %117 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %118 = call i32 @workspace_add_tiling(%struct.sway_workspace* %116, %struct.sway_container* %117)
  br label %192

119:                                              ; preds = %111, %105
  %120 = load %struct.sway_node*, %struct.sway_node** %15, align 8
  %121 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @N_CONTAINER, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %170

125:                                              ; preds = %119
  %126 = load %struct.sway_node*, %struct.sway_node** %15, align 8
  %127 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %126, i32 0, i32 1
  %128 = load %struct.sway_container*, %struct.sway_container** %127, align 8
  store %struct.sway_container* %128, %struct.sway_container** %20, align 8
  %129 = load i32, i32* %19, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load %struct.sway_node*, %struct.sway_node** %15, align 8
  %133 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %132, i32 0, i32 1
  %134 = load %struct.sway_container*, %struct.sway_container** %133, align 8
  %135 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %136 = call i32 @container_swap(%struct.sway_container* %134, %struct.sway_container* %135)
  br label %169

137:                                              ; preds = %125
  %138 = load %struct.sway_container*, %struct.sway_container** %20, align 8
  %139 = call i32 @container_parent_layout(%struct.sway_container* %138)
  store i32 %139, i32* %21, align 4
  %140 = load i32, i32* %17, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %137
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @is_parallel(i32 %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %164, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* @WLR_EDGE_TOP, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151, %147
  %156 = load i32, i32* @L_VERT, align 4
  br label %159

157:                                              ; preds = %151
  %158 = load i32, i32* @L_HORIZ, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i32 [ %156, %155 ], [ %158, %157 ]
  store i32 %160, i32* %22, align 4
  %161 = load %struct.sway_container*, %struct.sway_container** %20, align 8
  %162 = load i32, i32* %22, align 4
  %163 = call i32 @container_split(%struct.sway_container* %161, i32 %162)
  br label %164

164:                                              ; preds = %159, %142, %137
  %165 = load %struct.sway_container*, %struct.sway_container** %20, align 8
  %166 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @container_add_sibling(%struct.sway_container* %165, %struct.sway_container* %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %131
  br label %191

170:                                              ; preds = %119
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* @WLR_EDGE_TOP, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174, %170
  %179 = load i32, i32* @L_VERT, align 4
  br label %182

180:                                              ; preds = %174
  %181 = load i32, i32* @L_HORIZ, align 4
  br label %182

182:                                              ; preds = %180, %178
  %183 = phi i32 [ %179, %178 ], [ %181, %180 ]
  store i32 %183, i32* %23, align 4
  %184 = load %struct.sway_workspace*, %struct.sway_workspace** %16, align 8
  %185 = load i32, i32* %23, align 4
  %186 = call i32 @workspace_split(%struct.sway_workspace* %184, i32 %185)
  %187 = load %struct.sway_workspace*, %struct.sway_workspace** %16, align 8
  %188 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %189 = load i32, i32* %18, align 4
  %190 = call i32 @workspace_insert_tiling(%struct.sway_workspace* %187, %struct.sway_container* %188, i32 %189)
  br label %191

191:                                              ; preds = %182, %169
  br label %192

192:                                              ; preds = %191, %115
  %193 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %194 = icmp ne %struct.sway_container* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %197 = call i32 @container_reap_empty(%struct.sway_container* %196)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %200 = call %struct.TYPE_6__* @container_get_siblings(%struct.sway_container* %199)
  store %struct.TYPE_6__* %200, %struct.TYPE_6__** %24, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp sgt i32 %203, 1
  br i1 %204, label %205, label %248

205:                                              ; preds = %198
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %207 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %208 = call i32 @list_find(%struct.TYPE_6__* %206, %struct.sway_container* %207)
  store i32 %208, i32* %25, align 4
  %209 = load i32, i32* %25, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load %struct.sway_container**, %struct.sway_container*** %213, align 8
  %215 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %214, i64 1
  %216 = load %struct.sway_container*, %struct.sway_container** %215, align 8
  br label %226

217:                                              ; preds = %205
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load %struct.sway_container**, %struct.sway_container*** %219, align 8
  %221 = load i32, i32* %25, align 4
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %220, i64 %223
  %225 = load %struct.sway_container*, %struct.sway_container** %224, align 8
  br label %226

226:                                              ; preds = %217, %211
  %227 = phi %struct.sway_container* [ %216, %211 ], [ %225, %217 ]
  store %struct.sway_container* %227, %struct.sway_container** %26, align 8
  %228 = load %struct.sway_container*, %struct.sway_container** %26, align 8
  %229 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %232 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 4
  %233 = load %struct.sway_container*, %struct.sway_container** %26, align 8
  %234 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %237 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 8
  %238 = load %struct.sway_container*, %struct.sway_container** %26, align 8
  %239 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %242 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 4
  %243 = load %struct.sway_container*, %struct.sway_container** %26, align 8
  %244 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %247 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  br label %248

248:                                              ; preds = %226, %198
  %249 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %250 = call i32 @arrange_workspace(%struct.sway_workspace* %249)
  %251 = load %struct.sway_workspace*, %struct.sway_workspace** %16, align 8
  %252 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %253 = icmp ne %struct.sway_workspace* %251, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = load %struct.sway_workspace*, %struct.sway_workspace** %16, align 8
  %256 = call i32 @arrange_workspace(%struct.sway_workspace* %255)
  br label %257

257:                                              ; preds = %254, %248
  %258 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %259 = call i32 @seatop_begin_default(%struct.sway_seat* %258)
  br label %260

260:                                              ; preds = %257, %42, %33
  ret void
}

declare dso_local i32 @seatop_begin_default(%struct.sway_seat*) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @workspace_add_tiling(%struct.sway_workspace*, %struct.sway_container*) #1

declare dso_local i32 @container_swap(%struct.sway_container*, %struct.sway_container*) #1

declare dso_local i32 @container_parent_layout(%struct.sway_container*) #1

declare dso_local i32 @is_parallel(i32, i32) #1

declare dso_local i32 @container_split(%struct.sway_container*, i32) #1

declare dso_local i32 @container_add_sibling(%struct.sway_container*, %struct.sway_container*, i32) #1

declare dso_local i32 @workspace_split(%struct.sway_workspace*, i32) #1

declare dso_local i32 @workspace_insert_tiling(%struct.sway_workspace*, %struct.sway_container*, i32) #1

declare dso_local i32 @container_reap_empty(%struct.sway_container*) #1

declare dso_local %struct.TYPE_6__* @container_get_siblings(%struct.sway_container*) #1

declare dso_local i32 @list_find(%struct.TYPE_6__*, %struct.sway_container*) #1

declare dso_local i32 @arrange_workspace(%struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

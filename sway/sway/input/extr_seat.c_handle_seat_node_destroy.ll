; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_handle_seat_node_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_handle_seat_node_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sway_seat_node = type { %struct.sway_node*, %struct.sway_seat* }
%struct.sway_node = type { i64, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.sway_node }
%struct.sway_seat = type { i32* }
%struct.wl_listener = type { i32 }
%struct.sway_container = type { %struct.sway_node }
%struct.sway_workspace = type { %struct.sway_node }

@destroy = common dso_local global i32 0, align 4
@N_WORKSPACE = common dso_local global i64 0, align 8
@root = common dso_local global %struct.TYPE_6__* null, align 8
@N_CONTAINER = common dso_local global i64 0, align 8
@seat_node = common dso_local global %struct.sway_seat_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_seat_node_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_seat_node_destroy(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_seat_node*, align 8
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca %struct.sway_node*, align 8
  %8 = alloca %struct.sway_node*, align 8
  %9 = alloca %struct.sway_node*, align 8
  %10 = alloca %struct.sway_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sway_node*, align 8
  %13 = alloca %struct.sway_container*, align 8
  %14 = alloca %struct.sway_workspace*, align 8
  %15 = alloca %struct.sway_container*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %17 = load %struct.sway_seat_node*, %struct.sway_seat_node** %5, align 8
  %18 = ptrtoint %struct.sway_seat_node* %17 to i32
  %19 = load i32, i32* @destroy, align 4
  %20 = call %struct.sway_seat_node* @wl_container_of(%struct.wl_listener* %16, i32 %18, i32 %19)
  store %struct.sway_seat_node* %20, %struct.sway_seat_node** %5, align 8
  %21 = load %struct.sway_seat_node*, %struct.sway_seat_node** %5, align 8
  %22 = getelementptr inbounds %struct.sway_seat_node, %struct.sway_seat_node* %21, i32 0, i32 1
  %23 = load %struct.sway_seat*, %struct.sway_seat** %22, align 8
  store %struct.sway_seat* %23, %struct.sway_seat** %6, align 8
  %24 = load %struct.sway_seat_node*, %struct.sway_seat_node** %5, align 8
  %25 = getelementptr inbounds %struct.sway_seat_node, %struct.sway_seat_node* %24, i32 0, i32 0
  %26 = load %struct.sway_node*, %struct.sway_node** %25, align 8
  store %struct.sway_node* %26, %struct.sway_node** %7, align 8
  %27 = load %struct.sway_node*, %struct.sway_node** %7, align 8
  %28 = call %struct.sway_node* @node_get_parent(%struct.sway_node* %27)
  store %struct.sway_node* %28, %struct.sway_node** %8, align 8
  %29 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %30 = call %struct.sway_node* @seat_get_focus(%struct.sway_seat* %29)
  store %struct.sway_node* %30, %struct.sway_node** %9, align 8
  %31 = load %struct.sway_node*, %struct.sway_node** %7, align 8
  %32 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @N_WORKSPACE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %2
  %37 = load %struct.sway_seat_node*, %struct.sway_seat_node** %5, align 8
  %38 = call i32 @seat_node_destroy(%struct.sway_seat_node* %37)
  %39 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %40 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.sway_node*, %struct.sway_node** %7, align 8
  %43 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %41, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %36
  %47 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %47, i32* %49)
  store %struct.sway_node* %50, %struct.sway_node** %10, align 8
  %51 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %52 = call i32 @seat_set_focus(%struct.sway_seat* %51, %struct.sway_node* null)
  %53 = load %struct.sway_node*, %struct.sway_node** %10, align 8
  %54 = icmp ne %struct.sway_node* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %57 = load %struct.sway_node*, %struct.sway_node** %10, align 8
  %58 = call i32 @seat_set_focus(%struct.sway_seat* %56, %struct.sway_node* %57)
  br label %62

59:                                               ; preds = %46
  %60 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %61 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %59, %55
  br label %63

63:                                               ; preds = %62, %36
  br label %219

64:                                               ; preds = %2
  %65 = load %struct.sway_node*, %struct.sway_node** %9, align 8
  %66 = icmp ne %struct.sway_node* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.sway_node*, %struct.sway_node** %9, align 8
  %69 = load %struct.sway_node*, %struct.sway_node** %7, align 8
  %70 = icmp eq %struct.sway_node* %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load %struct.sway_node*, %struct.sway_node** %9, align 8
  %73 = load %struct.sway_node*, %struct.sway_node** %7, align 8
  %74 = call i64 @node_has_ancestor(%struct.sway_node* %72, %struct.sway_node* %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %71, %67
  %77 = phi i1 [ true, %67 ], [ %75, %71 ]
  br label %78

78:                                               ; preds = %76, %64
  %79 = phi i1 [ false, %64 ], [ %77, %76 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %11, align 4
  %81 = load %struct.sway_seat_node*, %struct.sway_seat_node** %5, align 8
  %82 = call i32 @seat_node_destroy(%struct.sway_seat_node* %81)
  %83 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %84 = icmp ne %struct.sway_node* %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  br label %219

89:                                               ; preds = %85, %78
  store %struct.sway_node* null, %struct.sway_node** %12, align 8
  br label %90

90:                                               ; preds = %120, %89
  %91 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %92 = icmp eq %struct.sway_node* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %95 = icmp ne %struct.sway_node* %94, null
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i1 [ false, %90 ], [ %95, %93 ]
  br i1 %97, label %98, label %123

98:                                               ; preds = %96
  %99 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %100 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %101 = call %struct.sway_container* @seat_get_focus_inactive_view(%struct.sway_seat* %99, %struct.sway_node* %100)
  store %struct.sway_container* %101, %struct.sway_container** %13, align 8
  %102 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %103 = icmp ne %struct.sway_container* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %106 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %105, i32 0, i32 0
  br label %108

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %104
  %109 = phi %struct.sway_node* [ %106, %104 ], [ null, %107 ]
  store %struct.sway_node* %109, %struct.sway_node** %12, align 8
  %110 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %111 = icmp eq %struct.sway_node* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %114 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @N_WORKSPACE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  store %struct.sway_node* %119, %struct.sway_node** %12, align 8
  br label %123

120:                                              ; preds = %112, %108
  %121 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %122 = call %struct.sway_node* @node_get_parent(%struct.sway_node* %121)
  store %struct.sway_node* %122, %struct.sway_node** %8, align 8
  br label %90

123:                                              ; preds = %118, %96
  %124 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %125 = icmp ne %struct.sway_node* %124, null
  br i1 %125, label %147, label %126

126:                                              ; preds = %123
  %127 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %128 = call %struct.sway_workspace* @seat_get_last_known_workspace(%struct.sway_seat* %127)
  store %struct.sway_workspace* %128, %struct.sway_workspace** %14, align 8
  %129 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %130 = icmp ne %struct.sway_workspace* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  br label %219

132:                                              ; preds = %126
  %133 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %134 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %135 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %134, i32 0, i32 0
  %136 = call %struct.sway_container* @seat_get_focus_inactive_view(%struct.sway_seat* %133, %struct.sway_node* %135)
  store %struct.sway_container* %136, %struct.sway_container** %15, align 8
  %137 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %138 = icmp ne %struct.sway_container* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %141 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %140, i32 0, i32 0
  br label %145

142:                                              ; preds = %132
  %143 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %144 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %143, i32 0, i32 0
  br label %145

145:                                              ; preds = %142, %139
  %146 = phi %struct.sway_node* [ %141, %139 ], [ %144, %142 ]
  store %struct.sway_node* %146, %struct.sway_node** %12, align 8
  br label %147

147:                                              ; preds = %145, %123
  %148 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %149 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @N_WORKSPACE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %155 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @workspace_is_visible(i32* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %153
  br label %219

160:                                              ; preds = %153, %147
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %186

163:                                              ; preds = %160
  %164 = load %struct.sway_node*, %struct.sway_node** %7, align 8
  %165 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @N_CONTAINER, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %163
  %170 = load %struct.sway_node*, %struct.sway_node** %7, align 8
  %171 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %170, i32 0, i32 1
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %178 = call i32 @seat_set_focus(%struct.sway_seat* %177, %struct.sway_node* null)
  br label %179

179:                                              ; preds = %176, %169, %163
  %180 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %181 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %182 = call i32 @seat_send_focus(%struct.sway_node* %180, %struct.sway_seat* %181)
  %183 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %184 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %185 = call i32 @seat_set_focus(%struct.sway_seat* %183, %struct.sway_node* %184)
  br label %219

186:                                              ; preds = %160
  %187 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %187, i32* %189)
  store %struct.sway_node* %190, %struct.sway_node** %9, align 8
  %191 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %192 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %193 = call i32 @seat_set_raw_focus(%struct.sway_seat* %191, %struct.sway_node* %192)
  %194 = load %struct.sway_node*, %struct.sway_node** %9, align 8
  %195 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @N_CONTAINER, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %215

199:                                              ; preds = %186
  %200 = load %struct.sway_node*, %struct.sway_node** %9, align 8
  %201 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %200, i32 0, i32 1
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = icmp ne %struct.TYPE_4__* %204, null
  br i1 %205, label %206, label %215

206:                                              ; preds = %199
  %207 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %208 = load %struct.sway_node*, %struct.sway_node** %9, align 8
  %209 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %208, i32 0, i32 1
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = call i32 @seat_set_raw_focus(%struct.sway_seat* %207, %struct.sway_node* %213)
  br label %215

215:                                              ; preds = %206, %199, %186
  %216 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %217 = load %struct.sway_node*, %struct.sway_node** %9, align 8
  %218 = call i32 @seat_set_raw_focus(%struct.sway_seat* %216, %struct.sway_node* %217)
  br label %219

219:                                              ; preds = %63, %88, %131, %159, %215, %179
  ret void
}

declare dso_local %struct.sway_seat_node* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local %struct.sway_node* @node_get_parent(%struct.sway_node*) #1

declare dso_local %struct.sway_node* @seat_get_focus(%struct.sway_seat*) #1

declare dso_local i32 @seat_node_destroy(%struct.sway_seat_node*) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i64 @node_has_ancestor(%struct.sway_node*, %struct.sway_node*) #1

declare dso_local %struct.sway_container* @seat_get_focus_inactive_view(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local %struct.sway_workspace* @seat_get_last_known_workspace(%struct.sway_seat*) #1

declare dso_local i32 @workspace_is_visible(i32*) #1

declare dso_local i32 @seat_send_focus(%struct.sway_node*, %struct.sway_seat*) #1

declare dso_local i32 @seat_set_raw_focus(%struct.sway_seat*, %struct.sway_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

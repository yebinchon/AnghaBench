; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_node_get_in_direction_tiling.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_node_get_in_direction_tiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.sway_node = type { i64 }
%struct.sway_container = type { i64, %struct.sway_node, %struct.TYPE_5__*, %struct.sway_container* }
%struct.TYPE_5__ = type { %struct.sway_output* }
%struct.sway_output = type { i32 }
%struct.sway_seat = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.sway_container** }

@FULLSCREEN_WORKSPACE = common dso_local global i64 0, align 8
@FULLSCREEN_GLOBAL = common dso_local global i64 0, align 8
@WLR_DIRECTION_LEFT = common dso_local global i32 0, align 4
@WLR_DIRECTION_RIGHT = common dso_local global i32 0, align 4
@L_HORIZ = common dso_local global i32 0, align 4
@L_TABBED = common dso_local global i32 0, align 4
@L_VERT = common dso_local global i32 0, align 4
@L_STACKED = common dso_local global i32 0, align 4
@WLR_DIRECTION_UP = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_7__* null, align 8
@WRAP_NO = common dso_local global i64 0, align 8
@WRAP_FORCE = common dso_local global i64 0, align 8
@WRAP_WORKSPACE = common dso_local global i64 0, align 8
@N_WORKSPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_node* (%struct.sway_container*, %struct.sway_seat*, i32, i32)* @node_get_in_direction_tiling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_node* @node_get_in_direction_tiling(%struct.sway_container* %0, %struct.sway_seat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sway_node*, align 8
  %6 = alloca %struct.sway_container*, align 8
  %7 = alloca %struct.sway_seat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sway_container*, align 8
  %11 = alloca %struct.sway_container*, align 8
  %12 = alloca %struct.sway_output*, align 8
  %13 = alloca %struct.sway_output*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.sway_container*, align 8
  %21 = alloca %struct.sway_container*, align 8
  %22 = alloca %struct.sway_container*, align 8
  %23 = alloca %struct.sway_output*, align 8
  %24 = alloca %struct.sway_output*, align 8
  %25 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %6, align 8
  store %struct.sway_seat* %1, %struct.sway_seat** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.sway_container* null, %struct.sway_container** %10, align 8
  %26 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  store %struct.sway_container* %26, %struct.sway_container** %11, align 8
  br label %27

27:                                               ; preds = %188, %4
  %28 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %29 = icmp ne %struct.sway_container* %28, null
  br i1 %29, label %30, label %192

30:                                               ; preds = %27
  %31 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %32 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FULLSCREEN_WORKSPACE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %38 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.sway_output*, %struct.sway_output** %40, align 8
  store %struct.sway_output* %41, %struct.sway_output** %12, align 8
  %42 = load %struct.sway_output*, %struct.sway_output** %12, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.sway_output* @output_get_in_direction(%struct.sway_output* %42, i32 %43)
  store %struct.sway_output* %44, %struct.sway_output** %13, align 8
  %45 = load %struct.sway_output*, %struct.sway_output** %13, align 8
  %46 = icmp ne %struct.sway_output* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  store %struct.sway_node* null, %struct.sway_node** %5, align 8
  br label %231

48:                                               ; preds = %36
  %49 = load %struct.sway_output*, %struct.sway_output** %13, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call %struct.sway_node* @get_node_in_output_direction(%struct.sway_output* %49, i32 %50)
  store %struct.sway_node* %51, %struct.sway_node** %5, align 8
  br label %231

52:                                               ; preds = %30
  %53 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %54 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store %struct.sway_node* null, %struct.sway_node** %5, align 8
  br label %231

59:                                               ; preds = %52
  store i32 0, i32* %14, align 4
  %60 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %61 = call i32 @container_sibling_index(%struct.sway_container* %60)
  store i32 %61, i32* %16, align 4
  %62 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %63 = call i32 @container_parent_layout(%struct.sway_container* %62)
  store i32 %63, i32* %17, align 4
  %64 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %65 = call %struct.TYPE_6__* @container_get_siblings(%struct.sway_container* %64)
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %18, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @WLR_DIRECTION_LEFT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @WLR_DIRECTION_RIGHT, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69, %59
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* @L_HORIZ, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @L_TABBED, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77, %73
  store i32 1, i32* %14, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @WLR_DIRECTION_LEFT, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 -1, i32 1
  %88 = add nsw i32 %82, %87
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %81, %77
  br label %107

90:                                               ; preds = %69
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* @L_VERT, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @L_STACKED, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94, %90
  store i32 1, i32* %14, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @WLR_DIRECTION_UP, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 -1, i32 1
  %105 = add nsw i32 %99, %104
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %98, %94
  br label %107

107:                                              ; preds = %106, %89
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %188

110:                                              ; preds = %107
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %114, %117
  br i1 %118, label %119, label %167

119:                                              ; preds = %113, %110
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %19, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @WRAP_NO, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %166

128:                                              ; preds = %119
  %129 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %130 = icmp ne %struct.sway_container* %129, null
  br i1 %130, label %166, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %19, align 4
  %133 = icmp sgt i32 %132, 1
  br i1 %133, label %134, label %166

134:                                              ; preds = %131
  %135 = load i32, i32* %15, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load %struct.sway_container**, %struct.sway_container*** %139, align 8
  %141 = load i32, i32* %19, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %140, i64 %143
  %145 = load %struct.sway_container*, %struct.sway_container** %144, align 8
  store %struct.sway_container* %145, %struct.sway_container** %10, align 8
  br label %152

146:                                              ; preds = %134
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load %struct.sway_container**, %struct.sway_container*** %148, align 8
  %150 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %149, i64 0
  %151 = load %struct.sway_container*, %struct.sway_container** %150, align 8
  store %struct.sway_container* %151, %struct.sway_container** %10, align 8
  br label %152

152:                                              ; preds = %146, %137
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @WRAP_FORCE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %152
  %159 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %160 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %161 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %160, i32 0, i32 1
  %162 = call %struct.sway_container* @seat_get_focus_inactive_view(%struct.sway_seat* %159, %struct.sway_node* %161)
  store %struct.sway_container* %162, %struct.sway_container** %20, align 8
  %163 = load %struct.sway_container*, %struct.sway_container** %20, align 8
  %164 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %163, i32 0, i32 1
  store %struct.sway_node* %164, %struct.sway_node** %5, align 8
  br label %231

165:                                              ; preds = %152
  br label %166

166:                                              ; preds = %165, %131, %128, %119
  br label %187

167:                                              ; preds = %113
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load %struct.sway_container**, %struct.sway_container*** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %170, i64 %172
  %174 = load %struct.sway_container*, %struct.sway_container** %173, align 8
  store %struct.sway_container* %174, %struct.sway_container** %21, align 8
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %167
  %178 = load %struct.sway_container*, %struct.sway_container** %21, align 8
  %179 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %178, i32 0, i32 1
  store %struct.sway_node* %179, %struct.sway_node** %5, align 8
  br label %231

180:                                              ; preds = %167
  %181 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %182 = load %struct.sway_container*, %struct.sway_container** %21, align 8
  %183 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %182, i32 0, i32 1
  %184 = call %struct.sway_container* @seat_get_focus_inactive_view(%struct.sway_seat* %181, %struct.sway_node* %183)
  store %struct.sway_container* %184, %struct.sway_container** %22, align 8
  %185 = load %struct.sway_container*, %struct.sway_container** %22, align 8
  %186 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %185, i32 0, i32 1
  store %struct.sway_node* %186, %struct.sway_node** %5, align 8
  br label %231

187:                                              ; preds = %166
  br label %188

188:                                              ; preds = %187, %107
  %189 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %190 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %189, i32 0, i32 3
  %191 = load %struct.sway_container*, %struct.sway_container** %190, align 8
  store %struct.sway_container* %191, %struct.sway_container** %11, align 8
  br label %27

192:                                              ; preds = %27
  %193 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %194 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %193, i32 0, i32 2
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load %struct.sway_output*, %struct.sway_output** %196, align 8
  store %struct.sway_output* %197, %struct.sway_output** %23, align 8
  %198 = load %struct.sway_output*, %struct.sway_output** %23, align 8
  %199 = load i32, i32* %8, align 4
  %200 = call %struct.sway_output* @output_get_in_direction(%struct.sway_output* %198, i32 %199)
  store %struct.sway_output* %200, %struct.sway_output** %24, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @WRAP_WORKSPACE, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %213, label %206

206:                                              ; preds = %192
  %207 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %208 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @N_WORKSPACE, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %206, %192
  %214 = load %struct.sway_output*, %struct.sway_output** %24, align 8
  %215 = icmp ne %struct.sway_output* %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load %struct.sway_output*, %struct.sway_output** %24, align 8
  %218 = load i32, i32* %8, align 4
  %219 = call %struct.sway_node* @get_node_in_output_direction(%struct.sway_output* %217, i32 %218)
  store %struct.sway_node* %219, %struct.sway_node** %5, align 8
  br label %231

220:                                              ; preds = %213, %206
  %221 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %222 = icmp ne %struct.sway_container* %221, null
  br i1 %222, label %223, label %230

223:                                              ; preds = %220
  %224 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %225 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %226 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %225, i32 0, i32 1
  %227 = call %struct.sway_container* @seat_get_focus_inactive_view(%struct.sway_seat* %224, %struct.sway_node* %226)
  store %struct.sway_container* %227, %struct.sway_container** %25, align 8
  %228 = load %struct.sway_container*, %struct.sway_container** %25, align 8
  %229 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %228, i32 0, i32 1
  store %struct.sway_node* %229, %struct.sway_node** %5, align 8
  br label %231

230:                                              ; preds = %220
  store %struct.sway_node* null, %struct.sway_node** %5, align 8
  br label %231

231:                                              ; preds = %230, %223, %216, %180, %177, %158, %58, %48, %47
  %232 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  ret %struct.sway_node* %232
}

declare dso_local %struct.sway_output* @output_get_in_direction(%struct.sway_output*, i32) #1

declare dso_local %struct.sway_node* @get_node_in_output_direction(%struct.sway_output*, i32) #1

declare dso_local i32 @container_sibling_index(%struct.sway_container*) #1

declare dso_local i32 @container_parent_layout(%struct.sway_container*) #1

declare dso_local %struct.TYPE_6__* @container_get_siblings(%struct.sway_container*) #1

declare dso_local %struct.sway_container* @seat_get_focus_inactive_view(%struct.sway_seat*, %struct.sway_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

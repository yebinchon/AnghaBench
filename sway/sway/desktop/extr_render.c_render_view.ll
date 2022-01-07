; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_view.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { float }
%struct.sway_container = type { i32, %struct.sway_container_state, %struct.sway_view* }
%struct.sway_container_state = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sway_view = type { %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.border_colors = type { i32, i32 }
%struct.wlr_box = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32 }

@B_NONE = common dso_local global i64 0, align 8
@B_CSD = common dso_local global i64 0, align 8
@L_HORIZ = common dso_local global i32 0, align 4
@L_VERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, i32*, %struct.sway_container*, %struct.border_colors*)* @render_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_view(%struct.sway_output* %0, i32* %1, %struct.sway_container* %2, %struct.border_colors* %3) #0 {
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.border_colors*, align 8
  %9 = alloca %struct.sway_view*, align 8
  %10 = alloca %struct.wlr_box, align 8
  %11 = alloca float, align 4
  %12 = alloca [4 x float], align 16
  %13 = alloca %struct.sway_container_state*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  store %struct.sway_output* %0, %struct.sway_output** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sway_container* %2, %struct.sway_container** %7, align 8
  store %struct.border_colors* %3, %struct.border_colors** %8, align 8
  %16 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %17 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %16, i32 0, i32 2
  %18 = load %struct.sway_view*, %struct.sway_view** %17, align 8
  store %struct.sway_view* %18, %struct.sway_view** %9, align 8
  %19 = load %struct.sway_view*, %struct.sway_view** %9, align 8
  %20 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load %struct.sway_view*, %struct.sway_view** %9, align 8
  %25 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.sway_view*, %struct.sway_view** %9, align 8
  %28 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @render_saved_view(%struct.sway_view* %24, %struct.sway_output* %25, i32* %26, i32 %31)
  br label %49

33:                                               ; preds = %4
  %34 = load %struct.sway_view*, %struct.sway_view** %9, align 8
  %35 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.sway_view*, %struct.sway_view** %9, align 8
  %40 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.sway_view*, %struct.sway_view** %9, align 8
  %43 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @render_view_toplevels(%struct.sway_view* %39, %struct.sway_output* %40, i32* %41, i32 %46)
  br label %48

48:                                               ; preds = %38, %33
  br label %49

49:                                               ; preds = %48, %23
  %50 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %51 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @B_NONE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %58 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @B_CSD, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56, %49
  br label %229

64:                                               ; preds = %56
  %65 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %66 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load float, float* %68, align 4
  store float %69, float* %11, align 4
  %70 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %71 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %70, i32 0, i32 1
  store %struct.sway_container_state* %71, %struct.sway_container_state** %13, align 8
  %72 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %73 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %72, i32 0, i32 10
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %109

76:                                               ; preds = %64
  %77 = bitcast [4 x float]* %12 to float**
  %78 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %79 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcpy(float** %77, i32 %80, i32 16)
  %82 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %83 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %84 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @premultiply_alpha(float* %82, i32 %85)
  %87 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %88 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 3
  store i64 %89, i64* %90, align 8
  %91 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %92 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 2
  store i64 %93, i64* %94, align 8
  %95 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %96 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 1
  store i64 %97, i64* %98, align 8
  %99 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %100 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 0
  store i64 %101, i64* %102, align 8
  %103 = load float, float* %11, align 4
  %104 = call i32 @scale_box(%struct.wlr_box* %10, float %103)
  %105 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %108 = call i32 @render_rect(%struct.sway_output* %105, i32* %106, %struct.wlr_box* %10, float* %107)
  br label %109

109:                                              ; preds = %76, %64
  %110 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %111 = call %struct.TYPE_7__* @container_get_current_siblings(%struct.sway_container* %110)
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %14, align 8
  %112 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %113 = call i32 @container_current_parent_layout(%struct.sway_container* %112)
  store i32 %113, i32* %15, align 4
  %114 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %115 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %114, i32 0, i32 9
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %171

118:                                              ; preds = %109
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @L_HORIZ, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = bitcast [4 x float]* %12 to float**
  %129 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %130 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @memcpy(float** %128, i32 %131, i32 16)
  br label %139

133:                                              ; preds = %123, %118
  %134 = bitcast [4 x float]* %12 to float**
  %135 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %136 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @memcpy(float** %134, i32 %137, i32 16)
  br label %139

139:                                              ; preds = %133, %127
  %140 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %141 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %142 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @premultiply_alpha(float* %140, i32 %143)
  %145 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %146 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %145, i32 0, i32 8
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %149 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %147, %150
  %152 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 3
  store i64 %151, i64* %152, align 8
  %153 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %154 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 2
  store i64 %155, i64* %156, align 8
  %157 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %158 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 1
  store i64 %159, i64* %160, align 8
  %161 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %162 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 0
  store i64 %163, i64* %164, align 8
  %165 = load float, float* %11, align 4
  %166 = call i32 @scale_box(%struct.wlr_box* %10, float %165)
  %167 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %170 = call i32 @render_rect(%struct.sway_output* %167, i32* %168, %struct.wlr_box* %10, float* %169)
  br label %171

171:                                              ; preds = %139, %109
  %172 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %173 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %172, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %229

176:                                              ; preds = %171
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* @L_VERT, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = bitcast [4 x float]* %12 to float**
  %187 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %188 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @memcpy(float** %186, i32 %189, i32 16)
  br label %197

191:                                              ; preds = %181, %176
  %192 = bitcast [4 x float]* %12 to float**
  %193 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %194 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @memcpy(float** %192, i32 %195, i32 16)
  br label %197

197:                                              ; preds = %191, %185
  %198 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %199 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %200 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @premultiply_alpha(float* %198, i32 %201)
  %203 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %204 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %203, i32 0, i32 5
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 3
  store i64 %205, i64* %206, align 8
  %207 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %208 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %211 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %209, %212
  %214 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 2
  store i64 %213, i64* %214, align 8
  %215 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %216 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 1
  store i64 %217, i64* %218, align 8
  %219 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %220 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 0
  store i64 %221, i64* %222, align 8
  %223 = load float, float* %11, align 4
  %224 = call i32 @scale_box(%struct.wlr_box* %10, float %223)
  %225 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %226 = load i32*, i32** %6, align 8
  %227 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %228 = call i32 @render_rect(%struct.sway_output* %225, i32* %226, %struct.wlr_box* %10, float* %227)
  br label %229

229:                                              ; preds = %63, %197, %171
  ret void
}

declare dso_local i32 @render_saved_view(%struct.sway_view*, %struct.sway_output*, i32*, i32) #1

declare dso_local i32 @render_view_toplevels(%struct.sway_view*, %struct.sway_output*, i32*, i32) #1

declare dso_local i32 @memcpy(float**, i32, i32) #1

declare dso_local i32 @premultiply_alpha(float*, i32) #1

declare dso_local i32 @scale_box(%struct.wlr_box*, float) #1

declare dso_local i32 @render_rect(%struct.sway_output*, i32*, %struct.wlr_box*, float*) #1

declare dso_local %struct.TYPE_7__* @container_get_current_siblings(%struct.sway_container*) #1

declare dso_local i32 @container_current_parent_layout(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

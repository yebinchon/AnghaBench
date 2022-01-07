; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_containers_tabbed.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_containers_tabbed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.border_colors, %struct.border_colors, %struct.border_colors, %struct.border_colors }
%struct.border_colors = type { i32 }
%struct.sway_output = type { i32 }
%struct.parent_data = type { i64, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.sway_container* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { %struct.sway_container_state, %struct.sway_view*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture* }
%struct.sway_container_state = type { i32, i64 }
%struct.sway_view = type { i32 }
%struct.wlr_texture = type { i32 }

@config = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, i32*, %struct.parent_data*)* @render_containers_tabbed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_containers_tabbed(%struct.sway_output* %0, i32* %1, %struct.parent_data* %2) #0 {
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.parent_data*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.border_colors*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_container*, align 8
  %12 = alloca %struct.sway_view*, align 8
  %13 = alloca %struct.sway_container_state*, align 8
  %14 = alloca %struct.border_colors*, align 8
  %15 = alloca %struct.wlr_texture*, align 8
  %16 = alloca %struct.wlr_texture*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sway_output* %0, %struct.sway_output** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.parent_data* %2, %struct.parent_data** %6, align 8
  %19 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %20 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %213

26:                                               ; preds = %3
  %27 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %28 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %27, i32 0, i32 3
  %29 = load %struct.sway_container*, %struct.sway_container** %28, align 8
  store %struct.sway_container* %29, %struct.sway_container** %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store %struct.border_colors* %32, %struct.border_colors** %8, align 8
  %33 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %34 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %38 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %36, %41
  store i32 %42, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %181, %26
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %46 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %184

51:                                               ; preds = %43
  %52 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %53 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load %struct.sway_container**, %struct.sway_container*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %56, i64 %58
  %60 = load %struct.sway_container*, %struct.sway_container** %59, align 8
  store %struct.sway_container* %60, %struct.sway_container** %11, align 8
  %61 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %62 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %61, i32 0, i32 1
  %63 = load %struct.sway_view*, %struct.sway_view** %62, align 8
  store %struct.sway_view* %63, %struct.sway_view** %12, align 8
  %64 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %65 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %64, i32 0, i32 0
  store %struct.sway_container_state* %65, %struct.sway_container_state** %13, align 8
  %66 = load %struct.sway_view*, %struct.sway_view** %12, align 8
  %67 = icmp ne %struct.sway_view* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %51
  %69 = load %struct.sway_view*, %struct.sway_view** %12, align 8
  %70 = call i32 @view_is_urgent(%struct.sway_view* %69)
  br label %74

71:                                               ; preds = %51
  %72 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %73 = call i32 @container_has_urgent_child(%struct.sway_container* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i32 [ %70, %68 ], [ %73, %71 ]
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  store %struct.border_colors* %81, %struct.border_colors** %14, align 8
  %82 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %83 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %82, i32 0, i32 9
  %84 = load %struct.wlr_texture*, %struct.wlr_texture** %83, align 8
  store %struct.wlr_texture* %84, %struct.wlr_texture** %15, align 8
  %85 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %86 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %85, i32 0, i32 8
  %87 = load %struct.wlr_texture*, %struct.wlr_texture** %86, align 8
  store %struct.wlr_texture* %87, %struct.wlr_texture** %16, align 8
  br label %136

88:                                               ; preds = %74
  %89 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %90 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %95 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %93, %88
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store %struct.border_colors* %101, %struct.border_colors** %14, align 8
  %102 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %103 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %102, i32 0, i32 7
  %104 = load %struct.wlr_texture*, %struct.wlr_texture** %103, align 8
  store %struct.wlr_texture* %104, %struct.wlr_texture** %15, align 8
  %105 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %106 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %105, i32 0, i32 6
  %107 = load %struct.wlr_texture*, %struct.wlr_texture** %106, align 8
  store %struct.wlr_texture* %107, %struct.wlr_texture** %16, align 8
  br label %135

108:                                              ; preds = %93
  %109 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %110 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %111 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %110, i32 0, i32 3
  %112 = load %struct.sway_container*, %struct.sway_container** %111, align 8
  %113 = icmp eq %struct.sway_container* %109, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %108
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store %struct.border_colors* %117, %struct.border_colors** %14, align 8
  %118 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %119 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %118, i32 0, i32 5
  %120 = load %struct.wlr_texture*, %struct.wlr_texture** %119, align 8
  store %struct.wlr_texture* %120, %struct.wlr_texture** %15, align 8
  %121 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %122 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %121, i32 0, i32 4
  %123 = load %struct.wlr_texture*, %struct.wlr_texture** %122, align 8
  store %struct.wlr_texture* %123, %struct.wlr_texture** %16, align 8
  br label %134

124:                                              ; preds = %108
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store %struct.border_colors* %127, %struct.border_colors** %14, align 8
  %128 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %129 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %128, i32 0, i32 3
  %130 = load %struct.wlr_texture*, %struct.wlr_texture** %129, align 8
  store %struct.wlr_texture* %130, %struct.wlr_texture** %15, align 8
  %131 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %132 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %131, i32 0, i32 2
  %133 = load %struct.wlr_texture*, %struct.wlr_texture** %132, align 8
  store %struct.wlr_texture* %133, %struct.wlr_texture** %16, align 8
  br label %134

134:                                              ; preds = %124, %114
  br label %135

135:                                              ; preds = %134, %98
  br label %136

136:                                              ; preds = %135, %78
  %137 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %138 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = mul nsw i32 %140, %141
  %143 = add nsw i32 %139, %142
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %146 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %145, i32 0, i32 2
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, 1
  %151 = icmp eq i32 %144, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %136
  %153 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %154 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %10, align 4
  %159 = mul nsw i32 %157, %158
  %160 = sub nsw i32 %156, %159
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %152, %136
  %162 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %165 = load i32, i32* %18, align 4
  %166 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %167 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.border_colors*, %struct.border_colors** %14, align 8
  %172 = load %struct.wlr_texture*, %struct.wlr_texture** %15, align 8
  %173 = load %struct.wlr_texture*, %struct.wlr_texture** %16, align 8
  %174 = call i32 @render_titlebar(%struct.sway_output* %162, i32* %163, %struct.sway_container* %164, i32 %165, i32 %169, i32 %170, %struct.border_colors* %171, %struct.wlr_texture* %172, %struct.wlr_texture* %173)
  %175 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %176 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %177 = icmp eq %struct.sway_container* %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %161
  %179 = load %struct.border_colors*, %struct.border_colors** %14, align 8
  store %struct.border_colors* %179, %struct.border_colors** %8, align 8
  br label %180

180:                                              ; preds = %178, %161
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %43

184:                                              ; preds = %43
  %185 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %186 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %185, i32 0, i32 1
  %187 = load %struct.sway_view*, %struct.sway_view** %186, align 8
  %188 = icmp ne %struct.sway_view* %187, null
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %191 = load i32*, i32** %5, align 8
  %192 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %193 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %194 = call i32 @render_view(%struct.sway_output* %190, i32* %191, %struct.sway_container* %192, %struct.border_colors* %193)
  br label %213

195:                                              ; preds = %184
  %196 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %197 = load i32*, i32** %5, align 8
  %198 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %199 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %200 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %195
  %204 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %205 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br label %209

209:                                              ; preds = %203, %195
  %210 = phi i1 [ true, %195 ], [ %208, %203 ]
  %211 = zext i1 %210 to i32
  %212 = call i32 @render_container(%struct.sway_output* %196, i32* %197, %struct.sway_container* %198, i32 %211)
  br label %213

213:                                              ; preds = %25, %209, %189
  ret void
}

declare dso_local i32 @view_is_urgent(%struct.sway_view*) #1

declare dso_local i32 @container_has_urgent_child(%struct.sway_container*) #1

declare dso_local i32 @render_titlebar(%struct.sway_output*, i32*, %struct.sway_container*, i32, i32, i32, %struct.border_colors*, %struct.wlr_texture*, %struct.wlr_texture*) #1

declare dso_local i32 @render_view(%struct.sway_output*, i32*, %struct.sway_container*, %struct.border_colors*) #1

declare dso_local i32 @render_container(%struct.sway_output*, i32*, %struct.sway_container*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

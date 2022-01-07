; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_containers_linear.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_containers_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.border_colors, %struct.border_colors, %struct.border_colors, %struct.border_colors }
%struct.border_colors = type { i32 }
%struct.sway_output = type { i32 }
%struct.parent_data = type { i64, %struct.sway_container*, %struct.TYPE_4__* }
%struct.sway_container = type { %struct.sway_container_state, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.sway_view* }
%struct.sway_container_state = type { i64, i64, i32, i32, i32 }
%struct.wlr_texture = type { i32 }
%struct.sway_view = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.sway_container** }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@B_NORMAL = common dso_local global i64 0, align 8
@B_PIXEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, i32*, %struct.parent_data*)* @render_containers_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_containers_linear(%struct.sway_output* %0, i32* %1, %struct.parent_data* %2) #0 {
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.parent_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca %struct.sway_view*, align 8
  %10 = alloca %struct.border_colors*, align 8
  %11 = alloca %struct.wlr_texture*, align 8
  %12 = alloca %struct.wlr_texture*, align 8
  %13 = alloca %struct.sway_container_state*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.parent_data* %2, %struct.parent_data** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %164, %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %17 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %167

22:                                               ; preds = %14
  %23 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %24 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.sway_container**, %struct.sway_container*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %27, i64 %29
  %31 = load %struct.sway_container*, %struct.sway_container** %30, align 8
  store %struct.sway_container* %31, %struct.sway_container** %8, align 8
  %32 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %33 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %32, i32 0, i32 9
  %34 = load %struct.sway_view*, %struct.sway_view** %33, align 8
  %35 = icmp ne %struct.sway_view* %34, null
  br i1 %35, label %36, label %145

36:                                               ; preds = %22
  %37 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %38 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %37, i32 0, i32 9
  %39 = load %struct.sway_view*, %struct.sway_view** %38, align 8
  store %struct.sway_view* %39, %struct.sway_view** %9, align 8
  %40 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %41 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %40, i32 0, i32 0
  store %struct.sway_container_state* %41, %struct.sway_container_state** %13, align 8
  %42 = load %struct.sway_view*, %struct.sway_view** %9, align 8
  %43 = call i64 @view_is_urgent(%struct.sway_view* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store %struct.border_colors* %48, %struct.border_colors** %10, align 8
  %49 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %50 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %49, i32 0, i32 8
  %51 = load %struct.wlr_texture*, %struct.wlr_texture** %50, align 8
  store %struct.wlr_texture* %51, %struct.wlr_texture** %11, align 8
  %52 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %53 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %52, i32 0, i32 7
  %54 = load %struct.wlr_texture*, %struct.wlr_texture** %53, align 8
  store %struct.wlr_texture* %54, %struct.wlr_texture** %12, align 8
  br label %103

55:                                               ; preds = %36
  %56 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %57 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %62 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60, %55
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store %struct.border_colors* %68, %struct.border_colors** %10, align 8
  %69 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %70 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %69, i32 0, i32 6
  %71 = load %struct.wlr_texture*, %struct.wlr_texture** %70, align 8
  store %struct.wlr_texture* %71, %struct.wlr_texture** %11, align 8
  %72 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %73 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %72, i32 0, i32 5
  %74 = load %struct.wlr_texture*, %struct.wlr_texture** %73, align 8
  store %struct.wlr_texture* %74, %struct.wlr_texture** %12, align 8
  br label %102

75:                                               ; preds = %60
  %76 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %77 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %78 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %77, i32 0, i32 1
  %79 = load %struct.sway_container*, %struct.sway_container** %78, align 8
  %80 = icmp eq %struct.sway_container* %76, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store %struct.border_colors* %84, %struct.border_colors** %10, align 8
  %85 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %86 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %85, i32 0, i32 4
  %87 = load %struct.wlr_texture*, %struct.wlr_texture** %86, align 8
  store %struct.wlr_texture* %87, %struct.wlr_texture** %11, align 8
  %88 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %89 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %88, i32 0, i32 3
  %90 = load %struct.wlr_texture*, %struct.wlr_texture** %89, align 8
  store %struct.wlr_texture* %90, %struct.wlr_texture** %12, align 8
  br label %101

91:                                               ; preds = %75
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store %struct.border_colors* %94, %struct.border_colors** %10, align 8
  %95 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %96 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %95, i32 0, i32 2
  %97 = load %struct.wlr_texture*, %struct.wlr_texture** %96, align 8
  store %struct.wlr_texture* %97, %struct.wlr_texture** %11, align 8
  %98 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %99 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %98, i32 0, i32 1
  %100 = load %struct.wlr_texture*, %struct.wlr_texture** %99, align 8
  store %struct.wlr_texture* %100, %struct.wlr_texture** %12, align 8
  br label %101

101:                                              ; preds = %91, %81
  br label %102

102:                                              ; preds = %101, %65
  br label %103

103:                                              ; preds = %102, %45
  %104 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %105 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @B_NORMAL, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %103
  %110 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %113 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %114 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %117 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %120 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.border_colors*, %struct.border_colors** %10, align 8
  %123 = load %struct.wlr_texture*, %struct.wlr_texture** %11, align 8
  %124 = load %struct.wlr_texture*, %struct.wlr_texture** %12, align 8
  %125 = call i32 @render_titlebar(%struct.sway_output* %110, i32* %111, %struct.sway_container* %112, i32 %115, i32 %118, i32 %121, %struct.border_colors* %122, %struct.wlr_texture* %123, %struct.wlr_texture* %124)
  br label %139

126:                                              ; preds = %103
  %127 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %128 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @B_PIXEL, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %136 = load %struct.border_colors*, %struct.border_colors** %10, align 8
  %137 = call i32 @render_top_border(%struct.sway_output* %133, i32* %134, %struct.sway_container* %135, %struct.border_colors* %136)
  br label %138

138:                                              ; preds = %132, %126
  br label %139

139:                                              ; preds = %138, %109
  %140 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %143 = load %struct.border_colors*, %struct.border_colors** %10, align 8
  %144 = call i32 @render_view(%struct.sway_output* %140, i32* %141, %struct.sway_container* %142, %struct.border_colors* %143)
  br label %163

145:                                              ; preds = %22
  %146 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %149 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %150 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %145
  %154 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %155 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br label %159

159:                                              ; preds = %153, %145
  %160 = phi i1 [ true, %145 ], [ %158, %153 ]
  %161 = zext i1 %160 to i32
  %162 = call i32 @render_container(%struct.sway_output* %146, i32* %147, %struct.sway_container* %148, i32 %161)
  br label %163

163:                                              ; preds = %159, %139
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %14

167:                                              ; preds = %14
  ret void
}

declare dso_local i64 @view_is_urgent(%struct.sway_view*) #1

declare dso_local i32 @render_titlebar(%struct.sway_output*, i32*, %struct.sway_container*, i32, i32, i32, %struct.border_colors*, %struct.wlr_texture*, %struct.wlr_texture*) #1

declare dso_local i32 @render_top_border(%struct.sway_output*, i32*, %struct.sway_container*, %struct.border_colors*) #1

declare dso_local i32 @render_view(%struct.sway_output*, i32*, %struct.sway_container*, %struct.border_colors*) #1

declare dso_local i32 @render_container(%struct.sway_output*, i32*, %struct.sway_container*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

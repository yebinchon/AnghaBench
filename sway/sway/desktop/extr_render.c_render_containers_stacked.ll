; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_containers_stacked.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_containers_stacked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.border_colors, %struct.border_colors, %struct.border_colors, %struct.border_colors }
%struct.border_colors = type { i32 }
%struct.sway_output = type { i32 }
%struct.parent_data = type { i64, %struct.TYPE_7__, %struct.sway_container*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.sway_container = type { %struct.sway_container_state, %struct.sway_view*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture* }
%struct.sway_container_state = type { i64 }
%struct.sway_view = type { i32 }
%struct.wlr_texture = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.sway_container** }

@config = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, i32*, %struct.parent_data*)* @render_containers_stacked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_containers_stacked(%struct.sway_output* %0, i32* %1, %struct.parent_data* %2) #0 {
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.parent_data*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.border_colors*, align 8
  %9 = alloca i64, align 8
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
  %20 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %19, i32 0, i32 3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %192

26:                                               ; preds = %3
  %27 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %28 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %27, i32 0, i32 2
  %29 = load %struct.sway_container*, %struct.sway_container** %28, align 8
  store %struct.sway_container* %29, %struct.sway_container** %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store %struct.border_colors* %32, %struct.border_colors** %8, align 8
  %33 = call i64 (...) @container_titlebar_height()
  store i64 %33, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %160, %26
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %37 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %163

42:                                               ; preds = %34
  %43 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %44 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.sway_container**, %struct.sway_container*** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %47, i64 %49
  %51 = load %struct.sway_container*, %struct.sway_container** %50, align 8
  store %struct.sway_container* %51, %struct.sway_container** %11, align 8
  %52 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %53 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %52, i32 0, i32 1
  %54 = load %struct.sway_view*, %struct.sway_view** %53, align 8
  store %struct.sway_view* %54, %struct.sway_view** %12, align 8
  %55 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %56 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %55, i32 0, i32 0
  store %struct.sway_container_state* %56, %struct.sway_container_state** %13, align 8
  %57 = load %struct.sway_view*, %struct.sway_view** %12, align 8
  %58 = icmp ne %struct.sway_view* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %42
  %60 = load %struct.sway_view*, %struct.sway_view** %12, align 8
  %61 = call i32 @view_is_urgent(%struct.sway_view* %60)
  br label %65

62:                                               ; preds = %42
  %63 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %64 = call i32 @container_has_urgent_child(%struct.sway_container* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i32 [ %61, %59 ], [ %64, %62 ]
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  store %struct.border_colors* %72, %struct.border_colors** %14, align 8
  %73 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %74 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %73, i32 0, i32 9
  %75 = load %struct.wlr_texture*, %struct.wlr_texture** %74, align 8
  store %struct.wlr_texture* %75, %struct.wlr_texture** %15, align 8
  %76 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %77 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %76, i32 0, i32 8
  %78 = load %struct.wlr_texture*, %struct.wlr_texture** %77, align 8
  store %struct.wlr_texture* %78, %struct.wlr_texture** %16, align 8
  br label %127

79:                                               ; preds = %65
  %80 = load %struct.sway_container_state*, %struct.sway_container_state** %13, align 8
  %81 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %86 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84, %79
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store %struct.border_colors* %92, %struct.border_colors** %14, align 8
  %93 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %94 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %93, i32 0, i32 7
  %95 = load %struct.wlr_texture*, %struct.wlr_texture** %94, align 8
  store %struct.wlr_texture* %95, %struct.wlr_texture** %15, align 8
  %96 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %97 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %96, i32 0, i32 6
  %98 = load %struct.wlr_texture*, %struct.wlr_texture** %97, align 8
  store %struct.wlr_texture* %98, %struct.wlr_texture** %16, align 8
  br label %126

99:                                               ; preds = %84
  %100 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %101 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %102 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %101, i32 0, i32 2
  %103 = load %struct.sway_container*, %struct.sway_container** %102, align 8
  %104 = icmp eq %struct.sway_container* %100, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %99
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store %struct.border_colors* %108, %struct.border_colors** %14, align 8
  %109 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %110 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %109, i32 0, i32 5
  %111 = load %struct.wlr_texture*, %struct.wlr_texture** %110, align 8
  store %struct.wlr_texture* %111, %struct.wlr_texture** %15, align 8
  %112 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %113 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %112, i32 0, i32 4
  %114 = load %struct.wlr_texture*, %struct.wlr_texture** %113, align 8
  store %struct.wlr_texture* %114, %struct.wlr_texture** %16, align 8
  br label %125

115:                                              ; preds = %99
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store %struct.border_colors* %118, %struct.border_colors** %14, align 8
  %119 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %120 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %119, i32 0, i32 3
  %121 = load %struct.wlr_texture*, %struct.wlr_texture** %120, align 8
  store %struct.wlr_texture* %121, %struct.wlr_texture** %15, align 8
  %122 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %123 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %122, i32 0, i32 2
  %124 = load %struct.wlr_texture*, %struct.wlr_texture** %123, align 8
  store %struct.wlr_texture* %124, %struct.wlr_texture** %16, align 8
  br label %125

125:                                              ; preds = %115, %105
  br label %126

126:                                              ; preds = %125, %89
  br label %127

127:                                              ; preds = %126, %69
  %128 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %129 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 %132, %134
  %136 = add i64 %131, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %18, align 4
  %138 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %141 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %142 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %147 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.border_colors*, %struct.border_colors** %14, align 8
  %151 = load %struct.wlr_texture*, %struct.wlr_texture** %15, align 8
  %152 = load %struct.wlr_texture*, %struct.wlr_texture** %16, align 8
  %153 = call i32 @render_titlebar(%struct.sway_output* %138, i32* %139, %struct.sway_container* %140, i32 %144, i32 %145, i32 %149, %struct.border_colors* %150, %struct.wlr_texture* %151, %struct.wlr_texture* %152)
  %154 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %155 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %156 = icmp eq %struct.sway_container* %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %127
  %158 = load %struct.border_colors*, %struct.border_colors** %14, align 8
  store %struct.border_colors* %158, %struct.border_colors** %8, align 8
  br label %159

159:                                              ; preds = %157, %127
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %34

163:                                              ; preds = %34
  %164 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %165 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %164, i32 0, i32 1
  %166 = load %struct.sway_view*, %struct.sway_view** %165, align 8
  %167 = icmp ne %struct.sway_view* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %170 = load i32*, i32** %5, align 8
  %171 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %172 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %173 = call i32 @render_view(%struct.sway_output* %169, i32* %170, %struct.sway_container* %171, %struct.border_colors* %172)
  br label %192

174:                                              ; preds = %163
  %175 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %176 = load i32*, i32** %5, align 8
  %177 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %178 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %179 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %174
  %183 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %184 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br label %188

188:                                              ; preds = %182, %174
  %189 = phi i1 [ true, %174 ], [ %187, %182 ]
  %190 = zext i1 %189 to i32
  %191 = call i32 @render_container(%struct.sway_output* %175, i32* %176, %struct.sway_container* %177, i32 %190)
  br label %192

192:                                              ; preds = %25, %188, %168
  ret void
}

declare dso_local i64 @container_titlebar_height(...) #1

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

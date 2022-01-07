; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_tool_axis.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_tool_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.sway_cursor = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_event_tablet_tool_axis = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sway_tablet_tool* }
%struct.sway_tablet_tool = type { i32, i32, i32, i32 }

@tool_axis = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"tool axis before proximity\00", align 1
@WLR_TABLET_TOOL_AXIS_X = common dso_local global i32 0, align 4
@WLR_TABLET_TOOL_AXIS_Y = common dso_local global i32 0, align 4
@WLR_TABLET_TOOL_AXIS_PRESSURE = common dso_local global i32 0, align 4
@WLR_TABLET_TOOL_AXIS_DISTANCE = common dso_local global i32 0, align 4
@WLR_TABLET_TOOL_AXIS_TILT_X = common dso_local global i32 0, align 4
@WLR_TABLET_TOOL_AXIS_TILT_Y = common dso_local global i32 0, align 4
@WLR_TABLET_TOOL_AXIS_ROTATION = common dso_local global i32 0, align 4
@WLR_TABLET_TOOL_AXIS_SLIDER = common dso_local global i32 0, align 4
@WLR_TABLET_TOOL_AXIS_WHEEL = common dso_local global i32 0, align 4
@cursor = common dso_local global %struct.sway_cursor* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_tool_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tool_axis(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_cursor*, align 8
  %6 = alloca %struct.wlr_event_tablet_tool_axis*, align 8
  %7 = alloca %struct.sway_tablet_tool*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %9 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %10 = ptrtoint %struct.sway_cursor* %9 to i32
  %11 = load i32, i32* @tool_axis, align 4
  %12 = call %struct.sway_cursor* @wl_container_of(%struct.wl_listener* %8, i32 %10, i32 %11)
  store %struct.sway_cursor* %12, %struct.sway_cursor** %5, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 4
  %14 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %15 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wlr_idle_notify_activity(i32 %13, i32 %18)
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.wlr_event_tablet_tool_axis*
  store %struct.wlr_event_tablet_tool_axis* %21, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %22 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %23 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %22, i32 0, i32 13
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %25, align 8
  store %struct.sway_tablet_tool* %26, %struct.sway_tablet_tool** %7, align 8
  %27 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %28 = icmp ne %struct.sway_tablet_tool* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @SWAY_DEBUG, align 4
  %31 = call i32 @sway_log(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %186

32:                                               ; preds = %2
  %33 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %34 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %35 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %38 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %37, i32 0, i32 13
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %41 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @WLR_TABLET_TOOL_AXIS_X, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %46 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @WLR_TABLET_TOOL_AXIS_Y, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %51 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %54 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %57 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %60 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %63 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @handle_tablet_tool_position(%struct.sway_cursor* %33, i32 %36, %struct.TYPE_6__* %39, i32 %44, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64)
  %66 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %67 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @WLR_TABLET_TOOL_AXIS_PRESSURE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %32
  %73 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %74 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %77 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @wlr_tablet_v2_tablet_tool_notify_pressure(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %72, %32
  %81 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %82 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @WLR_TABLET_TOOL_AXIS_DISTANCE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %89 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %92 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @wlr_tablet_v2_tablet_tool_notify_distance(i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %87, %80
  %96 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %97 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @WLR_TABLET_TOOL_AXIS_TILT_X, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %104 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %107 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %102, %95
  %109 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %110 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @WLR_TABLET_TOOL_AXIS_TILT_Y, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %117 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %120 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %108
  %122 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %123 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @WLR_TABLET_TOOL_AXIS_TILT_X, align 4
  %126 = load i32, i32* @WLR_TABLET_TOOL_AXIS_TILT_Y, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %121
  %131 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %132 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %135 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %138 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @wlr_tablet_v2_tablet_tool_notify_tilt(i32 %133, i32 %136, i32 %139)
  br label %141

141:                                              ; preds = %130, %121
  %142 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %143 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @WLR_TABLET_TOOL_AXIS_ROTATION, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %141
  %149 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %150 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %153 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @wlr_tablet_v2_tablet_tool_notify_rotation(i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %148, %141
  %157 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %158 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @WLR_TABLET_TOOL_AXIS_SLIDER, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %156
  %164 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %165 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %168 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @wlr_tablet_v2_tablet_tool_notify_slider(i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %163, %156
  %172 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %173 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @WLR_TABLET_TOOL_AXIS_WHEEL, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %171
  %179 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %180 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.wlr_event_tablet_tool_axis*, %struct.wlr_event_tablet_tool_axis** %6, align 8
  %183 = getelementptr inbounds %struct.wlr_event_tablet_tool_axis, %struct.wlr_event_tablet_tool_axis* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @wlr_tablet_v2_tablet_tool_notify_wheel(i32 %181, i32 %184, i32 0)
  br label %186

186:                                              ; preds = %29, %178, %171
  ret void
}

declare dso_local %struct.sway_cursor* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wlr_idle_notify_activity(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @handle_tablet_tool_position(%struct.sway_cursor*, i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wlr_tablet_v2_tablet_tool_notify_pressure(i32, i32) #1

declare dso_local i32 @wlr_tablet_v2_tablet_tool_notify_distance(i32, i32) #1

declare dso_local i32 @wlr_tablet_v2_tablet_tool_notify_tilt(i32, i32, i32) #1

declare dso_local i32 @wlr_tablet_v2_tablet_tool_notify_rotation(i32, i32) #1

declare dso_local i32 @wlr_tablet_v2_tablet_tool_notify_slider(i32, i32) #1

declare dso_local i32 @wlr_tablet_v2_tablet_tool_notify_wheel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

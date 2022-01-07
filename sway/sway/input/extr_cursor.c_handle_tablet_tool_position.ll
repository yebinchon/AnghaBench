; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_tablet_tool_position.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_tablet_tool_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { %struct.TYPE_5__*, %struct.sway_seat* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sway_seat = type { i32 }
%struct.sway_tablet = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sway_input_device* }
%struct.sway_input_device = type { i32 }
%struct.wlr_tablet_tool = type { i32, %struct.sway_tablet_tool* }
%struct.sway_tablet_tool = type { i32 }
%struct.input_config = type { i32* }
%struct.wlr_surface = type { i32 }

@NAN = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_cursor*, %struct.sway_tablet*, %struct.wlr_tablet_tool*, i32, i32, double, double, double, double, i32)* @handle_tablet_tool_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tablet_tool_position(%struct.sway_cursor* %0, %struct.sway_tablet* %1, %struct.wlr_tablet_tool* %2, i32 %3, i32 %4, double %5, double %6, double %7, double %8, i32 %9) #0 {
  %11 = alloca %struct.sway_cursor*, align 8
  %12 = alloca %struct.sway_tablet*, align 8
  %13 = alloca %struct.wlr_tablet_tool*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.sway_input_device*, align 8
  %22 = alloca %struct.input_config*, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca %struct.wlr_surface*, align 8
  %26 = alloca %struct.sway_seat*, align 8
  %27 = alloca %struct.sway_tablet_tool*, align 8
  store %struct.sway_cursor* %0, %struct.sway_cursor** %11, align 8
  store %struct.sway_tablet* %1, %struct.sway_tablet** %12, align 8
  store %struct.wlr_tablet_tool* %2, %struct.wlr_tablet_tool** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store double %5, double* %16, align 8
  store double %6, double* %17, align 8
  store double %7, double* %18, align 8
  store double %8, double* %19, align 8
  store i32 %9, i32* %20, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %10
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %153

34:                                               ; preds = %30, %10
  %35 = load %struct.sway_tablet*, %struct.sway_tablet** %12, align 8
  %36 = getelementptr inbounds %struct.sway_tablet, %struct.sway_tablet* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.sway_input_device*, %struct.sway_input_device** %38, align 8
  store %struct.sway_input_device* %39, %struct.sway_input_device** %21, align 8
  %40 = load %struct.sway_input_device*, %struct.sway_input_device** %21, align 8
  %41 = call %struct.input_config* @input_device_get_config(%struct.sway_input_device* %40)
  store %struct.input_config* %41, %struct.input_config** %22, align 8
  %42 = load %struct.input_config*, %struct.input_config** %22, align 8
  %43 = icmp ne %struct.input_config* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %34
  %45 = load %struct.input_config*, %struct.input_config** %22, align 8
  %46 = getelementptr inbounds %struct.input_config, %struct.input_config* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.sway_input_device*, %struct.sway_input_device** %21, align 8
  %51 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.input_config*, %struct.input_config** %22, align 8
  %54 = getelementptr inbounds %struct.input_config, %struct.input_config* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @apply_mapping_from_region(i32 %52, i32* %55, double* %16, double* %17)
  br label %57

57:                                               ; preds = %49, %44, %34
  %58 = load %struct.wlr_tablet_tool*, %struct.wlr_tablet_tool** %13, align 8
  %59 = getelementptr inbounds %struct.wlr_tablet_tool, %struct.wlr_tablet_tool* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %71 [
    i32 128, label %61
  ]

61:                                               ; preds = %57
  %62 = load %struct.sway_cursor*, %struct.sway_cursor** %11, align 8
  %63 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load %struct.sway_input_device*, %struct.sway_input_device** %21, align 8
  %66 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load double, double* %18, align 8
  %69 = load double, double* %19, align 8
  %70 = call i32 @wlr_cursor_move(%struct.TYPE_5__* %64, i32 %67, double %68, double %69)
  br label %95

71:                                               ; preds = %57
  %72 = load %struct.sway_cursor*, %struct.sway_cursor** %11, align 8
  %73 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load %struct.sway_input_device*, %struct.sway_input_device** %21, align 8
  %76 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load double, double* %16, align 8
  br label %84

82:                                               ; preds = %71
  %83 = load double, double* @NAN, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi double [ %81, %80 ], [ %83, %82 ]
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load double, double* %17, align 8
  br label %92

90:                                               ; preds = %84
  %91 = load double, double* @NAN, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi double [ %89, %88 ], [ %91, %90 ]
  %94 = call i32 @wlr_cursor_warp_absolute(%struct.TYPE_5__* %74, i32 %77, double %85, double %93)
  br label %95

95:                                               ; preds = %92, %61
  store %struct.wlr_surface* null, %struct.wlr_surface** %25, align 8
  %96 = load %struct.sway_cursor*, %struct.sway_cursor** %11, align 8
  %97 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %96, i32 0, i32 1
  %98 = load %struct.sway_seat*, %struct.sway_seat** %97, align 8
  store %struct.sway_seat* %98, %struct.sway_seat** %26, align 8
  %99 = load %struct.sway_seat*, %struct.sway_seat** %26, align 8
  %100 = load %struct.sway_cursor*, %struct.sway_cursor** %11, align 8
  %101 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sway_cursor*, %struct.sway_cursor** %11, align 8
  %106 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @node_at_coords(%struct.sway_seat* %99, i32 %104, i32 %109, %struct.wlr_surface** %25, double* %23, double* %24)
  %111 = load %struct.wlr_tablet_tool*, %struct.wlr_tablet_tool** %13, align 8
  %112 = getelementptr inbounds %struct.wlr_tablet_tool, %struct.wlr_tablet_tool* %111, i32 0, i32 1
  %113 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %112, align 8
  store %struct.sway_tablet_tool* %113, %struct.sway_tablet_tool** %27, align 8
  %114 = load %struct.wlr_surface*, %struct.wlr_surface** %25, align 8
  %115 = icmp ne %struct.wlr_surface* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %95
  %117 = load %struct.sway_tablet*, %struct.sway_tablet** %12, align 8
  %118 = getelementptr inbounds %struct.sway_tablet, %struct.sway_tablet* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.wlr_surface*, %struct.wlr_surface** %25, align 8
  %121 = call i32 @wlr_surface_accepts_tablet_v2(i32 %119, %struct.wlr_surface* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %138, label %123

123:                                              ; preds = %116, %95
  %124 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %27, align 8
  %125 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @wlr_tablet_v2_tablet_tool_notify_proximity_out(i32 %126)
  %128 = load %struct.sway_cursor*, %struct.sway_cursor** %11, align 8
  %129 = load i32, i32* %20, align 4
  %130 = load %struct.sway_input_device*, %struct.sway_input_device** %21, align 8
  %131 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load double, double* %18, align 8
  %134 = load double, double* %19, align 8
  %135 = load double, double* %18, align 8
  %136 = load double, double* %19, align 8
  %137 = call i32 @cursor_motion(%struct.sway_cursor* %128, i32 %129, i32 %132, double %133, double %134, double %135, double %136)
  br label %153

138:                                              ; preds = %116
  %139 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %27, align 8
  %140 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.sway_tablet*, %struct.sway_tablet** %12, align 8
  %143 = getelementptr inbounds %struct.sway_tablet, %struct.sway_tablet* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.wlr_surface*, %struct.wlr_surface** %25, align 8
  %146 = call i32 @wlr_tablet_v2_tablet_tool_notify_proximity_in(i32 %141, i32 %144, %struct.wlr_surface* %145)
  %147 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %27, align 8
  %148 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load double, double* %23, align 8
  %151 = load double, double* %24, align 8
  %152 = call i32 @wlr_tablet_v2_tablet_tool_notify_motion(i32 %149, double %150, double %151)
  br label %153

153:                                              ; preds = %138, %123, %33
  ret void
}

declare dso_local %struct.input_config* @input_device_get_config(%struct.sway_input_device*) #1

declare dso_local i32 @apply_mapping_from_region(i32, i32*, double*, double*) #1

declare dso_local i32 @wlr_cursor_move(%struct.TYPE_5__*, i32, double, double) #1

declare dso_local i32 @wlr_cursor_warp_absolute(%struct.TYPE_5__*, i32, double, double) #1

declare dso_local i32 @node_at_coords(%struct.sway_seat*, i32, i32, %struct.wlr_surface**, double*, double*) #1

declare dso_local i32 @wlr_surface_accepts_tablet_v2(i32, %struct.wlr_surface*) #1

declare dso_local i32 @wlr_tablet_v2_tablet_tool_notify_proximity_out(i32) #1

declare dso_local i32 @cursor_motion(%struct.sway_cursor*, i32, i32, double, double, double, double) #1

declare dso_local i32 @wlr_tablet_v2_tablet_tool_notify_proximity_in(i32, i32, %struct.wlr_surface*) #1

declare dso_local i32 @wlr_tablet_v2_tablet_tool_notify_motion(i32, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

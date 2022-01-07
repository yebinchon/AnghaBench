; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_switch.c_handle_switch_toggle.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_switch.c_handle_switch_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.sway_switch = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { %struct.wlr_input_device* }
%struct.wlr_input_device = type { i32 }
%struct.TYPE_7__ = type { %struct.wlr_seat* }
%struct.wlr_seat = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_event_switch_toggle = type { i32, i32 }

@switch_toggle = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: type %d state %d\00", align 1
@sway_switch = common dso_local global %struct.sway_switch* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_switch_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_switch_toggle(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_switch*, align 8
  %6 = alloca %struct.wlr_event_switch_toggle*, align 8
  %7 = alloca %struct.wlr_seat*, align 8
  %8 = alloca %struct.wlr_input_device*, align 8
  %9 = alloca i8*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %11 = load %struct.sway_switch*, %struct.sway_switch** %5, align 8
  %12 = ptrtoint %struct.sway_switch* %11 to i32
  %13 = load i32, i32* @switch_toggle, align 4
  %14 = call %struct.sway_switch* @wl_container_of(%struct.wl_listener* %10, i32 %12, i32 %13)
  store %struct.sway_switch* %14, %struct.sway_switch** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.wlr_event_switch_toggle*
  store %struct.wlr_event_switch_toggle* %16, %struct.wlr_event_switch_toggle** %6, align 8
  %17 = load %struct.sway_switch*, %struct.sway_switch** %5, align 8
  %18 = getelementptr inbounds %struct.sway_switch, %struct.sway_switch* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.wlr_seat*, %struct.wlr_seat** %22, align 8
  store %struct.wlr_seat* %23, %struct.wlr_seat** %7, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 4
  %25 = load %struct.wlr_seat*, %struct.wlr_seat** %7, align 8
  %26 = call i32 @wlr_idle_notify_activity(i32 %24, %struct.wlr_seat* %25)
  %27 = load %struct.sway_switch*, %struct.sway_switch** %5, align 8
  %28 = getelementptr inbounds %struct.sway_switch, %struct.sway_switch* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.wlr_input_device*, %struct.wlr_input_device** %32, align 8
  store %struct.wlr_input_device* %33, %struct.wlr_input_device** %8, align 8
  %34 = load %struct.wlr_input_device*, %struct.wlr_input_device** %8, align 8
  %35 = call i8* @input_device_get_identifier(%struct.wlr_input_device* %34)
  store i8* %35, i8** %9, align 8
  %36 = load i32, i32* @SWAY_DEBUG, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.wlr_event_switch_toggle*, %struct.wlr_event_switch_toggle** %6, align 8
  %39 = getelementptr inbounds %struct.wlr_event_switch_toggle, %struct.wlr_event_switch_toggle* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wlr_event_switch_toggle*, %struct.wlr_event_switch_toggle** %6, align 8
  %42 = getelementptr inbounds %struct.wlr_event_switch_toggle, %struct.wlr_event_switch_toggle* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sway_log(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %40, i32 %43)
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load %struct.wlr_event_switch_toggle*, %struct.wlr_event_switch_toggle** %6, align 8
  %48 = getelementptr inbounds %struct.wlr_event_switch_toggle, %struct.wlr_event_switch_toggle* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sway_switch*, %struct.sway_switch** %5, align 8
  %51 = getelementptr inbounds %struct.sway_switch, %struct.sway_switch* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.wlr_event_switch_toggle*, %struct.wlr_event_switch_toggle** %6, align 8
  %53 = getelementptr inbounds %struct.wlr_event_switch_toggle, %struct.wlr_event_switch_toggle* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sway_switch*, %struct.sway_switch** %5, align 8
  %56 = getelementptr inbounds %struct.sway_switch, %struct.sway_switch* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.sway_switch*, %struct.sway_switch** %5, align 8
  %58 = call i32 @execute_binding(%struct.sway_switch* %57)
  ret void
}

declare dso_local %struct.sway_switch* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wlr_idle_notify_activity(i32, %struct.wlr_seat*) #1

declare dso_local i8* @input_device_get_identifier(%struct.wlr_input_device*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @execute_binding(%struct.sway_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

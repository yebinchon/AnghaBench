; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_switch.c_sway_switch_configure.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_switch.c_sway_switch_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_switch = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.wlr_input_device* }
%struct.wlr_input_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@handle_switch_toggle = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Configured switch for device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sway_switch_configure(%struct.sway_switch* %0) #0 {
  %2 = alloca %struct.sway_switch*, align 8
  %3 = alloca %struct.wlr_input_device*, align 8
  store %struct.sway_switch* %0, %struct.sway_switch** %2, align 8
  %4 = load %struct.sway_switch*, %struct.sway_switch** %2, align 8
  %5 = getelementptr inbounds %struct.sway_switch, %struct.sway_switch* %4, i32 0, i32 1
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.wlr_input_device*, %struct.wlr_input_device** %9, align 8
  store %struct.wlr_input_device* %10, %struct.wlr_input_device** %3, align 8
  %11 = load %struct.sway_switch*, %struct.sway_switch** %2, align 8
  %12 = getelementptr inbounds %struct.sway_switch, %struct.sway_switch* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = call i32 @wl_list_remove(i32* %13)
  %15 = load %struct.wlr_input_device*, %struct.wlr_input_device** %3, align 8
  %16 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.sway_switch*, %struct.sway_switch** %2, align 8
  %21 = getelementptr inbounds %struct.sway_switch, %struct.sway_switch* %20, i32 0, i32 0
  %22 = call i32 @wl_signal_add(i32* %19, %struct.TYPE_10__* %21)
  %23 = load i32, i32* @handle_switch_toggle, align 4
  %24 = load %struct.sway_switch*, %struct.sway_switch** %2, align 8
  %25 = getelementptr inbounds %struct.sway_switch, %struct.sway_switch* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @SWAY_DEBUG, align 4
  %28 = call i32 @sway_log(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @sway_log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

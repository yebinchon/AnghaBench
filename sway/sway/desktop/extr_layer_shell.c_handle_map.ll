; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_handle_map.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_handle_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_layer_surface = type { %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.sway_output* }
%struct.sway_output = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.wl_listener = type { i32 }

@map = common dso_local global i32 0, align 4
@sway_layer = common dso_local global %struct.sway_layer_surface* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_map(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_layer_surface*, align 8
  %6 = alloca %struct.sway_output*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %8 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %9 = ptrtoint %struct.sway_layer_surface* %8 to i32
  %10 = load i32, i32* @map, align 4
  %11 = call %struct.sway_layer_surface* @wl_container_of(%struct.wl_listener* %7, i32 %9, i32 %10)
  store %struct.sway_layer_surface* %11, %struct.sway_layer_surface** %5, align 8
  %12 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %13 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.sway_output*, %struct.sway_output** %17, align 8
  store %struct.sway_output* %18, %struct.sway_output** %6, align 8
  %19 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %20 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %21 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %25 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %29 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @output_damage_surface(%struct.sway_output* %19, i32 %23, i32 %27, i32 %32, i32 1)
  %34 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %35 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %40 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call i32 @wlr_surface_send_enter(i32 %38, %struct.TYPE_6__* %43)
  %45 = call i32 (...) @cursor_rebase_all()
  ret void
}

declare dso_local %struct.sway_layer_surface* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @output_damage_surface(%struct.sway_output*, i32, i32, i32, i32) #1

declare dso_local i32 @wlr_surface_send_enter(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @cursor_rebase_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

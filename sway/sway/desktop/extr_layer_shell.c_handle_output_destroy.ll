; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_handle_output_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_handle_output_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_layer_surface = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wl_listener = type { i32 }
%struct.sway_seat = type { %struct.wl_client* }
%struct.wl_client = type { i32 }

@output_destroy = common dso_local global i32 0, align 4
@sway_layer = common dso_local global %struct.sway_layer_surface* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_output_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_output_destroy(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_layer_surface*, align 8
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca %struct.wl_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sway_layer_surface*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %11 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %12 = ptrtoint %struct.sway_layer_surface* %11 to i32
  %13 = load i32, i32* @output_destroy, align 4
  %14 = call %struct.sway_layer_surface* @wl_container_of(%struct.wl_listener* %10, i32 %12, i32 %13)
  store %struct.sway_layer_surface* %14, %struct.sway_layer_surface** %5, align 8
  %15 = call %struct.sway_seat* (...) @input_manager_get_default_seat()
  store %struct.sway_seat* %15, %struct.sway_seat** %6, align 8
  %16 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %17 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.wl_client* @wl_resource_get_client(i32 %20)
  store %struct.wl_client* %21, %struct.wl_client** %7, align 8
  %22 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %23 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %22, i32 0, i32 0
  %24 = load %struct.wl_client*, %struct.wl_client** %23, align 8
  %25 = load %struct.wl_client*, %struct.wl_client** %7, align 8
  %26 = icmp eq %struct.wl_client* %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %29 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @wl_list_remove(i32* %30)
  %32 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %33 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %32, i32 0, i32 1
  %34 = call i32 @wl_list_remove(i32* %33)
  %35 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %36 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %35, i32 0, i32 1
  %37 = call i32 @wl_list_init(i32* %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %2
  %41 = load %struct.wl_client*, %struct.wl_client** %7, align 8
  %42 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %43 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call %struct.sway_layer_surface* @find_any_layer_by_client(%struct.wl_client* %41, i32* %46)
  store %struct.sway_layer_surface* %47, %struct.sway_layer_surface** %9, align 8
  %48 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %49 = icmp ne %struct.sway_layer_surface* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %52 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %53 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = call i32 @seat_set_focus_layer(%struct.sway_seat* %51, %struct.TYPE_5__* %54)
  br label %56

56:                                               ; preds = %50, %40
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %59 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %63 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = call i32 @wlr_layer_surface_v1_close(%struct.TYPE_5__* %64)
  ret void
}

declare dso_local %struct.sway_layer_surface* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local %struct.sway_seat* @input_manager_get_default_seat(...) #1

declare dso_local %struct.wl_client* @wl_resource_get_client(i32) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @wl_list_init(i32*) #1

declare dso_local %struct.sway_layer_surface* @find_any_layer_by_client(%struct.wl_client*, i32*) #1

declare dso_local i32 @seat_set_focus_layer(%struct.sway_seat*, %struct.TYPE_5__*) #1

declare dso_local i32 @wlr_layer_surface_v1_close(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

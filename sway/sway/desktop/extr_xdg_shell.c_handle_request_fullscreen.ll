; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_handle_request_fullscreen.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_handle_request_fullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xdg_shell_view = type { %struct.sway_view }
%struct.sway_view = type { i32, %struct.wlr_xdg_surface* }
%struct.wlr_xdg_surface = type { i64, i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_xdg_toplevel_set_fullscreen_event = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sway_output* }
%struct.sway_output = type { i32 }
%struct.sway_workspace = type { i32 }

@request_fullscreen = common dso_local global i32 0, align 4
@WLR_XDG_SURFACE_ROLE_TOPLEVEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"xdg_shell requested fullscreen of surface with role %i\00", align 1
@xdg_shell_view = common dso_local global %struct.sway_xdg_shell_view* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_request_fullscreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_request_fullscreen(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xdg_shell_view*, align 8
  %6 = alloca %struct.wlr_xdg_toplevel_set_fullscreen_event*, align 8
  %7 = alloca %struct.wlr_xdg_surface*, align 8
  %8 = alloca %struct.sway_view*, align 8
  %9 = alloca %struct.sway_output*, align 8
  %10 = alloca %struct.sway_workspace*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %12 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %13 = ptrtoint %struct.sway_xdg_shell_view* %12 to i32
  %14 = load i32, i32* @request_fullscreen, align 4
  %15 = call %struct.sway_xdg_shell_view* @wl_container_of(%struct.wl_listener* %11, i32 %13, i32 %14)
  store %struct.sway_xdg_shell_view* %15, %struct.sway_xdg_shell_view** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.wlr_xdg_toplevel_set_fullscreen_event*
  store %struct.wlr_xdg_toplevel_set_fullscreen_event* %17, %struct.wlr_xdg_toplevel_set_fullscreen_event** %6, align 8
  %18 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %19 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %19, i32 0, i32 1
  %21 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %20, align 8
  store %struct.wlr_xdg_surface* %21, %struct.wlr_xdg_surface** %7, align 8
  %22 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %23 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %22, i32 0, i32 0
  store %struct.sway_view* %23, %struct.sway_view** %8, align 8
  %24 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %7, align 8
  %25 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @WLR_XDG_SURFACE_ROLE_TOPLEVEL, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %7, align 8
  %31 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @sway_assert(i32 %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  br label %105

36:                                               ; preds = %2
  %37 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %7, align 8
  %38 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %105

42:                                               ; preds = %36
  %43 = load %struct.wlr_xdg_toplevel_set_fullscreen_event*, %struct.wlr_xdg_toplevel_set_fullscreen_event** %6, align 8
  %44 = getelementptr inbounds %struct.wlr_xdg_toplevel_set_fullscreen_event, %struct.wlr_xdg_toplevel_set_fullscreen_event* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %95

47:                                               ; preds = %42
  %48 = load %struct.wlr_xdg_toplevel_set_fullscreen_event*, %struct.wlr_xdg_toplevel_set_fullscreen_event** %6, align 8
  %49 = getelementptr inbounds %struct.wlr_xdg_toplevel_set_fullscreen_event, %struct.wlr_xdg_toplevel_set_fullscreen_event* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %95

52:                                               ; preds = %47
  %53 = load %struct.wlr_xdg_toplevel_set_fullscreen_event*, %struct.wlr_xdg_toplevel_set_fullscreen_event** %6, align 8
  %54 = getelementptr inbounds %struct.wlr_xdg_toplevel_set_fullscreen_event, %struct.wlr_xdg_toplevel_set_fullscreen_event* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.sway_output*, %struct.sway_output** %56, align 8
  %58 = icmp ne %struct.sway_output* %57, null
  br i1 %58, label %59, label %95

59:                                               ; preds = %52
  %60 = load %struct.wlr_xdg_toplevel_set_fullscreen_event*, %struct.wlr_xdg_toplevel_set_fullscreen_event** %6, align 8
  %61 = getelementptr inbounds %struct.wlr_xdg_toplevel_set_fullscreen_event, %struct.wlr_xdg_toplevel_set_fullscreen_event* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.sway_output*, %struct.sway_output** %63, align 8
  store %struct.sway_output* %64, %struct.sway_output** %9, align 8
  %65 = load %struct.sway_output*, %struct.sway_output** %9, align 8
  %66 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %65)
  store %struct.sway_workspace* %66, %struct.sway_workspace** %10, align 8
  %67 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %68 = icmp ne %struct.sway_workspace* %67, null
  br i1 %68, label %69, label %94

69:                                               ; preds = %59
  %70 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %71 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @container_is_scratchpad_hidden(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %94, label %75

75:                                               ; preds = %69
  %76 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %77 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @container_is_floating(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %83 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %84 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @workspace_add_floating(%struct.sway_workspace* %82, i32 %85)
  br label %93

87:                                               ; preds = %75
  %88 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %89 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %90 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @workspace_add_tiling(%struct.sway_workspace* %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %81
  br label %94

94:                                               ; preds = %93, %69, %59
  br label %95

95:                                               ; preds = %94, %52, %47, %42
  %96 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %97 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.wlr_xdg_toplevel_set_fullscreen_event*, %struct.wlr_xdg_toplevel_set_fullscreen_event** %6, align 8
  %100 = getelementptr inbounds %struct.wlr_xdg_toplevel_set_fullscreen_event, %struct.wlr_xdg_toplevel_set_fullscreen_event* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @container_set_fullscreen(i32 %98, i64 %101)
  %103 = call i32 (...) @arrange_root()
  %104 = call i32 (...) @transaction_commit_dirty()
  br label %105

105:                                              ; preds = %95, %41, %35
  ret void
}

declare dso_local %struct.sway_xdg_shell_view* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @sway_assert(i32, i8*, i64) #1

declare dso_local %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output*) #1

declare dso_local i32 @container_is_scratchpad_hidden(i32) #1

declare dso_local i64 @container_is_floating(i32) #1

declare dso_local i32 @workspace_add_floating(%struct.sway_workspace*, i32) #1

declare dso_local i32 @workspace_add_tiling(%struct.sway_workspace*, i32) #1

declare dso_local i32 @container_set_fullscreen(i32, i64) #1

declare dso_local i32 @arrange_root(...) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

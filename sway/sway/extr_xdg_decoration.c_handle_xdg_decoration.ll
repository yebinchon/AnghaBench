; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_xdg_decoration.c_handle_xdg_decoration.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_xdg_decoration.c_handle_xdg_decoration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_xdg_toplevel_decoration_v1 = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.sway_xdg_shell_view* }
%struct.sway_xdg_shell_view = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.sway_xdg_decoration* }
%struct.sway_xdg_decoration = type { %struct.TYPE_11__, i32, %struct.TYPE_11__, %struct.wlr_xdg_toplevel_decoration_v1*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, %struct.wlr_xdg_toplevel_decoration_v1*)* }

@server = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_xdg_decoration(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wlr_xdg_toplevel_decoration_v1*, align 8
  %6 = alloca %struct.sway_xdg_shell_view*, align 8
  %7 = alloca %struct.sway_xdg_decoration*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wlr_xdg_toplevel_decoration_v1*
  store %struct.wlr_xdg_toplevel_decoration_v1* %9, %struct.wlr_xdg_toplevel_decoration_v1** %5, align 8
  %10 = load %struct.wlr_xdg_toplevel_decoration_v1*, %struct.wlr_xdg_toplevel_decoration_v1** %5, align 8
  %11 = getelementptr inbounds %struct.wlr_xdg_toplevel_decoration_v1, %struct.wlr_xdg_toplevel_decoration_v1* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %13, align 8
  store %struct.sway_xdg_shell_view* %14, %struct.sway_xdg_shell_view** %6, align 8
  %15 = call %struct.sway_xdg_decoration* @calloc(i32 1, i32 40)
  store %struct.sway_xdg_decoration* %15, %struct.sway_xdg_decoration** %7, align 8
  %16 = load %struct.sway_xdg_decoration*, %struct.sway_xdg_decoration** %7, align 8
  %17 = icmp eq %struct.sway_xdg_decoration* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %6, align 8
  %21 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %20, i32 0, i32 0
  %22 = load %struct.sway_xdg_decoration*, %struct.sway_xdg_decoration** %7, align 8
  %23 = getelementptr inbounds %struct.sway_xdg_decoration, %struct.sway_xdg_decoration* %22, i32 0, i32 4
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %23, align 8
  %24 = load %struct.sway_xdg_decoration*, %struct.sway_xdg_decoration** %7, align 8
  %25 = load %struct.sway_xdg_decoration*, %struct.sway_xdg_decoration** %7, align 8
  %26 = getelementptr inbounds %struct.sway_xdg_decoration, %struct.sway_xdg_decoration* %25, i32 0, i32 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store %struct.sway_xdg_decoration* %24, %struct.sway_xdg_decoration** %28, align 8
  %29 = load %struct.wlr_xdg_toplevel_decoration_v1*, %struct.wlr_xdg_toplevel_decoration_v1** %5, align 8
  %30 = load %struct.sway_xdg_decoration*, %struct.sway_xdg_decoration** %7, align 8
  %31 = getelementptr inbounds %struct.sway_xdg_decoration, %struct.sway_xdg_decoration* %30, i32 0, i32 3
  store %struct.wlr_xdg_toplevel_decoration_v1* %29, %struct.wlr_xdg_toplevel_decoration_v1** %31, align 8
  %32 = load %struct.wlr_xdg_toplevel_decoration_v1*, %struct.wlr_xdg_toplevel_decoration_v1** %5, align 8
  %33 = getelementptr inbounds %struct.wlr_xdg_toplevel_decoration_v1, %struct.wlr_xdg_toplevel_decoration_v1* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.sway_xdg_decoration*, %struct.sway_xdg_decoration** %7, align 8
  %36 = getelementptr inbounds %struct.sway_xdg_decoration, %struct.sway_xdg_decoration* %35, i32 0, i32 2
  %37 = call i32 @wl_signal_add(i32* %34, %struct.TYPE_11__* %36)
  %38 = load %struct.sway_xdg_decoration*, %struct.sway_xdg_decoration** %7, align 8
  %39 = getelementptr inbounds %struct.sway_xdg_decoration, %struct.sway_xdg_decoration* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  store i32 (%struct.TYPE_11__*, %struct.wlr_xdg_toplevel_decoration_v1*)* @xdg_decoration_handle_destroy, i32 (%struct.TYPE_11__*, %struct.wlr_xdg_toplevel_decoration_v1*)** %40, align 8
  %41 = load %struct.wlr_xdg_toplevel_decoration_v1*, %struct.wlr_xdg_toplevel_decoration_v1** %5, align 8
  %42 = getelementptr inbounds %struct.wlr_xdg_toplevel_decoration_v1, %struct.wlr_xdg_toplevel_decoration_v1* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.sway_xdg_decoration*, %struct.sway_xdg_decoration** %7, align 8
  %45 = getelementptr inbounds %struct.sway_xdg_decoration, %struct.sway_xdg_decoration* %44, i32 0, i32 0
  %46 = call i32 @wl_signal_add(i32* %43, %struct.TYPE_11__* %45)
  %47 = load %struct.sway_xdg_decoration*, %struct.sway_xdg_decoration** %7, align 8
  %48 = getelementptr inbounds %struct.sway_xdg_decoration, %struct.sway_xdg_decoration* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 (%struct.TYPE_11__*, %struct.wlr_xdg_toplevel_decoration_v1*)* @xdg_decoration_handle_request_mode, i32 (%struct.TYPE_11__*, %struct.wlr_xdg_toplevel_decoration_v1*)** %49, align 8
  %50 = load %struct.sway_xdg_decoration*, %struct.sway_xdg_decoration** %7, align 8
  %51 = getelementptr inbounds %struct.sway_xdg_decoration, %struct.sway_xdg_decoration* %50, i32 0, i32 1
  %52 = call i32 @wl_list_insert(i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), i32* %51)
  %53 = load %struct.sway_xdg_decoration*, %struct.sway_xdg_decoration** %7, align 8
  %54 = getelementptr inbounds %struct.sway_xdg_decoration, %struct.sway_xdg_decoration* %53, i32 0, i32 0
  %55 = load %struct.wlr_xdg_toplevel_decoration_v1*, %struct.wlr_xdg_toplevel_decoration_v1** %5, align 8
  %56 = call i32 @xdg_decoration_handle_request_mode(%struct.TYPE_11__* %54, %struct.wlr_xdg_toplevel_decoration_v1* %55)
  br label %57

57:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.sway_xdg_decoration* @calloc(i32, i32) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @xdg_decoration_handle_destroy(%struct.TYPE_11__*, %struct.wlr_xdg_toplevel_decoration_v1*) #1

declare dso_local i32 @xdg_decoration_handle_request_mode(%struct.TYPE_11__*, %struct.wlr_xdg_toplevel_decoration_v1*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

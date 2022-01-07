; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_handle_unmap.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_handle_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xdg_shell_view = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.sway_view }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sway_view = type { i32 }
%struct.wl_listener = type { i32 }

@unmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Cannot unmap unmapped view\00", align 1
@xdg_shell_view = common dso_local global %struct.sway_xdg_shell_view* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_unmap(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xdg_shell_view*, align 8
  %6 = alloca %struct.sway_view*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %8 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %9 = ptrtoint %struct.sway_xdg_shell_view* %8 to i32
  %10 = load i32, i32* @unmap, align 4
  %11 = call %struct.sway_xdg_shell_view* @wl_container_of(%struct.wl_listener* %7, i32 %9, i32 %10)
  store %struct.sway_xdg_shell_view* %11, %struct.sway_xdg_shell_view** %5, align 8
  %12 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %13 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %12, i32 0, i32 7
  store %struct.sway_view* %13, %struct.sway_view** %6, align 8
  %14 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %15 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sway_assert(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %51

20:                                               ; preds = %2
  %21 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %22 = call i32 @view_unmap(%struct.sway_view* %21)
  %23 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %24 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 @wl_list_remove(i32* %25)
  %27 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %28 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = call i32 @wl_list_remove(i32* %29)
  %31 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %32 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = call i32 @wl_list_remove(i32* %33)
  %35 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %36 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = call i32 @wl_list_remove(i32* %37)
  %39 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %40 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = call i32 @wl_list_remove(i32* %41)
  %43 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %44 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = call i32 @wl_list_remove(i32* %45)
  %47 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %48 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = call i32 @wl_list_remove(i32* %49)
  br label %51

51:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.sway_xdg_shell_view* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @view_unmap(%struct.sway_view*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

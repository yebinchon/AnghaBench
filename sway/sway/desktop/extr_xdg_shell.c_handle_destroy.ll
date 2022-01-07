; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_handle_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_handle_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xdg_shell_view = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.sway_view }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sway_view = type { %struct.TYPE_8__*, i32*, i32* }
%struct.TYPE_8__ = type { i32* }
%struct.wl_listener = type { i32 }

@destroy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Tried to destroy a mapped view\00", align 1
@xdg_shell_view = common dso_local global %struct.sway_xdg_shell_view* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_destroy(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xdg_shell_view*, align 8
  %6 = alloca %struct.sway_view*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %8 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %9 = ptrtoint %struct.sway_xdg_shell_view* %8 to i32
  %10 = load i32, i32* @destroy, align 4
  %11 = call %struct.sway_xdg_shell_view* @wl_container_of(%struct.wl_listener* %7, i32 %9, i32 %10)
  store %struct.sway_xdg_shell_view* %11, %struct.sway_xdg_shell_view** %5, align 8
  %12 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %13 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %12, i32 0, i32 3
  store %struct.sway_view* %13, %struct.sway_view** %6, align 8
  %14 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %15 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @sway_assert(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %49

22:                                               ; preds = %2
  %23 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %24 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @wl_list_remove(i32* %25)
  %27 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %28 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @wl_list_remove(i32* %29)
  %31 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %32 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = call i32 @wl_list_remove(i32* %33)
  %35 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %36 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %38 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %22
  %42 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %43 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %41, %22
  %47 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %48 = call i32 @view_begin_destroy(%struct.sway_view* %47)
  br label %49

49:                                               ; preds = %46, %21
  ret void
}

declare dso_local %struct.sway_xdg_shell_view* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @view_begin_destroy(%struct.sway_view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

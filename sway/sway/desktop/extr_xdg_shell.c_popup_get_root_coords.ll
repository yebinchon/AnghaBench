; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_popup_get_root_coords.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_popup_get_root_coords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view_child = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sway_xdg_popup = type { %struct.wlr_xdg_surface* }
%struct.wlr_xdg_surface = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_view_child*, i32*, i32*)* @popup_get_root_coords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @popup_get_root_coords(%struct.sway_view_child* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.sway_view_child*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sway_xdg_popup*, align 8
  %8 = alloca %struct.wlr_xdg_surface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sway_view_child* %0, %struct.sway_view_child** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.sway_view_child*, %struct.sway_view_child** %4, align 8
  %12 = bitcast %struct.sway_view_child* %11 to %struct.sway_xdg_popup*
  store %struct.sway_xdg_popup* %12, %struct.sway_xdg_popup** %7, align 8
  %13 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %7, align 8
  %14 = getelementptr inbounds %struct.sway_xdg_popup, %struct.sway_xdg_popup* %13, i32 0, i32 0
  %15 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %14, align 8
  store %struct.wlr_xdg_surface* %15, %struct.wlr_xdg_surface** %8, align 8
  %16 = load %struct.sway_view_child*, %struct.sway_view_child** %4, align 8
  %17 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 0, %21
  %23 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %8, align 8
  %24 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %22, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.sway_view_child*, %struct.sway_view_child** %4, align 8
  %29 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %8, align 8
  %36 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %34, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %8, align 8
  %41 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %8, align 8
  %46 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %44, %50
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %8, align 8
  %55 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %53, %59
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @wlr_xdg_popup_get_toplevel_coords(%struct.TYPE_10__* %42, i64 %51, i64 %60, i32* %61, i32* %62)
  ret void
}

declare dso_local i32 @wlr_xdg_popup_get_toplevel_coords(%struct.TYPE_10__*, i64, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

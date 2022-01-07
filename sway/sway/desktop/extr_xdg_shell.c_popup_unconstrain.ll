; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_popup_unconstrain.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_popup_unconstrain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xdg_popup = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.wlr_xdg_popup* }
%struct.wlr_xdg_popup = type { i32 }
%struct.TYPE_7__ = type { %struct.sway_view* }
%struct.sway_view = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sway_output* }
%struct.sway_output = type { i32, i32, i64, i64 }
%struct.wlr_box = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_xdg_popup*)* @popup_unconstrain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @popup_unconstrain(%struct.sway_xdg_popup* %0) #0 {
  %2 = alloca %struct.sway_xdg_popup*, align 8
  %3 = alloca %struct.sway_view*, align 8
  %4 = alloca %struct.wlr_xdg_popup*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca %struct.wlr_box, align 8
  store %struct.sway_xdg_popup* %0, %struct.sway_xdg_popup** %2, align 8
  %7 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %2, align 8
  %8 = getelementptr inbounds %struct.sway_xdg_popup, %struct.sway_xdg_popup* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.sway_view*, %struct.sway_view** %9, align 8
  store %struct.sway_view* %10, %struct.sway_view** %3, align 8
  %11 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %2, align 8
  %12 = getelementptr inbounds %struct.sway_xdg_popup, %struct.sway_xdg_popup* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %14, align 8
  store %struct.wlr_xdg_popup* %15, %struct.wlr_xdg_popup** %4, align 8
  %16 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %17 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.sway_output*, %struct.sway_output** %21, align 8
  store %struct.sway_output* %22, %struct.sway_output** %5, align 8
  %23 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 0
  %24 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %25 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %23, align 8
  %27 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 1
  %28 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %29 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 4
  %31 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 2
  %32 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %33 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %36 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %34, %39
  store i64 %40, i64* %31, align 8
  %41 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 3
  %42 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %43 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %46 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %44, %49
  store i64 %50, i64* %41, align 8
  %51 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %4, align 8
  %52 = call i32 @wlr_xdg_popup_unconstrain_from_box(%struct.wlr_xdg_popup* %51, %struct.wlr_box* %6)
  ret void
}

declare dso_local i32 @wlr_xdg_popup_unconstrain_from_box(%struct.wlr_xdg_popup*, %struct.wlr_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

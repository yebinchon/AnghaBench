; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_desktop.c_desktop_damage_view.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_desktop.c_desktop_damage_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_7__*, %struct.TYPE_8__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.wlr_box = type { i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @desktop_damage_view(%struct.sway_view* %0) #0 {
  %2 = alloca %struct.sway_view*, align 8
  %3 = alloca %struct.wlr_box, align 8
  store %struct.sway_view* %0, %struct.sway_view** %2, align 8
  %4 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %5 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %4, i32 0, i32 2
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = call i32 @desktop_damage_whole_container(%struct.TYPE_10__* %6)
  %8 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %3, i32 0, i32 0
  %9 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %10 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 8
  %15 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %3, i32 0, i32 1
  %16 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %17 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %3, i32 0, i32 2
  %23 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %24 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %30 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %28, %32
  store i64 %33, i64* %22, align 8
  %34 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %3, i32 0, i32 3
  %35 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %36 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %35, i32 0, i32 2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %42 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %40, %44
  store i64 %45, i64* %34, align 8
  %46 = call i32 @desktop_damage_box(%struct.wlr_box* %3)
  ret void
}

declare dso_local i32 @desktop_damage_whole_container(%struct.TYPE_10__*) #1

declare dso_local i32 @desktop_damage_box(%struct.wlr_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

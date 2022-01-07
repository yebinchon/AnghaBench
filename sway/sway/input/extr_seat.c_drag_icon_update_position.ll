; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_drag_icon_update_position.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_drag_icon_update_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_drag_icon = type { i32, i32, %struct.sway_seat*, %struct.wlr_drag_icon* }
%struct.sway_seat = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wlr_cursor* }
%struct.wlr_cursor = type { i32, i32 }
%struct.wlr_drag_icon = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wlr_touch_point = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drag_icon_update_position(%struct.sway_drag_icon* %0) #0 {
  %2 = alloca %struct.sway_drag_icon*, align 8
  %3 = alloca %struct.wlr_drag_icon*, align 8
  %4 = alloca %struct.sway_seat*, align 8
  %5 = alloca %struct.wlr_cursor*, align 8
  %6 = alloca %struct.wlr_touch_point*, align 8
  store %struct.sway_drag_icon* %0, %struct.sway_drag_icon** %2, align 8
  %7 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %2, align 8
  %8 = call i32 @drag_icon_damage_whole(%struct.sway_drag_icon* %7)
  %9 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %2, align 8
  %10 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %9, i32 0, i32 3
  %11 = load %struct.wlr_drag_icon*, %struct.wlr_drag_icon** %10, align 8
  store %struct.wlr_drag_icon* %11, %struct.wlr_drag_icon** %3, align 8
  %12 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %2, align 8
  %13 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %12, i32 0, i32 2
  %14 = load %struct.sway_seat*, %struct.sway_seat** %13, align 8
  store %struct.sway_seat* %14, %struct.sway_seat** %4, align 8
  %15 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %16 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.wlr_cursor*, %struct.wlr_cursor** %18, align 8
  store %struct.wlr_cursor* %19, %struct.wlr_cursor** %5, align 8
  %20 = load %struct.wlr_drag_icon*, %struct.wlr_drag_icon** %3, align 8
  %21 = getelementptr inbounds %struct.wlr_drag_icon, %struct.wlr_drag_icon* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %61 [
    i32 130, label %25
    i32 129, label %26
    i32 128, label %37
  ]

25:                                               ; preds = %1
  br label %64

26:                                               ; preds = %1
  %27 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %28 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %2, align 8
  %31 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %33 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %2, align 8
  %36 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %61

37:                                               ; preds = %1
  %38 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %39 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.wlr_drag_icon*, %struct.wlr_drag_icon** %3, align 8
  %42 = getelementptr inbounds %struct.wlr_drag_icon, %struct.wlr_drag_icon* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.wlr_touch_point* @wlr_seat_touch_get_point(i32 %40, i32 %45)
  store %struct.wlr_touch_point* %46, %struct.wlr_touch_point** %6, align 8
  %47 = load %struct.wlr_touch_point*, %struct.wlr_touch_point** %6, align 8
  %48 = icmp eq %struct.wlr_touch_point* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %64

50:                                               ; preds = %37
  %51 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %52 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %2, align 8
  %55 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %57 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %2, align 8
  %60 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %50, %1, %26
  %62 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %2, align 8
  %63 = call i32 @drag_icon_damage_whole(%struct.sway_drag_icon* %62)
  br label %64

64:                                               ; preds = %61, %49, %25
  ret void
}

declare dso_local i32 @drag_icon_damage_whole(%struct.sway_drag_icon*) #1

declare dso_local %struct.wlr_touch_point* @wlr_seat_touch_get_point(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

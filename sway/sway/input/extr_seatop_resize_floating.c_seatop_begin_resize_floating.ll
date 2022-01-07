; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_resize_floating.c_seatop_begin_resize_floating.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_resize_floating.c_seatop_begin_resize_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32, %struct.TYPE_4__*, %struct.seatop_resize_floating_event*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.seatop_resize_floating_event = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.sway_container* }
%struct.sway_container = type { i32, i32, i32, i32 }
%struct.wlr_keyboard = type { i32 }

@WLR_MODIFIER_SHIFT = common dso_local global i32 0, align 4
@WLR_EDGE_NONE = common dso_local global i32 0, align 4
@WLR_EDGE_BOTTOM = common dso_local global i32 0, align 4
@WLR_EDGE_RIGHT = common dso_local global i32 0, align 4
@seatop_impl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"se-resize\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seatop_begin_resize_floating(%struct.sway_seat* %0, %struct.sway_container* %1, i32 %2) #0 {
  %4 = alloca %struct.sway_seat*, align 8
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.seatop_resize_floating_event*, align 8
  %8 = alloca %struct.wlr_keyboard*, align 8
  %9 = alloca i8*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %4, align 8
  store %struct.sway_container* %1, %struct.sway_container** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %11 = call i32 @seatop_end(%struct.sway_seat* %10)
  %12 = call %struct.seatop_resize_floating_event* @calloc(i32 1, i32 40)
  store %struct.seatop_resize_floating_event* %12, %struct.seatop_resize_floating_event** %7, align 8
  %13 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %7, align 8
  %14 = icmp ne %struct.seatop_resize_floating_event* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %113

16:                                               ; preds = %3
  %17 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %18 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %7, align 8
  %19 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %18, i32 0, i32 8
  store %struct.sway_container* %17, %struct.sway_container** %19, align 8
  %20 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %21 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.wlr_keyboard* @wlr_seat_get_keyboard(i32 %22)
  store %struct.wlr_keyboard* %23, %struct.wlr_keyboard** %8, align 8
  %24 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %8, align 8
  %25 = icmp ne %struct.wlr_keyboard* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %8, align 8
  %28 = call i32 @wlr_keyboard_get_modifiers(%struct.wlr_keyboard* %27)
  %29 = load i32, i32* @WLR_MODIFIER_SHIFT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %26, %16
  %33 = phi i1 [ false, %16 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %7, align 8
  %36 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @WLR_EDGE_NONE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  %42 = load i32, i32* @WLR_EDGE_RIGHT, align 4
  %43 = or i32 %41, %42
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i32 [ %43, %40 ], [ %45, %44 ]
  %48 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %7, align 8
  %49 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %51 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %7, align 8
  %58 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %60 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %7, align 8
  %67 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %69 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %7, align 8
  %72 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %74 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %7, align 8
  %77 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %79 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %7, align 8
  %82 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %84 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %7, align 8
  %87 = getelementptr inbounds %struct.seatop_resize_floating_event, %struct.seatop_resize_floating_event* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %89 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %88, i32 0, i32 3
  store i32* @seatop_impl, i32** %89, align 8
  %90 = load %struct.seatop_resize_floating_event*, %struct.seatop_resize_floating_event** %7, align 8
  %91 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %92 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %91, i32 0, i32 2
  store %struct.seatop_resize_floating_event* %90, %struct.seatop_resize_floating_event** %92, align 8
  %93 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %94 = call i32 @container_raise_floating(%struct.sway_container* %93)
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @WLR_EDGE_NONE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %46
  br label %102

99:                                               ; preds = %46
  %100 = load i32, i32* %6, align 4
  %101 = call i8* @wlr_xcursor_get_resize_name(i32 %100)
  br label %102

102:                                              ; preds = %99, %98
  %103 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %98 ], [ %101, %99 ]
  store i8* %103, i8** %9, align 8
  %104 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %105 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @cursor_set_image(%struct.TYPE_4__* %106, i8* %107, i32* null)
  %109 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %110 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @wlr_seat_pointer_clear_focus(i32 %111)
  br label %113

113:                                              ; preds = %102, %15
  ret void
}

declare dso_local i32 @seatop_end(%struct.sway_seat*) #1

declare dso_local %struct.seatop_resize_floating_event* @calloc(i32, i32) #1

declare dso_local %struct.wlr_keyboard* @wlr_seat_get_keyboard(i32) #1

declare dso_local i32 @wlr_keyboard_get_modifiers(%struct.wlr_keyboard*) #1

declare dso_local i32 @container_raise_floating(%struct.sway_container*) #1

declare dso_local i8* @wlr_xcursor_get_resize_name(i32) #1

declare dso_local i32 @cursor_set_image(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i32 @wlr_seat_pointer_clear_focus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

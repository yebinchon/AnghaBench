; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_resize_tiling.c_seatop_begin_resize_tiling.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_resize_tiling.c_seatop_begin_resize_tiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32, %struct.seatop_resize_tiling_event*, i32*, %struct.TYPE_6__* }
%struct.seatop_resize_tiling_event = type { i32, i32, i32, %struct.TYPE_8__*, i32, %struct.sway_container*, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sway_container = type { i32 }

@WLR_EDGE_LEFT = common dso_local global i32 0, align 4
@WLR_EDGE_RIGHT = common dso_local global i32 0, align 4
@WLR_EDGE_TOP = common dso_local global i32 0, align 4
@WLR_EDGE_BOTTOM = common dso_local global i32 0, align 4
@seatop_impl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seatop_begin_resize_tiling(%struct.sway_seat* %0, %struct.sway_container* %1, i32 %2) #0 {
  %4 = alloca %struct.sway_seat*, align 8
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.seatop_resize_tiling_event*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %4, align 8
  store %struct.sway_container* %1, %struct.sway_container** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %9 = call i32 @seatop_end(%struct.sway_seat* %8)
  %10 = call %struct.seatop_resize_tiling_event* @calloc(i32 1, i32 64)
  store %struct.seatop_resize_tiling_event* %10, %struct.seatop_resize_tiling_event** %7, align 8
  %11 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %12 = icmp ne %struct.seatop_resize_tiling_event* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %124

14:                                               ; preds = %3
  %15 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %16 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %17 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %16, i32 0, i32 5
  store %struct.sway_container* %15, %struct.sway_container** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %20 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %22 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %29 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %31 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %38 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @WLR_EDGE_LEFT, align 4
  %41 = load i32, i32* @WLR_EDGE_RIGHT, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %14
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @WLR_EDGE_LEFT, align 4
  %48 = load i32, i32* @WLR_EDGE_RIGHT, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %52 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %54 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %53, i32 0, i32 5
  %55 = load %struct.sway_container*, %struct.sway_container** %54, align 8
  %56 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %57 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @container_find_resize_parent(%struct.sway_container* %55, i32 %58)
  %60 = bitcast i8* %59 to %struct.TYPE_7__*
  %61 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %62 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %61, i32 0, i32 6
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %62, align 8
  %63 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %64 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %63, i32 0, i32 6
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = icmp ne %struct.TYPE_7__* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %45
  %68 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %69 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %68, i32 0, i32 6
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %74 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %67, %45
  br label %76

76:                                               ; preds = %75, %14
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @WLR_EDGE_TOP, align 4
  %79 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @WLR_EDGE_TOP, align 4
  %86 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %90 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %92 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %91, i32 0, i32 5
  %93 = load %struct.sway_container*, %struct.sway_container** %92, align 8
  %94 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %95 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @container_find_resize_parent(%struct.sway_container* %93, i32 %96)
  %98 = bitcast i8* %97 to %struct.TYPE_8__*
  %99 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %100 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %99, i32 0, i32 3
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %100, align 8
  %101 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %102 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %101, i32 0, i32 3
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = icmp ne %struct.TYPE_8__* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %83
  %106 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %107 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %106, i32 0, i32 3
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %112 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %105, %83
  br label %114

114:                                              ; preds = %113, %76
  %115 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %116 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %115, i32 0, i32 2
  store i32* @seatop_impl, i32** %116, align 8
  %117 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %7, align 8
  %118 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %119 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %118, i32 0, i32 1
  store %struct.seatop_resize_tiling_event* %117, %struct.seatop_resize_tiling_event** %119, align 8
  %120 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %121 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @wlr_seat_pointer_clear_focus(i32 %122)
  br label %124

124:                                              ; preds = %114, %13
  ret void
}

declare dso_local i32 @seatop_end(%struct.sway_seat*) #1

declare dso_local %struct.seatop_resize_tiling_event* @calloc(i32, i32) #1

declare dso_local i8* @container_find_resize_parent(%struct.sway_container*, i32) #1

declare dso_local i32 @wlr_seat_pointer_clear_focus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

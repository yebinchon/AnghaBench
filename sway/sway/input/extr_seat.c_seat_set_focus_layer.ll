; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_set_focus_layer.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_set_focus_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sway_seat = type { %struct.wlr_layer_surface_v1* }
%struct.wlr_layer_surface_v1 = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sway_node = type { i32 }

@root = common dso_local global %struct.TYPE_4__* null, align 8
@ZWLR_LAYER_SHELL_V1_LAYER_TOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seat_set_focus_layer(%struct.sway_seat* %0, %struct.wlr_layer_surface_v1* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.wlr_layer_surface_v1*, align 8
  %5 = alloca %struct.sway_node*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.wlr_layer_surface_v1* %1, %struct.wlr_layer_surface_v1** %4, align 8
  %6 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %4, align 8
  %7 = icmp ne %struct.wlr_layer_surface_v1* %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %10 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %9, i32 0, i32 0
  %11 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %10, align 8
  %12 = icmp ne %struct.wlr_layer_surface_v1* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %15 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %14, i32 0, i32 0
  store %struct.wlr_layer_surface_v1* null, %struct.wlr_layer_surface_v1** %15, align 8
  %16 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %16, i32* %18)
  store %struct.sway_node* %19, %struct.sway_node** %5, align 8
  %20 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %21 = icmp ne %struct.sway_node* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %24 = call i32 @seat_set_focus(%struct.sway_seat* %23, %struct.sway_node* null)
  %25 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %26 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %27 = call i32 @seat_set_focus(%struct.sway_seat* %25, %struct.sway_node* %26)
  br label %28

28:                                               ; preds = %22, %13
  br label %60

29:                                               ; preds = %8, %2
  %30 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %4, align 8
  %31 = icmp ne %struct.wlr_layer_surface_v1* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %34 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %33, i32 0, i32 0
  %35 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %34, align 8
  %36 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %4, align 8
  %37 = icmp eq %struct.wlr_layer_surface_v1* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %29
  br label %60

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %4, align 8
  %42 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %46 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %4, align 8
  %47 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @seat_set_focus_surface(%struct.sway_seat* %45, i32 %48, i32 1)
  %50 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %4, align 8
  %51 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ZWLR_LAYER_SHELL_V1_LAYER_TOP, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %40
  %57 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %4, align 8
  %58 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %59 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %58, i32 0, i32 0
  store %struct.wlr_layer_surface_v1* %57, %struct.wlr_layer_surface_v1** %59, align 8
  br label %60

60:                                               ; preds = %28, %38, %56, %40
  ret void
}

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @seat_set_focus_surface(%struct.sway_seat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

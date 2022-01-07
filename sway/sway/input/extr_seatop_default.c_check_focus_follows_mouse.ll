; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_check_focus_follows_mouse.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_check_focus_follows_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.sway_seat = type { i32 }
%struct.seatop_default_event = type { %struct.sway_node* }
%struct.sway_node = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sway_output = type { i32 }

@N_WORKSPACE = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_4__* null, align 8
@FOLLOWS_ALWAYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, %struct.seatop_default_event*, %struct.sway_node*)* @check_focus_follows_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_focus_follows_mouse(%struct.sway_seat* %0, %struct.seatop_default_event* %1, %struct.sway_node* %2) #0 {
  %4 = alloca %struct.sway_seat*, align 8
  %5 = alloca %struct.seatop_default_event*, align 8
  %6 = alloca %struct.sway_node*, align 8
  %7 = alloca %struct.sway_node*, align 8
  %8 = alloca %struct.sway_output*, align 8
  %9 = alloca %struct.sway_output*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %4, align 8
  store %struct.seatop_default_event* %1, %struct.seatop_default_event** %5, align 8
  store %struct.sway_node* %2, %struct.sway_node** %6, align 8
  %10 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %11 = call %struct.sway_node* @seat_get_focus(%struct.sway_seat* %10)
  store %struct.sway_node* %11, %struct.sway_node** %7, align 8
  %12 = load %struct.sway_node*, %struct.sway_node** %7, align 8
  %13 = icmp ne %struct.sway_node* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %16 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @N_WORKSPACE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load %struct.sway_node*, %struct.sway_node** %7, align 8
  %22 = call %struct.sway_output* @node_get_output(%struct.sway_node* %21)
  store %struct.sway_output* %22, %struct.sway_output** %8, align 8
  %23 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %24 = call %struct.sway_output* @node_get_output(%struct.sway_node* %23)
  store %struct.sway_output* %24, %struct.sway_output** %9, align 8
  %25 = load %struct.sway_output*, %struct.sway_output** %9, align 8
  %26 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %27 = icmp ne %struct.sway_output* %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %30 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %31 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %32 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %30, %struct.sway_node* %31)
  %33 = call i32 @seat_set_focus(%struct.sway_seat* %29, %struct.sway_node* %32)
  br label %34

34:                                               ; preds = %28, %20
  br label %64

35:                                               ; preds = %14, %3
  %36 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %37 = call i64 @node_is_view(%struct.sway_node* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  %40 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %41 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @view_is_visible(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %49 = load %struct.seatop_default_event*, %struct.seatop_default_event** %5, align 8
  %50 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %49, i32 0, i32 0
  %51 = load %struct.sway_node*, %struct.sway_node** %50, align 8
  %52 = icmp ne %struct.sway_node* %48, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FOLLOWS_ALWAYS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53, %47
  %60 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %61 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %62 = call i32 @seat_set_focus(%struct.sway_seat* %60, %struct.sway_node* %61)
  br label %63

63:                                               ; preds = %59, %53
  br label %64

64:                                               ; preds = %34, %63, %39, %35
  ret void
}

declare dso_local %struct.sway_node* @seat_get_focus(%struct.sway_seat*) #1

declare dso_local %struct.sway_output* @node_get_output(%struct.sway_node*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i64 @node_is_view(%struct.sway_node*) #1

declare dso_local i64 @view_is_visible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

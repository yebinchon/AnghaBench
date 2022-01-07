; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_send_activate.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_send_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_node = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sway_seat = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { %struct.sway_node }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Refusing to set focus, input is inhibited\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_node*, %struct.sway_seat*)* @seat_send_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seat_send_activate(%struct.sway_node* %0, %struct.sway_seat* %1) #0 {
  %3 = alloca %struct.sway_node*, align 8
  %4 = alloca %struct.sway_seat*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_container*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %3, align 8
  store %struct.sway_seat* %1, %struct.sway_seat** %4, align 8
  %8 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %9 = call i64 @node_is_view(%struct.sway_node* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %13 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %14 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @seat_is_input_allowed(%struct.sway_seat* %12, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  %23 = load i32, i32* @SWAY_DEBUG, align 4
  %24 = call i32 @sway_log(i32 %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %56

25:                                               ; preds = %11
  %26 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %27 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call i32 @view_set_activated(%struct.TYPE_7__* %30, i32 1)
  br label %56

32:                                               ; preds = %2
  %33 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %34 = call %struct.TYPE_6__* @node_get_children(%struct.sway_node* %33)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %52, %32
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.sway_container**, %struct.sway_container*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %44, i64 %46
  %48 = load %struct.sway_container*, %struct.sway_container** %47, align 8
  store %struct.sway_container* %48, %struct.sway_container** %7, align 8
  %49 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %50 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %49, i32 0, i32 0
  %51 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  call void @seat_send_activate(%struct.sway_node* %50, %struct.sway_seat* %51)
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %35

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %22, %55, %25
  ret void
}

declare dso_local i64 @node_is_view(%struct.sway_node*) #1

declare dso_local i32 @seat_is_input_allowed(%struct.sway_seat*, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @view_set_activated(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_6__* @node_get_children(%struct.sway_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

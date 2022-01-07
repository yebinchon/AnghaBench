; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_constraint_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_constraint_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_pointer_constraint = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.wl_listener = type { i32 }
%struct.wlr_pointer_constraint_v1 = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.sway_seat* }
%struct.sway_seat = type { %struct.sway_cursor* }
%struct.sway_cursor = type { %struct.wlr_pointer_constraint_v1*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }

@destroy = common dso_local global i32 0, align 4
@sway_constraint = common dso_local global %struct.sway_pointer_constraint* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_constraint_destroy(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_pointer_constraint*, align 8
  %6 = alloca %struct.wlr_pointer_constraint_v1*, align 8
  %7 = alloca %struct.sway_seat*, align 8
  %8 = alloca %struct.sway_cursor*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %10 = load %struct.sway_pointer_constraint*, %struct.sway_pointer_constraint** %5, align 8
  %11 = ptrtoint %struct.sway_pointer_constraint* %10 to i32
  %12 = load i32, i32* @destroy, align 4
  %13 = call %struct.sway_pointer_constraint* @wl_container_of(%struct.wl_listener* %9, i32 %11, i32 %12)
  store %struct.sway_pointer_constraint* %13, %struct.sway_pointer_constraint** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.wlr_pointer_constraint_v1*
  store %struct.wlr_pointer_constraint_v1* %15, %struct.wlr_pointer_constraint_v1** %6, align 8
  %16 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %6, align 8
  %17 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.sway_seat*, %struct.sway_seat** %19, align 8
  store %struct.sway_seat* %20, %struct.sway_seat** %7, align 8
  %21 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %22 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %21, i32 0, i32 0
  %23 = load %struct.sway_cursor*, %struct.sway_cursor** %22, align 8
  store %struct.sway_cursor* %23, %struct.sway_cursor** %8, align 8
  %24 = load %struct.sway_pointer_constraint*, %struct.sway_pointer_constraint** %5, align 8
  %25 = getelementptr inbounds %struct.sway_pointer_constraint, %struct.sway_pointer_constraint* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @wl_list_remove(%struct.TYPE_9__* %26)
  %28 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %29 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %28, i32 0, i32 0
  %30 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %29, align 8
  %31 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %6, align 8
  %32 = icmp eq %struct.wlr_pointer_constraint_v1* %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %2
  %34 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %35 = call i32 @warp_to_constraint_cursor_hint(%struct.sway_cursor* %34)
  %36 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %37 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %44 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = call i32 @wl_list_remove(%struct.TYPE_9__* %45)
  br label %47

47:                                               ; preds = %42, %33
  %48 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %49 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = call i32 @wl_list_init(%struct.TYPE_9__* %50)
  %52 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %53 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %52, i32 0, i32 0
  store %struct.wlr_pointer_constraint_v1* null, %struct.wlr_pointer_constraint_v1** %53, align 8
  br label %54

54:                                               ; preds = %47, %2
  %55 = load %struct.sway_pointer_constraint*, %struct.sway_pointer_constraint** %5, align 8
  %56 = call i32 @free(%struct.sway_pointer_constraint* %55)
  ret void
}

declare dso_local %struct.sway_pointer_constraint* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wl_list_remove(%struct.TYPE_9__*) #1

declare dso_local i32 @warp_to_constraint_cursor_hint(%struct.sway_cursor*) #1

declare dso_local i32 @wl_list_init(%struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.sway_pointer_constraint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

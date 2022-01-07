; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_sway_cursor_constrain.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_sway_cursor_constrain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { %struct.TYPE_8__, %struct.wlr_pointer_constraint_v1*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.wlr_pointer_constraint_v1 = type { %struct.TYPE_7__*, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.seat_config = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@CONSTRAIN_DISABLE = common dso_local global i64 0, align 8
@handle_constraint_commit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sway_cursor_constrain(%struct.sway_cursor* %0, %struct.wlr_pointer_constraint_v1* %1) #0 {
  %3 = alloca %struct.sway_cursor*, align 8
  %4 = alloca %struct.wlr_pointer_constraint_v1*, align 8
  %5 = alloca %struct.seat_config*, align 8
  store %struct.sway_cursor* %0, %struct.sway_cursor** %3, align 8
  store %struct.wlr_pointer_constraint_v1* %1, %struct.wlr_pointer_constraint_v1** %4, align 8
  %6 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %7 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.seat_config* @seat_get_config(i32 %8)
  store %struct.seat_config* %9, %struct.seat_config** %5, align 8
  %10 = load %struct.seat_config*, %struct.seat_config** %5, align 8
  %11 = icmp ne %struct.seat_config* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call %struct.seat_config* @seat_get_config_by_name(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.seat_config* %13, %struct.seat_config** %5, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.seat_config*, %struct.seat_config** %5, align 8
  %16 = icmp ne %struct.seat_config* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.seat_config*, %struct.seat_config** %5, align 8
  %19 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CONSTRAIN_DISABLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %14
  br label %104

24:                                               ; preds = %17
  %25 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %26 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %25, i32 0, i32 1
  %27 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %26, align 8
  %28 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %4, align 8
  %29 = icmp eq %struct.wlr_pointer_constraint_v1* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %104

31:                                               ; preds = %24
  %32 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %33 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = call i32 @wl_list_remove(i32* %34)
  %36 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %37 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %36, i32 0, i32 1
  %38 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %37, align 8
  %39 = icmp ne %struct.wlr_pointer_constraint_v1* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %31
  %41 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %4, align 8
  %42 = icmp eq %struct.wlr_pointer_constraint_v1* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %45 = call i32 @warp_to_constraint_cursor_hint(%struct.sway_cursor* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %48 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %47, i32 0, i32 1
  %49 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %48, align 8
  %50 = call i32 @wlr_pointer_constraint_v1_send_deactivated(%struct.wlr_pointer_constraint_v1* %49)
  br label %51

51:                                               ; preds = %46, %31
  %52 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %4, align 8
  %53 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %54 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %53, i32 0, i32 1
  store %struct.wlr_pointer_constraint_v1* %52, %struct.wlr_pointer_constraint_v1** %54, align 8
  %55 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %4, align 8
  %56 = icmp eq %struct.wlr_pointer_constraint_v1* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %59 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = call i32 @wl_list_init(i32* %60)
  br label %104

62:                                               ; preds = %51
  %63 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %4, align 8
  %64 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = call i64 @pixman_region32_not_empty(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %4, align 8
  %70 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %69, i32 0, i32 1
  %71 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %4, align 8
  %72 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %4, align 8
  %76 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = call i32 @pixman_region32_intersect(i32* %70, i32* %74, i32* %77)
  br label %87

79:                                               ; preds = %62
  %80 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %4, align 8
  %81 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %80, i32 0, i32 1
  %82 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %4, align 8
  %83 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = call i32 @pixman_region32_copy(i32* %81, i32* %85)
  br label %87

87:                                               ; preds = %79, %68
  %88 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %89 = call i32 @check_constraint_region(%struct.sway_cursor* %88)
  %90 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %4, align 8
  %91 = call i32 @wlr_pointer_constraint_v1_send_activated(%struct.wlr_pointer_constraint_v1* %90)
  %92 = load i32, i32* @handle_constraint_commit, align 4
  %93 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %94 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %4, align 8
  %97 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %102 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %101, i32 0, i32 0
  %103 = call i32 @wl_signal_add(i32* %100, %struct.TYPE_8__* %102)
  br label %104

104:                                              ; preds = %87, %57, %30, %23
  ret void
}

declare dso_local %struct.seat_config* @seat_get_config(i32) #1

declare dso_local %struct.seat_config* @seat_get_config_by_name(i8*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @warp_to_constraint_cursor_hint(%struct.sway_cursor*) #1

declare dso_local i32 @wlr_pointer_constraint_v1_send_deactivated(%struct.wlr_pointer_constraint_v1*) #1

declare dso_local i32 @wl_list_init(i32*) #1

declare dso_local i64 @pixman_region32_not_empty(i32*) #1

declare dso_local i32 @pixman_region32_intersect(i32*, i32*, i32*) #1

declare dso_local i32 @pixman_region32_copy(i32*, i32*) #1

declare dso_local i32 @check_constraint_region(%struct.sway_cursor*) #1

declare dso_local i32 @wlr_pointer_constraint_v1_send_activated(%struct.wlr_pointer_constraint_v1*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

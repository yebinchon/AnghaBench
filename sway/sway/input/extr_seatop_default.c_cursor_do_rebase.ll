; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_cursor_do_rebase.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_cursor_do_rebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wlr_seat* }
%struct.wlr_seat = type { i32 }
%struct.sway_node = type { i64, i32 }
%struct.wlr_surface = type { i32 }

@N_CONTAINER = common dso_local global i64 0, align 8
@WLR_EDGE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"left_ptr\00", align 1
@WLR_EDGE_LEFT = common dso_local global i32 0, align 4
@WLR_EDGE_RIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"col-resize\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"row-resize\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_cursor*, i32, %struct.sway_node*, %struct.wlr_surface*, double, double)* @cursor_do_rebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cursor_do_rebase(%struct.sway_cursor* %0, i32 %1, %struct.sway_node* %2, %struct.wlr_surface* %3, double %4, double %5) #0 {
  %7 = alloca %struct.sway_cursor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sway_node*, align 8
  %10 = alloca %struct.wlr_surface*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.wlr_seat*, align 8
  %14 = alloca i32, align 4
  store %struct.sway_cursor* %0, %struct.sway_cursor** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sway_node* %2, %struct.sway_node** %9, align 8
  store %struct.wlr_surface* %3, %struct.wlr_surface** %10, align 8
  store double %4, double* %11, align 8
  store double %5, double* %12, align 8
  %15 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %16 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.wlr_seat*, %struct.wlr_seat** %18, align 8
  store %struct.wlr_seat* %19, %struct.wlr_seat** %13, align 8
  %20 = load %struct.wlr_surface*, %struct.wlr_surface** %10, align 8
  %21 = icmp ne %struct.wlr_surface* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %6
  %23 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %24 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.wlr_surface*, %struct.wlr_surface** %10, align 8
  %27 = call i64 @seat_is_input_allowed(%struct.TYPE_2__* %25, %struct.wlr_surface* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.wlr_seat*, %struct.wlr_seat** %13, align 8
  %31 = load %struct.wlr_surface*, %struct.wlr_surface** %10, align 8
  %32 = load double, double* %11, align 8
  %33 = load double, double* %12, align 8
  %34 = call i32 @wlr_seat_pointer_notify_enter(%struct.wlr_seat* %30, %struct.wlr_surface* %31, double %32, double %33)
  br label %35

35:                                               ; preds = %29, %22
  br label %89

36:                                               ; preds = %6
  %37 = load %struct.sway_node*, %struct.sway_node** %9, align 8
  %38 = icmp ne %struct.sway_node* %37, null
  br i1 %38, label %39, label %85

39:                                               ; preds = %36
  %40 = load %struct.sway_node*, %struct.sway_node** %9, align 8
  %41 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @N_CONTAINER, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %85

45:                                               ; preds = %39
  %46 = load %struct.sway_node*, %struct.sway_node** %9, align 8
  %47 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.wlr_surface*, %struct.wlr_surface** %10, align 8
  %50 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %51 = call i32 @find_resize_edge(i32 %48, %struct.wlr_surface* %49, %struct.sway_cursor* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @WLR_EDGE_NONE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %57 = call i32 @cursor_set_image(%struct.sway_cursor* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %84

58:                                               ; preds = %45
  %59 = load %struct.sway_node*, %struct.sway_node** %9, align 8
  %60 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @container_is_floating(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i8* @wlr_xcursor_get_resize_name(i32 %66)
  %68 = call i32 @cursor_set_image(%struct.sway_cursor* %65, i8* %67, i32* null)
  br label %83

69:                                               ; preds = %58
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @WLR_EDGE_LEFT, align 4
  %72 = load i32, i32* @WLR_EDGE_RIGHT, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %78 = call i32 @cursor_set_image(%struct.sway_cursor* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  br label %82

79:                                               ; preds = %69
  %80 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %81 = call i32 @cursor_set_image(%struct.sway_cursor* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null)
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %64
  br label %84

84:                                               ; preds = %83, %55
  br label %88

85:                                               ; preds = %39, %36
  %86 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %87 = call i32 @cursor_set_image(%struct.sway_cursor* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %88

88:                                               ; preds = %85, %84
  br label %89

89:                                               ; preds = %88, %35
  %90 = load %struct.wlr_surface*, %struct.wlr_surface** %10, align 8
  %91 = icmp eq %struct.wlr_surface* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.wlr_seat*, %struct.wlr_seat** %13, align 8
  %94 = call i32 @wlr_seat_pointer_clear_focus(%struct.wlr_seat* %93)
  br label %95

95:                                               ; preds = %92, %89
  ret void
}

declare dso_local i64 @seat_is_input_allowed(%struct.TYPE_2__*, %struct.wlr_surface*) #1

declare dso_local i32 @wlr_seat_pointer_notify_enter(%struct.wlr_seat*, %struct.wlr_surface*, double, double) #1

declare dso_local i32 @find_resize_edge(i32, %struct.wlr_surface*, %struct.sway_cursor*) #1

declare dso_local i32 @cursor_set_image(%struct.sway_cursor*, i8*, i32*) #1

declare dso_local i64 @container_is_floating(i32) #1

declare dso_local i8* @wlr_xcursor_get_resize_name(i32) #1

declare dso_local i32 @wlr_seat_pointer_clear_focus(%struct.wlr_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

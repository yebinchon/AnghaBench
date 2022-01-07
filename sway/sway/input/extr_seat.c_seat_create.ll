; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sway_seat = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.sway_seat* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.sway_node = type { i32 }

@server = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"could not allocate seat\00", align 1
@collect_focus_workspace_iter = common dso_local global i32 0, align 4
@collect_focus_container_iter = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_16__* null, align 8
@handle_new_node = common dso_local global i32 0, align 4
@handle_request_start_drag = common dso_local global i32 0, align 4
@handle_start_drag = common dso_local global i32 0, align 4
@handle_request_set_selection = common dso_local global i32 0, align 4
@handle_request_set_primary_selection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_seat* @seat_create(i8* %0) #0 {
  %2 = alloca %struct.sway_seat*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sway_seat*, align 8
  %5 = alloca %struct.sway_seat*, align 8
  %6 = alloca %struct.sway_node*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call %struct.sway_seat* @calloc(i32 1, i32 56)
  store %struct.sway_seat* %7, %struct.sway_seat** %4, align 8
  %8 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %9 = icmp ne %struct.sway_seat* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.sway_seat* null, %struct.sway_seat** %2, align 8
  br label %142

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 1), align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.TYPE_13__* @wlr_seat_create(i32 %12, i8* %13)
  %15 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %16 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %15, i32 0, i32 3
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %16, align 8
  %17 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %18 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %17, i32 0, i32 3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = call i32 @sway_assert(%struct.TYPE_13__* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  %23 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %24 = call i32 @free(%struct.sway_seat* %23)
  store %struct.sway_seat* null, %struct.sway_seat** %2, align 8
  br label %142

25:                                               ; preds = %11
  %26 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %27 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %28 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %27, i32 0, i32 3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  store %struct.sway_seat* %26, %struct.sway_seat** %30, align 8
  %31 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %32 = call i32 @sway_cursor_create(%struct.sway_seat* %31)
  %33 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %34 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 8
  %35 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %36 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %25
  %40 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %41 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %40, i32 0, i32 3
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = call i32 @wlr_seat_destroy(%struct.TYPE_13__* %42)
  %44 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %45 = call i32 @free(%struct.sway_seat* %44)
  store %struct.sway_seat* null, %struct.sway_seat** %2, align 8
  br label %142

46:                                               ; preds = %25
  %47 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %48 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %47, i32 0, i32 9
  %49 = call i32 @wl_list_init(i32* %48)
  %50 = load i32, i32* @collect_focus_workspace_iter, align 4
  %51 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %52 = call i32 @root_for_each_workspace(i32 %50, %struct.sway_seat* %51)
  %53 = load i32, i32* @collect_focus_container_iter, align 4
  %54 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %55 = call i32 @root_for_each_container(i32 %53, %struct.sway_seat* %54)
  %56 = call i32 (...) @create_list()
  %57 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %58 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 0), align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = call i32 @wl_list_empty(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %46
  %64 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %64, %struct.sway_seat** %5, align 8
  %65 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** @root, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %65, i32* %67)
  store %struct.sway_node* %68, %struct.sway_node** %6, align 8
  %69 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %70 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %71 = call i32 @seat_set_focus(%struct.sway_seat* %69, %struct.sway_node* %70)
  br label %72

72:                                               ; preds = %63, %46
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** @root, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %77 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %76, i32 0, i32 7
  %78 = call i32 @wl_signal_add(i32* %75, %struct.TYPE_14__* %77)
  %79 = load i32, i32* @handle_new_node, align 4
  %80 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %81 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %84 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %83, i32 0, i32 3
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %89 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %88, i32 0, i32 6
  %90 = call i32 @wl_signal_add(i32* %87, %struct.TYPE_14__* %89)
  %91 = load i32, i32* @handle_request_start_drag, align 4
  %92 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %93 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %96 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %95, i32 0, i32 3
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %101 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %100, i32 0, i32 5
  %102 = call i32 @wl_signal_add(i32* %99, %struct.TYPE_14__* %101)
  %103 = load i32, i32* @handle_start_drag, align 4
  %104 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %105 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  %107 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %108 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %107, i32 0, i32 3
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %113 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %112, i32 0, i32 4
  %114 = call i32 @wl_signal_add(i32* %111, %struct.TYPE_14__* %113)
  %115 = load i32, i32* @handle_request_set_selection, align 4
  %116 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %117 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %120 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %119, i32 0, i32 3
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %125 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %124, i32 0, i32 2
  %126 = call i32 @wl_signal_add(i32* %123, %struct.TYPE_14__* %125)
  %127 = load i32, i32* @handle_request_set_primary_selection, align 4
  %128 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %129 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %132 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %131, i32 0, i32 1
  %133 = call i32 @wl_list_init(i32* %132)
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 0), align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %137 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %136, i32 0, i32 0
  %138 = call i32 @wl_list_insert(i32* %135, i32* %137)
  %139 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %140 = call i32 @seatop_begin_default(%struct.sway_seat* %139)
  %141 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  store %struct.sway_seat* %141, %struct.sway_seat** %2, align 8
  br label %142

142:                                              ; preds = %72, %39, %22, %10
  %143 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  ret %struct.sway_seat* %143
}

declare dso_local %struct.sway_seat* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_13__* @wlr_seat_create(i32, i8*) #1

declare dso_local i32 @sway_assert(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @free(%struct.sway_seat*) #1

declare dso_local i32 @sway_cursor_create(%struct.sway_seat*) #1

declare dso_local i32 @wlr_seat_destroy(%struct.TYPE_13__*) #1

declare dso_local i32 @wl_list_init(i32*) #1

declare dso_local i32 @root_for_each_workspace(i32, %struct.sway_seat*) #1

declare dso_local i32 @root_for_each_container(i32, %struct.sway_seat*) #1

declare dso_local i32 @create_list(...) #1

declare dso_local i32 @wl_list_empty(i32*) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

declare dso_local i32 @seatop_begin_default(%struct.sway_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

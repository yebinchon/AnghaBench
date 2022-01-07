; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_should_focus.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_should_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.sway_workspace*, i32 }
%struct.sway_workspace = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.sway_seat = type { i32 }
%struct.sway_container = type { i32 }
%struct.TYPE_10__ = type { i64 }

@FULLSCREEN_GLOBAL = common dso_local global i64 0, align 8
@CT_NO_FOCUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_view*)* @should_focus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_focus(%struct.sway_view* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sway_view*, align 8
  %4 = alloca %struct.sway_seat*, align 8
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca %struct.sway_workspace*, align 8
  %7 = alloca %struct.sway_workspace*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  store %struct.sway_view* %0, %struct.sway_view** %3, align 8
  %11 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %11, %struct.sway_seat** %4, align 8
  %12 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %13 = call %struct.sway_container* @seat_get_focused_container(%struct.sway_seat* %12)
  store %struct.sway_container* %13, %struct.sway_container** %5, align 8
  %14 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %15 = call %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat* %14)
  store %struct.sway_workspace* %15, %struct.sway_workspace** %6, align 8
  %16 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %17 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.sway_workspace*, %struct.sway_workspace** %19, align 8
  store %struct.sway_workspace* %20, %struct.sway_workspace** %7, align 8
  %21 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %22 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %80

29:                                               ; preds = %1
  %30 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %31 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %32 = icmp ne %struct.sway_workspace* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %80

34:                                               ; preds = %29
  %35 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %36 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %68, label %41

41:                                               ; preds = %34
  %42 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %43 = icmp ne %struct.sway_container* %42, null
  br i1 %43, label %68, label %44

44:                                               ; preds = %41
  %45 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %46 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load %struct.sway_workspace*, %struct.sway_workspace** %48, align 8
  %50 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %55 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.sway_workspace*, %struct.sway_workspace** %57, align 8
  %59 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %53, %62
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp eq i64 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %80

67:                                               ; preds = %44
  br label %68

68:                                               ; preds = %67, %41, %34
  %69 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %70 = load i32, i32* @CT_NO_FOCUS, align 4
  %71 = call %struct.TYPE_10__* @criteria_for_view(%struct.sway_view* %69, i32 %70)
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %9, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %10, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %76 = call i32 @list_free(%struct.TYPE_10__* %75)
  %77 = load i64, i64* %10, align 8
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %68, %66, %33, %28
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_container* @seat_get_focused_container(%struct.sway_seat*) #1

declare dso_local %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat*) #1

declare dso_local %struct.TYPE_10__* @criteria_for_view(%struct.sway_view*, i32) #1

declare dso_local i32 @list_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

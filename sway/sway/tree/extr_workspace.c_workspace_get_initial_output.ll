; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_get_initial_output.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_get_initial_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.sway_output*, %struct.TYPE_11__*, i32 }
%struct.sway_output = type { i32 }
%struct.TYPE_11__ = type { %struct.sway_output**, i64 }
%struct.workspace_config = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.sway_seat = type { i32 }
%struct.sway_node = type { i64, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.sway_output* }
%struct.TYPE_8__ = type { %struct.sway_output* }

@root = common dso_local global %struct.TYPE_12__* null, align 8
@N_WORKSPACE = common dso_local global i64 0, align 8
@N_CONTAINER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_output* @workspace_get_initial_output(i8* %0) #0 {
  %2 = alloca %struct.sway_output*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.workspace_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca %struct.sway_seat*, align 8
  %8 = alloca %struct.sway_node*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.workspace_config* @workspace_find_config(i8* %9)
  store %struct.workspace_config* %10, %struct.workspace_config** %4, align 8
  %11 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  %12 = icmp ne %struct.workspace_config* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %38, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  %17 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %14
  %23 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  %24 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.sway_output* @output_by_name_or_id(i32 %31)
  store %struct.sway_output* %32, %struct.sway_output** %6, align 8
  %33 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %34 = icmp ne %struct.sway_output* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  store %struct.sway_output* %36, %struct.sway_output** %2, align 8
  br label %101

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %14

41:                                               ; preds = %14
  br label %42

42:                                               ; preds = %41, %1
  %43 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %43, %struct.sway_seat** %7, align 8
  %44 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** @root, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %44, i32* %46)
  store %struct.sway_node* %47, %struct.sway_node** %8, align 8
  %48 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %49 = icmp ne %struct.sway_node* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  %51 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %52 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @N_WORKSPACE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %58 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.sway_output*, %struct.sway_output** %60, align 8
  store %struct.sway_output* %61, %struct.sway_output** %2, align 8
  br label %101

62:                                               ; preds = %50, %42
  %63 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %64 = icmp ne %struct.sway_node* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %67 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @N_CONTAINER, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %73 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.sway_output*, %struct.sway_output** %77, align 8
  store %struct.sway_output* %78, %struct.sway_output** %2, align 8
  br label %101

79:                                               ; preds = %65, %62
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @root, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @root, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.sway_output**, %struct.sway_output*** %91, align 8
  %93 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %92, i64 0
  %94 = load %struct.sway_output*, %struct.sway_output** %93, align 8
  br label %99

95:                                               ; preds = %80
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** @root, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load %struct.sway_output*, %struct.sway_output** %97, align 8
  br label %99

99:                                               ; preds = %95, %87
  %100 = phi %struct.sway_output* [ %94, %87 ], [ %98, %95 ]
  store %struct.sway_output* %100, %struct.sway_output** %2, align 8
  br label %101

101:                                              ; preds = %99, %71, %56, %35
  %102 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  ret %struct.sway_output* %102
}

declare dso_local %struct.workspace_config* @workspace_find_config(i8*) #1

declare dso_local %struct.sway_output* @output_by_name_or_id(i32) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

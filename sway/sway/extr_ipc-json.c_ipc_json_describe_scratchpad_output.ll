; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_describe_scratchpad_output.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_describe_scratchpad_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.wlr_box = type { i32 }

@root = common dso_local global %struct.TYPE_6__* null, align 8
@i3_scratch_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"__i3_scratch\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"workspace\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"floating_nodes\00", align 1
@i3_output_id = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"__i3\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @ipc_json_describe_scratchpad_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ipc_json_describe_scratchpad_output() #0 {
  %1 = alloca %struct.wlr_box, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %13 = call i32 @root_get_box(%struct.TYPE_6__* %12, %struct.wlr_box* %1)
  %14 = call i32* (...) @json_object_new_array()
  store i32* %14, i32** %2, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %41, %0
  %22 = load i32, i32* %3, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.sway_container**, %struct.sway_container*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %29, i64 %31
  %33 = load %struct.sway_container*, %struct.sway_container** %32, align 8
  store %struct.sway_container* %33, %struct.sway_container** %4, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %36 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @json_object_new_int(i32 %38)
  %40 = call i32 @json_object_array_add(i32* %34, i32* %39)
  br label %41

41:                                               ; preds = %24
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %3, align 4
  br label %21

44:                                               ; preds = %21
  %45 = load i32, i32* @i3_scratch_id, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = call i32* @ipc_json_create_node(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32* %46, %struct.wlr_box* %1)
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32* @json_object_new_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @json_object_object_add(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %49)
  %51 = call i32* (...) @json_object_new_array()
  store i32* %51, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %80, %44
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %52
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load %struct.sway_container**, %struct.sway_container*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %65, i64 %67
  %69 = load %struct.sway_container*, %struct.sway_container** %68, align 8
  store %struct.sway_container* %69, %struct.sway_container** %8, align 8
  %70 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %71 = call i64 @container_is_scratchpad_hidden(%struct.sway_container* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %60
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %76 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %75, i32 0, i32 0
  %77 = call i32* @ipc_json_describe_node_recursive(%struct.TYPE_7__* %76)
  %78 = call i32 @json_object_array_add(i32* %74, i32* %77)
  br label %79

79:                                               ; preds = %73, %60
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %52

83:                                               ; preds = %52
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @json_object_object_add(i32* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %85)
  %87 = call i32* (...) @json_object_new_array()
  store i32* %87, i32** %9, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* @i3_scratch_id, align 4
  %90 = call i32* @json_object_new_int(i32 %89)
  %91 = call i32 @json_object_array_add(i32* %88, i32* %90)
  %92 = load i32, i32* @i3_output_id, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = call i32* @ipc_json_create_node(i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* %93, %struct.wlr_box* %1)
  store i32* %94, i32** %10, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = call i32* @json_object_new_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %97 = call i32 @json_object_object_add(i32* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %96)
  %98 = load i32*, i32** %10, align 8
  %99 = call i32* @json_object_new_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %100 = call i32 @json_object_object_add(i32* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %99)
  %101 = call i32* (...) @json_object_new_array()
  store i32* %101, i32** %11, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @json_object_array_add(i32* %102, i32* %103)
  %105 = load i32*, i32** %10, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @json_object_object_add(i32* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %106)
  %108 = load i32*, i32** %10, align 8
  ret i32* %108
}

declare dso_local i32 @root_get_box(%struct.TYPE_6__*, %struct.wlr_box*) #1

declare dso_local i32* @json_object_new_array(...) #1

declare dso_local i32 @json_object_array_add(i32*, i32*) #1

declare dso_local i32* @json_object_new_int(i32) #1

declare dso_local i32* @ipc_json_create_node(i32, i8*, i32, i32*, %struct.wlr_box*) #1

declare dso_local i32 @json_object_object_add(i32*, i8*, i32*) #1

declare dso_local i32* @json_object_new_string(i8*) #1

declare dso_local i64 @container_is_scratchpad_hidden(%struct.sway_container*) #1

declare dso_local i32* @ipc_json_describe_node_recursive(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

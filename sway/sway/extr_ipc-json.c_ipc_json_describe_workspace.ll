; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_describe_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_describe_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i8*, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_6__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"workspace\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"urgent\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"representation\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"floating_nodes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_workspace*, i32*)* @ipc_json_describe_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_json_describe_workspace(%struct.sway_workspace* %0, i32* %1) #0 {
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_container*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %10 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @isdigit(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %18 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @atoi(i32* %19)
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i32 [ %20, %16 ], [ -1, %21 ]
  store i32 %23, i32* %5, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32* @json_object_new_int(i32 %25)
  %27 = call i32 @json_object_object_add(i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %30 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %29, i32 0, i32 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %22
  %34 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %35 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %34, i32 0, i32 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32* @json_object_new_string(i8* %40)
  br label %43

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42, %33
  %44 = phi i32* [ %41, %33 ], [ null, %42 ]
  %45 = call i32 @json_object_object_add(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32* @json_object_new_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 @json_object_object_add(i32* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %51 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @json_object_new_boolean(i32 %52)
  %54 = call i32 @json_object_object_add(i32* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %57 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %43
  %61 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %62 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32* @json_object_new_string(i8* %63)
  br label %66

65:                                               ; preds = %43
  br label %66

66:                                               ; preds = %65, %60
  %67 = phi i32* [ %64, %60 ], [ null, %65 ]
  %68 = call i32 @json_object_object_add(i32* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %71 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @ipc_json_layout_description(i32 %72)
  %74 = call i32* @json_object_new_string(i8* %73)
  %75 = call i32 @json_object_object_add(i32* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %78 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @ipc_json_orientation_description(i32 %79)
  %81 = call i32* @json_object_new_string(i8* %80)
  %82 = call i32 @json_object_object_add(i32* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %81)
  %83 = call i32* (...) @json_object_new_array()
  store i32* %83, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %107, %66
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %87 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %85, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %84
  %93 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %94 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %struct.sway_container**, %struct.sway_container*** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %97, i64 %99
  %101 = load %struct.sway_container*, %struct.sway_container** %100, align 8
  store %struct.sway_container* %101, %struct.sway_container** %8, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %104 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %103, i32 0, i32 0
  %105 = call i32 @ipc_json_describe_node_recursive(i32* %104)
  %106 = call i32 @json_object_array_add(i32* %102, i32 %105)
  br label %107

107:                                              ; preds = %92
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %84

110:                                              ; preds = %84
  %111 = load i32*, i32** %4, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @json_object_object_add(i32* %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32* %112)
  ret void
}

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @atoi(i32*) #1

declare dso_local i32 @json_object_object_add(i32*, i8*, i32*) #1

declare dso_local i32* @json_object_new_int(i32) #1

declare dso_local i32* @json_object_new_string(i8*) #1

declare dso_local i32* @json_object_new_boolean(i32) #1

declare dso_local i8* @ipc_json_layout_description(i32) #1

declare dso_local i8* @ipc_json_orientation_description(i32) #1

declare dso_local i32* @json_object_new_array(...) #1

declare dso_local i32 @json_object_array_add(i32*, i32) #1

declare dso_local i32 @ipc_json_describe_node_recursive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

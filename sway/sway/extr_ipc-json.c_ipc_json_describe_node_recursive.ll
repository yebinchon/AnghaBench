; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_describe_node_recursive.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_describe_node_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { %struct.sway_node }
%struct.sway_node = type { i32, %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { %struct.sway_node }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.sway_container** }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.sway_workspace** }
%struct.sway_workspace = type { %struct.sway_node }

@root = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"nodes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ipc_json_describe_node_recursive(%struct.sway_node* %0) #0 {
  %2 = alloca %struct.sway_node*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca %struct.sway_workspace*, align 8
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca %struct.sway_container*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %2, align 8
  %10 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %11 = call i32* @ipc_json_describe_node(%struct.sway_node* %10)
  store i32* %11, i32** %3, align 8
  %12 = call i32* (...) @json_object_new_array()
  store i32* %12, i32** %5, align 8
  %13 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %14 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %151 [
    i32 129, label %16
    i32 130, label %47
    i32 128, label %79
    i32 131, label %111
  ]

16:                                               ; preds = %1
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* (...) @ipc_json_describe_scratchpad_output()
  %19 = call i32 @json_object_array_add(i32* %17, i32* %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %43, %16
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** @root, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %20
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** @root, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.sway_output**, %struct.sway_output*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %33, i64 %35
  %37 = load %struct.sway_output*, %struct.sway_output** %36, align 8
  store %struct.sway_output* %37, %struct.sway_output** %6, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %40 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %39, i32 0, i32 0
  %41 = call i32* @ipc_json_describe_node_recursive(%struct.sway_node* %40)
  %42 = call i32 @json_object_array_add(i32* %38, i32* %41)
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %20

46:                                               ; preds = %20
  br label %151

47:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %75, %47
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %51 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %50, i32 0, i32 3
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %49, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %48
  %59 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %60 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %59, i32 0, i32 3
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load %struct.sway_workspace**, %struct.sway_workspace*** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %65, i64 %67
  %69 = load %struct.sway_workspace*, %struct.sway_workspace** %68, align 8
  store %struct.sway_workspace* %69, %struct.sway_workspace** %7, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %72 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %71, i32 0, i32 0
  %73 = call i32* @ipc_json_describe_node_recursive(%struct.sway_node* %72)
  %74 = call i32 @json_object_array_add(i32* %70, i32* %73)
  br label %75

75:                                               ; preds = %58
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %48

78:                                               ; preds = %48
  br label %151

79:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %107, %79
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %83 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %82, i32 0, i32 2
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %81, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %80
  %91 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %92 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %91, i32 0, i32 2
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load %struct.sway_container**, %struct.sway_container*** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %97, i64 %99
  %101 = load %struct.sway_container*, %struct.sway_container** %100, align 8
  store %struct.sway_container* %101, %struct.sway_container** %8, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %104 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %103, i32 0, i32 0
  %105 = call i32* @ipc_json_describe_node_recursive(%struct.sway_node* %104)
  %106 = call i32 @json_object_array_add(i32* %102, i32* %105)
  br label %107

107:                                              ; preds = %90
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %80

110:                                              ; preds = %80
  br label %151

111:                                              ; preds = %1
  %112 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %113 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %112, i32 0, i32 1
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = icmp ne %struct.TYPE_14__* %116, null
  br i1 %117, label %118, label %150

118:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %146, %118
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %122 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %121, i32 0, i32 1
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %120, %127
  br i1 %128, label %129, label %149

129:                                              ; preds = %119
  %130 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %131 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %130, i32 0, i32 1
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load %struct.sway_container**, %struct.sway_container*** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %136, i64 %138
  %140 = load %struct.sway_container*, %struct.sway_container** %139, align 8
  store %struct.sway_container* %140, %struct.sway_container** %9, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %143 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %142, i32 0, i32 0
  %144 = call i32* @ipc_json_describe_node_recursive(%struct.sway_node* %143)
  %145 = call i32 @json_object_array_add(i32* %141, i32* %144)
  br label %146

146:                                              ; preds = %129
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %119

149:                                              ; preds = %119
  br label %150

150:                                              ; preds = %149, %111
  br label %151

151:                                              ; preds = %1, %150, %110, %78, %46
  %152 = load i32*, i32** %3, align 8
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @json_object_object_add(i32* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %153)
  %155 = load i32*, i32** %3, align 8
  ret i32* %155
}

declare dso_local i32* @ipc_json_describe_node(%struct.sway_node*) #1

declare dso_local i32* @json_object_new_array(...) #1

declare dso_local i32 @json_object_array_add(i32*, i32*) #1

declare dso_local i32* @ipc_json_describe_scratchpad_output(...) #1

declare dso_local i32 @json_object_object_add(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

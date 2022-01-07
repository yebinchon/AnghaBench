; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_describe_node.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_describe_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_node = type { i32, i32, i32, i32, i64 }
%struct.sway_seat = type { i32 }
%struct.wlr_box = type { i64, i64, i32, i32, i32, i32 }
%struct.focus_inactive_data = type { i32*, %struct.sway_node* }
%struct.TYPE_2__ = type { i64 }

@L_STACKED = common dso_local global i64 0, align 8
@focus_inactive_children_iterator = common dso_local global i32 0, align 4
@root = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ipc_json_describe_node(%struct.sway_node* %0) #0 {
  %2 = alloca %struct.sway_node*, align 8
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wlr_box, align 8
  %7 = alloca %struct.wlr_box, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.focus_inactive_data, align 8
  %11 = alloca i32*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %2, align 8
  %12 = call %struct.sway_seat* (...) @input_manager_get_default_seat()
  store %struct.sway_seat* %12, %struct.sway_seat** %3, align 8
  %13 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %14 = call %struct.sway_node* @seat_get_focus(%struct.sway_seat* %13)
  %15 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %16 = icmp eq %struct.sway_node* %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %19 = call i8* @node_get_name(%struct.sway_node* %18)
  store i8* %19, i8** %5, align 8
  %20 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %21 = call i32 @node_get_box(%struct.sway_node* %20, %struct.wlr_box* %6)
  %22 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %23 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 131
  br i1 %25, label %26, label %60

26:                                               ; preds = %1
  %27 = bitcast %struct.wlr_box* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 32, i1 false)
  %28 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %29 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @get_deco_rect(i32 %30, %struct.wlr_box* %7)
  store i64 1, i64* %8, align 8
  %32 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %33 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @container_parent_layout(i32 %34)
  %36 = load i64, i64* @L_STACKED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %40 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_2__* @container_get_siblings(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %38, %26
  %46 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %7, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = mul i64 %47, %48
  %50 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, %49
  store i64 %52, i64* %50, align 8
  %53 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %7, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = mul i64 %54, %55
  %57 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %58, %56
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %45, %1
  %61 = call i32* (...) @json_object_new_array()
  store i32* %61, i32** %9, align 8
  %62 = getelementptr inbounds %struct.focus_inactive_data, %struct.focus_inactive_data* %10, i32 0, i32 0
  %63 = load i32*, i32** %9, align 8
  store i32* %63, i32** %62, align 8
  %64 = getelementptr inbounds %struct.focus_inactive_data, %struct.focus_inactive_data* %10, i32 0, i32 1
  %65 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  store %struct.sway_node* %65, %struct.sway_node** %64, align 8
  %66 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %67 = load i32, i32* @focus_inactive_children_iterator, align 4
  %68 = call i32 @seat_for_each_node(%struct.sway_seat* %66, i32 %67, %struct.focus_inactive_data* %10)
  %69 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %70 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = call i32* @ipc_json_create_node(i32 %72, i8* %73, i32 %74, i32* %75, %struct.wlr_box* %6)
  store i32* %76, i32** %11, align 8
  %77 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %78 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %102 [
    i32 129, label %80
    i32 130, label %84
    i32 131, label %90
    i32 128, label %96
  ]

80:                                               ; preds = %60
  %81 = load i32, i32* @root, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @ipc_json_describe_root(i32 %81, i32* %82)
  br label %102

84:                                               ; preds = %60
  %85 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %86 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @ipc_json_describe_output(i32 %87, i32* %88)
  br label %102

90:                                               ; preds = %60
  %91 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %92 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @ipc_json_describe_container(i32 %93, i32* %94)
  br label %102

96:                                               ; preds = %60
  %97 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %98 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @ipc_json_describe_workspace(i32 %99, i32* %100)
  br label %102

102:                                              ; preds = %60, %96, %90, %84, %80
  %103 = load i32*, i32** %11, align 8
  ret i32* %103
}

declare dso_local %struct.sway_seat* @input_manager_get_default_seat(...) #1

declare dso_local %struct.sway_node* @seat_get_focus(%struct.sway_seat*) #1

declare dso_local i8* @node_get_name(%struct.sway_node*) #1

declare dso_local i32 @node_get_box(%struct.sway_node*, %struct.wlr_box*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @get_deco_rect(i32, %struct.wlr_box*) #1

declare dso_local i64 @container_parent_layout(i32) #1

declare dso_local %struct.TYPE_2__* @container_get_siblings(i32) #1

declare dso_local i32* @json_object_new_array(...) #1

declare dso_local i32 @seat_for_each_node(%struct.sway_seat*, i32, %struct.focus_inactive_data*) #1

declare dso_local i32* @ipc_json_create_node(i32, i8*, i32, i32*, %struct.wlr_box*) #1

declare dso_local i32 @ipc_json_describe_root(i32, i32*) #1

declare dso_local i32 @ipc_json_describe_output(i32, i32*) #1

declare dso_local i32 @ipc_json_describe_container(i32, i32*) #1

declare dso_local i32 @ipc_json_describe_workspace(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

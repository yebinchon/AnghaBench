; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_describe_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_describe_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i8*, i32, i64, %struct.TYPE_2__, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sway_node = type { i32 }
%struct.wlr_box = type { double, double, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"floating_con\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"con\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"urgent\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"sticky\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"fullscreen_mode\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"border\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"current_border_width\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"floating_nodes\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"deco_rect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, i32*)* @ipc_json_describe_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_json_describe_container(%struct.sway_container* %0, i32* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sway_node*, align 8
  %7 = alloca %struct.wlr_box, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.wlr_box, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %12 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %17 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32* @json_object_new_string(i8* %18)
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i32* [ %19, %15 ], [ null, %20 ]
  %23 = call i32 @json_object_object_add(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %26 = call i64 @container_is_floating(%struct.sway_container* %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %30 = call i32* @json_object_new_string(i8* %29)
  %31 = call i32 @json_object_object_add(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %34 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @ipc_json_layout_description(i32 %35)
  %37 = call i32* @json_object_new_string(i8* %36)
  %38 = call i32 @json_object_object_add(i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %41 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @ipc_json_orientation_description(i32 %42)
  %44 = call i32* @json_object_new_string(i8* %43)
  %45 = call i32 @json_object_object_add(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %44)
  %46 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %47 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %21
  %51 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %52 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @view_is_urgent(i64 %53)
  br label %58

55:                                               ; preds = %21
  %56 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %57 = call i32 @container_has_urgent_child(%struct.sway_container* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi i32 [ %54, %50 ], [ %57, %55 ]
  store i32 %59, i32* %5, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32* @json_object_new_boolean(i32 %61)
  %63 = call i32 @json_object_object_add(i32* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %66 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32* @json_object_new_boolean(i32 %67)
  %69 = call i32 @json_object_object_add(i32* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %72 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = call i32* @json_object_new_int(i32 %73)
  %75 = call i32 @json_object_object_add(i32* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32* %74)
  %76 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %77 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %76, i32 0, i32 6
  %78 = call %struct.sway_node* @node_get_parent(i32* %77)
  store %struct.sway_node* %78, %struct.sway_node** %6, align 8
  %79 = bitcast %struct.wlr_box* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %79, i8 0, i64 32, i1 false)
  %80 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %81 = icmp ne %struct.sway_node* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %58
  %83 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %84 = call i32 @node_get_box(%struct.sway_node* %83, %struct.wlr_box* %7)
  br label %85

85:                                               ; preds = %82, %58
  %86 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %7, i32 0, i32 0
  %87 = load double, double* %86, align 8
  %88 = fcmp une double %87, 0.000000e+00
  br i1 %88, label %89, label %113

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %7, i32 0, i32 1
  %91 = load double, double* %90, align 8
  %92 = fcmp une double %91, 0.000000e+00
  br i1 %92, label %93, label %113

93:                                               ; preds = %89
  %94 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %95 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = sitofp i64 %96 to double
  %98 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %7, i32 0, i32 0
  %99 = load double, double* %98, align 8
  %100 = fdiv double %97, %99
  %101 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %102 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = sitofp i64 %103 to double
  %105 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %7, i32 0, i32 1
  %106 = load double, double* %105, align 8
  %107 = fdiv double %104, %106
  %108 = fmul double %100, %107
  store double %108, double* %8, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = load double, double* %8, align 8
  %111 = call i32* @json_object_new_double(double %110)
  %112 = call i32 @json_object_object_add(i32* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* %111)
  br label %113

113:                                              ; preds = %93, %89, %85
  %114 = load i32*, i32** %4, align 8
  %115 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %116 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @ipc_json_border_description(i32 %118)
  %120 = call i32* @json_object_new_string(i8* %119)
  %121 = call i32 @json_object_object_add(i32* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32* %120)
  %122 = load i32*, i32** %4, align 8
  %123 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %124 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32* @json_object_new_int(i32 %126)
  %128 = call i32 @json_object_object_add(i32* %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32* %127)
  %129 = load i32*, i32** %4, align 8
  %130 = call i32* (...) @json_object_new_array()
  %131 = call i32 @json_object_object_add(i32* %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32* %130)
  %132 = bitcast %struct.wlr_box* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %132, i8 0, i64 32, i1 false)
  %133 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %134 = call i32 @get_deco_rect(%struct.sway_container* %133, %struct.wlr_box* %9)
  %135 = load i32*, i32** %4, align 8
  %136 = call i32* @ipc_json_create_rect(%struct.wlr_box* %9)
  %137 = call i32 @json_object_object_add(i32* %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32* %136)
  %138 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %139 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %113
  %143 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @ipc_json_describe_view(%struct.sway_container* %143, i32* %144)
  br label %146

146:                                              ; preds = %142, %113
  ret void
}

declare dso_local i32 @json_object_object_add(i32*, i8*, i32*) #1

declare dso_local i32* @json_object_new_string(i8*) #1

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local i8* @ipc_json_layout_description(i32) #1

declare dso_local i8* @ipc_json_orientation_description(i32) #1

declare dso_local i32 @view_is_urgent(i64) #1

declare dso_local i32 @container_has_urgent_child(%struct.sway_container*) #1

declare dso_local i32* @json_object_new_boolean(i32) #1

declare dso_local i32* @json_object_new_int(i32) #1

declare dso_local %struct.sway_node* @node_get_parent(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @node_get_box(%struct.sway_node*, %struct.wlr_box*) #1

declare dso_local i32* @json_object_new_double(double) #1

declare dso_local i8* @ipc_json_border_description(i32) #1

declare dso_local i32* @json_object_new_array(...) #1

declare dso_local i32 @get_deco_rect(%struct.sway_container*, %struct.wlr_box*) #1

declare dso_local i32* @ipc_json_create_rect(%struct.wlr_box*) #1

declare dso_local i32 @ipc_json_describe_view(%struct.sway_container*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_focus_inactive_children_iterator.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_focus_inactive_children_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sway_node = type { i64 }
%struct.focus_inactive_data = type { i32*, i32* }
%struct.sway_output = type { %struct.sway_node }

@root = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_node*, i8*)* @focus_inactive_children_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @focus_inactive_children_iterator(%struct.sway_node* %0, i8* %1) #0 {
  %3 = alloca %struct.sway_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.focus_inactive_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sway_output*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sway_node* %0, %struct.sway_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.focus_inactive_data*
  store %struct.focus_inactive_data* %12, %struct.focus_inactive_data** %5, align 8
  %13 = load %struct.focus_inactive_data*, %struct.focus_inactive_data** %5, align 8
  %14 = getelementptr inbounds %struct.focus_inactive_data, %struct.focus_inactive_data* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.focus_inactive_data*, %struct.focus_inactive_data** %5, align 8
  %17 = getelementptr inbounds %struct.focus_inactive_data, %struct.focus_inactive_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @root, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = icmp eq i32* %18, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %2
  %23 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %24 = call %struct.sway_output* @node_get_output(%struct.sway_node* %23)
  store %struct.sway_output* %24, %struct.sway_output** %7, align 8
  %25 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %26 = icmp eq %struct.sway_output* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %70

28:                                               ; preds = %22
  %29 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %30 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @json_object_array_length(i32* %33)
  store i32 %34, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %48, %28
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @json_object_array_get_idx(i32* %40, i32 %41)
  %43 = call i64 @json_object_get_int(i32 %42)
  %44 = load i64, i64* %8, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %70

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %35

51:                                               ; preds = %35
  %52 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %53 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %52, i32 0, i32 0
  store %struct.sway_node* %53, %struct.sway_node** %3, align 8
  br label %63

54:                                               ; preds = %2
  %55 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %56 = call i32* @node_get_parent(%struct.sway_node* %55)
  %57 = load %struct.focus_inactive_data*, %struct.focus_inactive_data** %5, align 8
  %58 = getelementptr inbounds %struct.focus_inactive_data, %struct.focus_inactive_data* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %70

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %66 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @json_object_new_int(i64 %67)
  %69 = call i32 @json_object_array_add(i32* %64, i32 %68)
  br label %70

70:                                               ; preds = %63, %61, %46, %27
  ret void
}

declare dso_local %struct.sway_output* @node_get_output(%struct.sway_node*) #1

declare dso_local i32 @json_object_array_length(i32*) #1

declare dso_local i64 @json_object_get_int(i32) #1

declare dso_local i32 @json_object_array_get_idx(i32*, i32) #1

declare dso_local i32* @node_get_parent(%struct.sway_node*) #1

declare dso_local i32 @json_object_array_add(i32*, i32) #1

declare dso_local i32 @json_object_new_int(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

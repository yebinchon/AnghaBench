; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_detach.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.sway_container = type { i64, i32, %struct.sway_workspace*, %struct.sway_container* }
%struct.sway_workspace = type { i32, i32* }

@FULLSCREEN_WORKSPACE = common dso_local global i64 0, align 8
@FULLSCREEN_GLOBAL = common dso_local global i64 0, align 8
@root = common dso_local global %struct.TYPE_2__* null, align 8
@set_workspace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_detach(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %7 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %8 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FULLSCREEN_WORKSPACE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %14 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %13, i32 0, i32 2
  %15 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %16 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %19 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @root, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %28 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %27, i32 0, i32 3
  %29 = load %struct.sway_container*, %struct.sway_container** %28, align 8
  store %struct.sway_container* %29, %struct.sway_container** %3, align 8
  %30 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %31 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %30, i32 0, i32 2
  %32 = load %struct.sway_workspace*, %struct.sway_workspace** %31, align 8
  store %struct.sway_workspace* %32, %struct.sway_workspace** %4, align 8
  %33 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %34 = call i32* @container_get_siblings(%struct.sway_container* %33)
  store i32* %34, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %26
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %40 = call i32 @list_find(i32* %38, %struct.sway_container* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @list_del(i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %37
  br label %48

48:                                               ; preds = %47, %26
  %49 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %50 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %49, i32 0, i32 3
  store %struct.sway_container* null, %struct.sway_container** %50, align 8
  %51 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %52 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %51, i32 0, i32 2
  store %struct.sway_workspace* null, %struct.sway_workspace** %52, align 8
  %53 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %54 = load i32, i32* @set_workspace, align 4
  %55 = call i32 @container_for_each_child(%struct.sway_container* %53, i32 %54, i32* null)
  %56 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %57 = icmp ne %struct.sway_container* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %60 = call i32 @container_update_representation(%struct.sway_container* %59)
  %61 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %62 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %61, i32 0, i32 1
  %63 = call i32 @node_set_dirty(i32* %62)
  br label %74

64:                                               ; preds = %48
  %65 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %66 = icmp ne %struct.sway_workspace* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %69 = call i32 @workspace_update_representation(%struct.sway_workspace* %68)
  %70 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %71 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %70, i32 0, i32 0
  %72 = call i32 @node_set_dirty(i32* %71)
  br label %73

73:                                               ; preds = %67, %64
  br label %74

74:                                               ; preds = %73, %58
  %75 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %76 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %75, i32 0, i32 1
  %77 = call i32 @node_set_dirty(i32* %76)
  ret void
}

declare dso_local i32* @container_get_siblings(%struct.sway_container*) #1

declare dso_local i32 @list_find(i32*, %struct.sway_container*) #1

declare dso_local i32 @list_del(i32*, i32) #1

declare dso_local i32 @container_for_each_child(%struct.sway_container*, i32, i32*) #1

declare dso_local i32 @container_update_representation(%struct.sway_container*) #1

declare dso_local i32 @node_set_dirty(i32*) #1

declare dso_local i32 @workspace_update_representation(%struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_node.c_node_has_ancestor.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_node.c_node_has_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_node = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@N_ROOT = common dso_local global i64 0, align 8
@N_CONTAINER = common dso_local global i64 0, align 8
@FULLSCREEN_GLOBAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @node_has_ancestor(%struct.sway_node* %0, %struct.sway_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_node*, align 8
  %5 = alloca %struct.sway_node*, align 8
  %6 = alloca %struct.sway_node*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %4, align 8
  store %struct.sway_node* %1, %struct.sway_node** %5, align 8
  %7 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %8 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @N_ROOT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %14 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @N_CONTAINER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %20 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %63

27:                                               ; preds = %18, %12, %2
  %28 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %29 = call %struct.sway_node* @node_get_parent(%struct.sway_node* %28)
  store %struct.sway_node* %29, %struct.sway_node** %6, align 8
  br label %30

30:                                               ; preds = %59, %27
  %31 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %32 = icmp ne %struct.sway_node* %31, null
  br i1 %32, label %33, label %62

33:                                               ; preds = %30
  %34 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %35 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %36 = icmp eq %struct.sway_node* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %63

38:                                               ; preds = %33
  %39 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %40 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @N_ROOT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %46 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @N_CONTAINER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %52 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %63

59:                                               ; preds = %50, %44, %38
  %60 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %61 = call %struct.sway_node* @node_get_parent(%struct.sway_node* %60)
  store %struct.sway_node* %61, %struct.sway_node** %6, align 8
  br label %30

62:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %58, %37, %26
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.sway_node* @node_get_parent(%struct.sway_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

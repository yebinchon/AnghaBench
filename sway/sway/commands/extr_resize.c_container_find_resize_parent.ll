; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_container_find_resize_parent.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_container_find_resize_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.sway_container* }
%struct.TYPE_3__ = type { i32 }

@L_HORIZ = common dso_local global i32 0, align 4
@L_VERT = common dso_local global i32 0, align 4
@WLR_EDGE_TOP = common dso_local global i64 0, align 8
@WLR_EDGE_LEFT = common dso_local global i64 0, align 8
@WLR_EDGE_RIGHT = common dso_local global i64 0, align 8
@WLR_EDGE_BOTTOM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_container* @container_find_resize_parent(%struct.sway_container* %0, i64 %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  store %struct.sway_container* %0, %struct.sway_container** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @is_horizontal(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @L_HORIZ, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @L_VERT, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %6, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @WLR_EDGE_TOP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @WLR_EDGE_LEFT, align 8
  %26 = icmp ne i64 %24, %25
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi i1 [ false, %18 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @WLR_EDGE_RIGHT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @WLR_EDGE_BOTTOM, align 8
  %36 = icmp ne i64 %34, %35
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i1 [ false, %27 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %75, %37
  %41 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %42 = icmp ne %struct.sway_container* %41, null
  br i1 %42, label %43, label %79

43:                                               ; preds = %40
  %44 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %45 = call %struct.TYPE_3__* @container_get_siblings(%struct.sway_container* %44)
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %9, align 8
  %46 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %47 = call i32 @container_sibling_index(%struct.sway_container* %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %49 = call i32 @container_parent_layout(%struct.sway_container* %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %43
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66, %63
  %74 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  store %struct.sway_container* %74, %struct.sway_container** %3, align 8
  br label %80

75:                                               ; preds = %66, %60, %52, %43
  %76 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %77 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %76, i32 0, i32 0
  %78 = load %struct.sway_container*, %struct.sway_container** %77, align 8
  store %struct.sway_container* %78, %struct.sway_container** %4, align 8
  br label %40

79:                                               ; preds = %40
  store %struct.sway_container* null, %struct.sway_container** %3, align 8
  br label %80

80:                                               ; preds = %79, %73
  %81 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  ret %struct.sway_container* %81
}

declare dso_local i64 @is_horizontal(i64) #1

declare dso_local %struct.TYPE_3__* @container_get_siblings(%struct.sway_container*) #1

declare dso_local i32 @container_sibling_index(%struct.sway_container*) #1

declare dso_local i32 @container_parent_layout(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

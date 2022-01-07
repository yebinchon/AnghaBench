; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_move.c_workspace_rejigger.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_move.c_workspace_rejigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sway_container = type { i64, i64, i32 }

@WLR_DIRECTION_LEFT = common dso_local global i32 0, align 4
@WLR_DIRECTION_RIGHT = common dso_local global i32 0, align 4
@L_HORIZ = common dso_local global i8* null, align 8
@L_VERT = common dso_local global i8* null, align 8
@WLR_DIRECTION_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_workspace*, %struct.sway_container*, i32)* @workspace_rejigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workspace_rejigger(%struct.sway_workspace* %0, %struct.sway_container* %1, i32 %2) #0 {
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca i32, align 4
  store %struct.sway_workspace* %0, %struct.sway_workspace** %4, align 8
  store %struct.sway_container* %1, %struct.sway_container** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %10 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %3
  %14 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %15 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %38

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @WLR_DIRECTION_LEFT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @WLR_DIRECTION_RIGHT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %20
  %29 = load i8*, i8** @L_HORIZ, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load i8*, i8** @L_VERT, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i8* [ %29, %28 ], [ %31, %30 ]
  %34 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %35 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %37 = call i32 @workspace_update_representation(%struct.sway_workspace* %36)
  br label %81

38:                                               ; preds = %13, %3
  %39 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %40 = call i32 @container_detach(%struct.sway_container* %39)
  %41 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %42 = call %struct.sway_container* @workspace_wrap_children(%struct.sway_workspace* %41)
  store %struct.sway_container* %42, %struct.sway_container** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @WLR_DIRECTION_LEFT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @WLR_DIRECTION_UP, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %46, %38
  %51 = phi i1 [ true, %38 ], [ %49, %46 ]
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 0, i32 1
  store i32 %53, i32* %8, align 4
  %54 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %55 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @workspace_insert_tiling(%struct.sway_workspace* %54, %struct.sway_container* %55, i32 %56)
  %58 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %59 = call i32 @container_flatten(%struct.sway_container* %58)
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @WLR_DIRECTION_LEFT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @WLR_DIRECTION_RIGHT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %50
  %68 = load i8*, i8** @L_HORIZ, align 8
  br label %71

69:                                               ; preds = %63
  %70 = load i8*, i8** @L_VERT, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i8* [ %68, %67 ], [ %70, %69 ]
  %73 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %74 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %76 = call i32 @workspace_update_representation(%struct.sway_workspace* %75)
  %77 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %78 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %80 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %71, %32
  ret void
}

declare dso_local i32 @workspace_update_representation(%struct.sway_workspace*) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local %struct.sway_container* @workspace_wrap_children(%struct.sway_workspace*) #1

declare dso_local i32 @workspace_insert_tiling(%struct.sway_workspace*, %struct.sway_container*, i32) #1

declare dso_local i32 @container_flatten(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

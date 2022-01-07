; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_floating.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.sway_workspace** }
%struct.sway_workspace = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { i64 }

@root = common dso_local global %struct.TYPE_12__* null, align 8
@FULLSCREEN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, i32*)* @render_floating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_floating(%struct.sway_output* %0, i32* %1) #0 {
  %3 = alloca %struct.sway_output*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_workspace*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sway_container*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %93, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** @root, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %96

19:                                               ; preds = %11
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** @root, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.sway_output**, %struct.sway_output*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %24, i64 %26
  %28 = load %struct.sway_output*, %struct.sway_output** %27, align 8
  store %struct.sway_output* %28, %struct.sway_output** %6, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %89, %19
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %32 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %30, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %29
  %39 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %40 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.sway_workspace**, %struct.sway_workspace*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %44, i64 %46
  %48 = load %struct.sway_workspace*, %struct.sway_workspace** %47, align 8
  store %struct.sway_workspace* %48, %struct.sway_workspace** %8, align 8
  %49 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %50 = call i32 @workspace_is_visible(%struct.sway_workspace* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %38
  br label %89

53:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %85, %53
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %57 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %55, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %54
  %64 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %65 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load %struct.sway_container**, %struct.sway_container*** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %69, i64 %71
  %73 = load %struct.sway_container*, %struct.sway_container** %72, align 8
  store %struct.sway_container* %73, %struct.sway_container** %10, align 8
  %74 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %75 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @FULLSCREEN_NONE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %63
  br label %85

80:                                               ; preds = %63
  %81 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %84 = call i32 @render_floating_container(%struct.sway_output* %81, i32* %82, %struct.sway_container* %83)
  br label %85

85:                                               ; preds = %80, %79
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %54

88:                                               ; preds = %54
  br label %89

89:                                               ; preds = %88, %52
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %29

92:                                               ; preds = %29
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %11

96:                                               ; preds = %11
  ret void
}

declare dso_local i32 @workspace_is_visible(%struct.sway_workspace*) #1

declare dso_local i32 @render_floating_container(%struct.sway_output*, i32*, %struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

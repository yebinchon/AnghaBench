; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_for_each_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_for_each_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.sway_workspace** }
%struct.sway_workspace = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.sway_container** }
%struct.sway_container = type opaque
%struct.TYPE_6__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { i32 }

@root = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @root_for_each_container(void (%struct.sway_container*, i8*)* %0, i8* %1) #0 {
  %3 = alloca void (%struct.sway_container*, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sway_workspace*, align 8
  store void (%struct.sway_container*, i8*)* %0, void (%struct.sway_container*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @root, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %11
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @root, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.sway_output**, %struct.sway_output*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %24, i64 %26
  %28 = load %struct.sway_output*, %struct.sway_output** %27, align 8
  store %struct.sway_output* %28, %struct.sway_output** %6, align 8
  %29 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %30 = load void (%struct.sway_container*, i8*)*, void (%struct.sway_container*, i8*)** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @output_for_each_container(%struct.sway_output* %29, void (%struct.sway_container*, i8*)* %30, i8* %31)
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %11

36:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %67, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** @root, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %37
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** @root, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.sway_container**, %struct.sway_container*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %50, i64 %52
  %54 = load %struct.sway_container*, %struct.sway_container** %53, align 8
  store %struct.sway_container* %54, %struct.sway_container** %8, align 8
  %55 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %56 = call i64 @container_is_scratchpad_hidden(%struct.sway_container* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %45
  %59 = load void (%struct.sway_container*, i8*)*, void (%struct.sway_container*, i8*)** %3, align 8
  %60 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %61 = load i8*, i8** %4, align 8
  call void %59(%struct.sway_container* %60, i8* %61)
  %62 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %63 = load void (%struct.sway_container*, i8*)*, void (%struct.sway_container*, i8*)** %3, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @container_for_each_child(%struct.sway_container* %62, void (%struct.sway_container*, i8*)* %63, i8* %64)
  br label %66

66:                                               ; preds = %58, %45
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %37

70:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %97, %70
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** @root, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %72, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %71
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** @root, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.sway_workspace**, %struct.sway_workspace*** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %88, i64 %90
  %92 = load %struct.sway_workspace*, %struct.sway_workspace** %91, align 8
  store %struct.sway_workspace* %92, %struct.sway_workspace** %10, align 8
  %93 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %94 = load void (%struct.sway_container*, i8*)*, void (%struct.sway_container*, i8*)** %3, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @workspace_for_each_container(%struct.sway_workspace* %93, void (%struct.sway_container*, i8*)* %94, i8* %95)
  br label %97

97:                                               ; preds = %81
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %71

100:                                              ; preds = %71
  ret void
}

declare dso_local i32 @output_for_each_container(%struct.sway_output*, void (%struct.sway_container*, i8*)*, i8*) #1

declare dso_local i64 @container_is_scratchpad_hidden(%struct.sway_container*) #1

declare dso_local i32 @container_for_each_child(%struct.sway_container*, void (%struct.sway_container*, i8*)*, i8*) #1

declare dso_local i32 @workspace_for_each_container(%struct.sway_workspace*, void (%struct.sway_container*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

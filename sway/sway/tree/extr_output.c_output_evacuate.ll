; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_evacuate.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_evacuate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.sway_output*, %struct.TYPE_5__* }
%struct.sway_output = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sway_workspace**, i64 }
%struct.sway_workspace = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.sway_output** }

@root = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"move\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*)* @output_evacuate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_evacuate(%struct.sway_output* %0) #0 {
  %2 = alloca %struct.sway_output*, align 8
  %3 = alloca %struct.sway_output*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %2, align 8
  %7 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %8 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %110

14:                                               ; preds = %1
  store %struct.sway_output* null, %struct.sway_output** %3, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %41

21:                                               ; preds = %14
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.sway_output**, %struct.sway_output*** %25, align 8
  %27 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %26, i64 0
  %28 = load %struct.sway_output*, %struct.sway_output** %27, align 8
  store %struct.sway_output* %28, %struct.sway_output** %3, align 8
  %29 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %30 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %31 = icmp eq %struct.sway_output* %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.sway_output**, %struct.sway_output*** %36, align 8
  %38 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %37, i64 1
  %39 = load %struct.sway_output*, %struct.sway_output** %38, align 8
  store %struct.sway_output* %39, %struct.sway_output** %3, align 8
  br label %40

40:                                               ; preds = %32, %21
  br label %41

41:                                               ; preds = %40, %14
  br label %42

42:                                               ; preds = %109, %88, %41
  %43 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %44 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %110

49:                                               ; preds = %42
  %50 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %51 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.sway_workspace**, %struct.sway_workspace*** %53, align 8
  %55 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %54, i64 0
  %56 = load %struct.sway_workspace*, %struct.sway_workspace** %55, align 8
  store %struct.sway_workspace* %56, %struct.sway_workspace** %4, align 8
  %57 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %58 = call i32 @workspace_detach(%struct.sway_workspace* %57)
  %59 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %60 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %61 = call %struct.sway_output* @workspace_output_get_highest_available(%struct.sway_workspace* %59, %struct.sway_output* %60)
  store %struct.sway_output* %61, %struct.sway_output** %5, align 8
  %62 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %63 = icmp ne %struct.sway_output* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %49
  %65 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  store %struct.sway_output* %65, %struct.sway_output** %5, align 8
  br label %66

66:                                               ; preds = %64, %49
  %67 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %68 = icmp ne %struct.sway_output* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.sway_output*, %struct.sway_output** %71, align 8
  store %struct.sway_output* %72, %struct.sway_output** %5, align 8
  br label %73

73:                                               ; preds = %69, %66
  %74 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %75 = call i64 @workspace_is_empty(%struct.sway_workspace* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %73
  %78 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %79 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %86 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %87 = call i32 @evacuate_sticky(%struct.sway_workspace* %85, %struct.sway_output* %86)
  br label %88

88:                                               ; preds = %84, %77
  %89 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %90 = call i32 @workspace_begin_destroy(%struct.sway_workspace* %89)
  br label %42

91:                                               ; preds = %73
  %92 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %93 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %92)
  store %struct.sway_workspace* %93, %struct.sway_workspace** %6, align 8
  %94 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %95 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %96 = call i32 @workspace_output_add_priority(%struct.sway_workspace* %94, %struct.sway_output* %95)
  %97 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %98 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %99 = call i32 @output_add_workspace(%struct.sway_output* %97, %struct.sway_workspace* %98)
  %100 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %101 = call i32 @output_sort_workspaces(%struct.sway_output* %100)
  %102 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %103 = call i32 @ipc_event_workspace(i32* null, %struct.sway_workspace* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %104 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %105 = icmp ne %struct.sway_workspace* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %91
  %107 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %108 = call i32 @workspace_consider_destroy(%struct.sway_workspace* %107)
  br label %109

109:                                              ; preds = %106, %91
  br label %42

110:                                              ; preds = %13, %42
  ret void
}

declare dso_local i32 @workspace_detach(%struct.sway_workspace*) #1

declare dso_local %struct.sway_output* @workspace_output_get_highest_available(%struct.sway_workspace*, %struct.sway_output*) #1

declare dso_local i64 @workspace_is_empty(%struct.sway_workspace*) #1

declare dso_local i32 @evacuate_sticky(%struct.sway_workspace*, %struct.sway_output*) #1

declare dso_local i32 @workspace_begin_destroy(%struct.sway_workspace*) #1

declare dso_local %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output*) #1

declare dso_local i32 @workspace_output_add_priority(%struct.sway_workspace*, %struct.sway_output*) #1

declare dso_local i32 @output_add_workspace(%struct.sway_output*, %struct.sway_workspace*) #1

declare dso_local i32 @output_sort_workspaces(%struct.sway_output*) #1

declare dso_local i32 @ipc_event_workspace(i32*, %struct.sway_workspace*, i8*) #1

declare dso_local i32 @workspace_consider_destroy(%struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

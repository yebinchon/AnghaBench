; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_find_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_find_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.sway_workspace** }
%struct.sway_workspace = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { i32 }

@root = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_container* @root_find_container(i32 (%struct.sway_container*, i8*)* %0, i8* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca i32 (%struct.sway_container*, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sway_container*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sway_container*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sway_workspace*, align 8
  store i32 (%struct.sway_container*, i8*)* %0, i32 (%struct.sway_container*, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sway_container* null, %struct.sway_container** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %39, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @root, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %13
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @root, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.sway_output**, %struct.sway_output*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %26, i64 %28
  %30 = load %struct.sway_output*, %struct.sway_output** %29, align 8
  store %struct.sway_output* %30, %struct.sway_output** %8, align 8
  %31 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %32 = load i32 (%struct.sway_container*, i8*)*, i32 (%struct.sway_container*, i8*)** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call %struct.sway_container* @output_find_container(%struct.sway_output* %31, i32 (%struct.sway_container*, i8*)* %32, i8* %33)
  store %struct.sway_container* %34, %struct.sway_container** %6, align 8
  %35 = icmp ne %struct.sway_container* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  store %struct.sway_container* %37, %struct.sway_container** %3, align 8
  br label %120

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %13

42:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %82, %42
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @root, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %43
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @root, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.sway_container**, %struct.sway_container*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %56, i64 %58
  %60 = load %struct.sway_container*, %struct.sway_container** %59, align 8
  store %struct.sway_container* %60, %struct.sway_container** %10, align 8
  %61 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %62 = call i64 @container_is_scratchpad_hidden(%struct.sway_container* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %51
  %65 = load i32 (%struct.sway_container*, i8*)*, i32 (%struct.sway_container*, i8*)** %4, align 8
  %66 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 %65(%struct.sway_container* %66, i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  store %struct.sway_container* %71, %struct.sway_container** %3, align 8
  br label %120

72:                                               ; preds = %64
  %73 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %74 = load i32 (%struct.sway_container*, i8*)*, i32 (%struct.sway_container*, i8*)** %4, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = call %struct.sway_container* @container_find_child(%struct.sway_container* %73, i32 (%struct.sway_container*, i8*)* %74, i8* %75)
  store %struct.sway_container* %76, %struct.sway_container** %6, align 8
  %77 = icmp ne %struct.sway_container* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  store %struct.sway_container* %79, %struct.sway_container** %3, align 8
  br label %120

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %51
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %43

85:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %116, %85
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** @root, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %87, %94
  br i1 %95, label %96, label %119

96:                                               ; preds = %86
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** @root, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load %struct.sway_workspace**, %struct.sway_workspace*** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %103, i64 %105
  %107 = load %struct.sway_workspace*, %struct.sway_workspace** %106, align 8
  store %struct.sway_workspace* %107, %struct.sway_workspace** %12, align 8
  %108 = load %struct.sway_workspace*, %struct.sway_workspace** %12, align 8
  %109 = load i32 (%struct.sway_container*, i8*)*, i32 (%struct.sway_container*, i8*)** %4, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = call %struct.sway_container* @workspace_find_container(%struct.sway_workspace* %108, i32 (%struct.sway_container*, i8*)* %109, i8* %110)
  store %struct.sway_container* %111, %struct.sway_container** %6, align 8
  %112 = icmp ne %struct.sway_container* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %96
  %114 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  store %struct.sway_container* %114, %struct.sway_container** %3, align 8
  br label %120

115:                                              ; preds = %96
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %86

119:                                              ; preds = %86
  store %struct.sway_container* null, %struct.sway_container** %3, align 8
  br label %120

120:                                              ; preds = %119, %113, %78, %70, %36
  %121 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  ret %struct.sway_container* %121
}

declare dso_local %struct.sway_container* @output_find_container(%struct.sway_output*, i32 (%struct.sway_container*, i8*)*, i8*) #1

declare dso_local i64 @container_is_scratchpad_hidden(%struct.sway_container*) #1

declare dso_local %struct.sway_container* @container_find_child(%struct.sway_container*, i32 (%struct.sway_container*, i8*)*, i8*) #1

declare dso_local %struct.sway_container* @workspace_find_container(%struct.sway_workspace*, i32 (%struct.sway_container*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

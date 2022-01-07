; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_by_name.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i32 }
%struct.sway_seat = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"prev_on_output\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"next_on_output\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"back_and_forth\00", align 1
@_workspace_by_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_workspace* @workspace_by_name(i8* %0) #0 {
  %2 = alloca %struct.sway_workspace*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sway_seat*, align 8
  %5 = alloca %struct.sway_workspace*, align 8
  %6 = alloca %struct.sway_seat*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %7, %struct.sway_seat** %4, align 8
  %8 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %9 = call %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat* %8)
  store %struct.sway_workspace* %9, %struct.sway_workspace** %5, align 8
  %10 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %11 = icmp ne %struct.sway_workspace* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %18 = call %struct.sway_workspace* @workspace_prev(%struct.sway_workspace* %17)
  store %struct.sway_workspace* %18, %struct.sway_workspace** %2, align 8
  br label %77

19:                                               ; preds = %12, %1
  %20 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %21 = icmp ne %struct.sway_workspace* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %28 = call %struct.sway_workspace* @workspace_output_prev(%struct.sway_workspace* %27, i32 0)
  store %struct.sway_workspace* %28, %struct.sway_workspace** %2, align 8
  br label %77

29:                                               ; preds = %22, %19
  %30 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %31 = icmp ne %struct.sway_workspace* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %38 = call %struct.sway_workspace* @workspace_next(%struct.sway_workspace* %37)
  store %struct.sway_workspace* %38, %struct.sway_workspace** %2, align 8
  br label %77

39:                                               ; preds = %32, %29
  %40 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %41 = icmp ne %struct.sway_workspace* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i8*, i8** %3, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %48 = call %struct.sway_workspace* @workspace_output_next(%struct.sway_workspace* %47, i32 0)
  store %struct.sway_workspace* %48, %struct.sway_workspace** %2, align 8
  br label %77

49:                                               ; preds = %42, %39
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  store %struct.sway_workspace* %54, %struct.sway_workspace** %2, align 8
  br label %77

55:                                               ; preds = %49
  %56 = load i8*, i8** %3, align 8
  %57 = call i64 @strcasecmp(i8* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %60, %struct.sway_seat** %6, align 8
  %61 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %62 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  store %struct.sway_workspace* null, %struct.sway_workspace** %2, align 8
  br label %77

66:                                               ; preds = %59
  %67 = load i32, i32* @_workspace_by_name, align 4
  %68 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %69 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call %struct.sway_workspace* @root_find_workspace(i32 %67, i8* %71)
  store %struct.sway_workspace* %72, %struct.sway_workspace** %2, align 8
  br label %77

73:                                               ; preds = %55
  %74 = load i32, i32* @_workspace_by_name, align 4
  %75 = load i8*, i8** %3, align 8
  %76 = call %struct.sway_workspace* @root_find_workspace(i32 %74, i8* %75)
  store %struct.sway_workspace* %76, %struct.sway_workspace** %2, align 8
  br label %77

77:                                               ; preds = %73, %66, %65, %53, %46, %36, %26, %16
  %78 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  ret %struct.sway_workspace* %78
}

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.sway_workspace* @workspace_prev(%struct.sway_workspace*) #1

declare dso_local %struct.sway_workspace* @workspace_output_prev(%struct.sway_workspace*, i32) #1

declare dso_local %struct.sway_workspace* @workspace_next(%struct.sway_workspace*) #1

declare dso_local %struct.sway_workspace* @workspace_output_next(%struct.sway_workspace*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.sway_workspace* @root_find_workspace(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

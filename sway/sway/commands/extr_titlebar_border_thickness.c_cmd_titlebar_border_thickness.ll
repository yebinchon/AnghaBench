; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_titlebar_border_thickness.c_cmd_titlebar_border_thickness.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_titlebar_border_thickness.c_cmd_titlebar_border_thickness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { i32 }
%struct.cmd_results = type { i32 }
%struct.sway_workspace = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"titlebar_border_thickness\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_6__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid size specified\00", align 1
@root = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Expected output to have a workspace\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_titlebar_border_thickness(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sway_output*, align 8
  %11 = alloca %struct.sway_workspace*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %14 = call %struct.cmd_results* @checkarg(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13, i32 1)
  store %struct.cmd_results* %14, %struct.cmd_results** %6, align 8
  %15 = icmp ne %struct.cmd_results* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %17, %struct.cmd_results** %3, align 8
  br label %80

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strtol(i8* %21, i8** %7, i32 10)
  store i32 %22, i32* %8, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %27, %18
  %37 = load i32, i32* @CMD_FAILURE, align 4
  %38 = call %struct.cmd_results* @cmd_results_new(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %38, %struct.cmd_results** %3, align 8
  br label %80

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %74, %39
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %43
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.sway_output**, %struct.sway_output*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %56, i64 %58
  %60 = load %struct.sway_output*, %struct.sway_output** %59, align 8
  store %struct.sway_output* %60, %struct.sway_output** %10, align 8
  %61 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %62 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %61)
  store %struct.sway_workspace* %62, %struct.sway_workspace** %11, align 8
  %63 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %64 = call i32 @sway_assert(%struct.sway_workspace* %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %51
  %67 = load i32, i32* @CMD_FAILURE, align 4
  %68 = call %struct.cmd_results* @cmd_results_new(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %68, %struct.cmd_results** %3, align 8
  br label %80

69:                                               ; preds = %51
  %70 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %71 = call i32 @arrange_workspace(%struct.sway_workspace* %70)
  %72 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %73 = call i32 @output_damage_whole(%struct.sway_output* %72)
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %43

77:                                               ; preds = %43
  %78 = load i32, i32* @CMD_SUCCESS, align 4
  %79 = call %struct.cmd_results* @cmd_results_new(i32 %78, i8* null)
  store %struct.cmd_results* %79, %struct.cmd_results** %3, align 8
  br label %80

80:                                               ; preds = %77, %66, %36, %16
  %81 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %81
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output*) #1

declare dso_local i32 @sway_assert(%struct.sway_workspace*, i8*) #1

declare dso_local i32 @arrange_workspace(%struct.sway_workspace*) #1

declare dso_local i32 @output_damage_whole(%struct.sway_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

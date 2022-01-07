; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_titlebar_padding.c_cmd_titlebar_padding.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_titlebar_padding.c_cmd_titlebar_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"titlebar_padding\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_6__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid size specified\00", align 1
@root = common dso_local global %struct.TYPE_5__* null, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_titlebar_padding(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_output*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %14 = call %struct.cmd_results* @checkarg(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %13, i32 1)
  store %struct.cmd_results* %14, %struct.cmd_results** %6, align 8
  %15 = icmp ne %struct.cmd_results* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %17, %struct.cmd_results** %3, align 8
  br label %102

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
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %27, %18
  %37 = load i32, i32* @CMD_FAILURE, align 4
  %38 = call %struct.cmd_results* @cmd_results_new(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %38, %struct.cmd_results** %3, align 8
  br label %102

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %9, align 4
  br label %66

44:                                               ; preds = %39
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strtol(i8* %47, i8** %7, i32 10)
  store i32 %48, i32* %9, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %53, %44
  %63 = load i32, i32* @CMD_FAILURE, align 4
  %64 = call %struct.cmd_results* @cmd_results_new(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %64, %struct.cmd_results** %3, align 8
  br label %102

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %96, %66
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %74, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %73
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.sway_output**, %struct.sway_output*** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %86, i64 %88
  %90 = load %struct.sway_output*, %struct.sway_output** %89, align 8
  store %struct.sway_output* %90, %struct.sway_output** %11, align 8
  %91 = load %struct.sway_output*, %struct.sway_output** %11, align 8
  %92 = call i32 @output_get_active_workspace(%struct.sway_output* %91)
  %93 = call i32 @arrange_workspace(i32 %92)
  %94 = load %struct.sway_output*, %struct.sway_output** %11, align 8
  %95 = call i32 @output_damage_whole(%struct.sway_output* %94)
  br label %96

96:                                               ; preds = %81
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %73

99:                                               ; preds = %73
  %100 = load i32, i32* @CMD_SUCCESS, align 4
  %101 = call %struct.cmd_results* @cmd_results_new(i32 %100, i8* null)
  store %struct.cmd_results* %101, %struct.cmd_results** %3, align 8
  br label %102

102:                                              ; preds = %99, %62, %36, %16
  %103 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %103
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i32 @arrange_workspace(i32) #1

declare dso_local i32 @output_get_active_workspace(%struct.sway_output*) #1

declare dso_local i32 @output_damage_whole(%struct.sway_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

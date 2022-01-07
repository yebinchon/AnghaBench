; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_split.c_cmd_split.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_split.c_cmd_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sway_container* }
%struct.sway_container = type { i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"split\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_7__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Can't run this command while there's no outputs connected.\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@L_VERT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@L_HORIZ = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@config = common dso_local global %struct.TYPE_8__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [64 x i8] c"Invalid split command (expected either horizontal or vertical).\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_split(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.sway_container*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %10 = call %struct.cmd_results* @checkarg(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9, i32 1)
  store %struct.cmd_results* %10, %struct.cmd_results** %6, align 8
  %11 = icmp ne %struct.cmd_results* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %13, %struct.cmd_results** %3, align 8
  br label %87

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @CMD_INVALID, align 4
  %23 = call %struct.cmd_results* @cmd_results_new(i32 %22, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %23, %struct.cmd_results** %3, align 8
  br label %87

24:                                               ; preds = %14
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcasecmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcasecmp(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %24
  %37 = load i64, i64* @L_VERT, align 8
  %38 = call %struct.cmd_results* @do_split(i64 %37)
  store %struct.cmd_results* %38, %struct.cmd_results** %3, align 8
  br label %87

39:                                               ; preds = %30
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcasecmp(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strcasecmp(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %39
  %52 = load i64, i64* @L_HORIZ, align 8
  %53 = call %struct.cmd_results* @do_split(i64 %52)
  store %struct.cmd_results* %53, %struct.cmd_results** %3, align 8
  br label %87

54:                                               ; preds = %45
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strcasecmp(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %60, %54
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.sway_container*, %struct.sway_container** %69, align 8
  store %struct.sway_container* %70, %struct.sway_container** %7, align 8
  %71 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %72 = icmp ne %struct.sway_container* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %75 = call i64 @container_parent_layout(%struct.sway_container* %74)
  %76 = load i64, i64* @L_VERT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i64, i64* @L_HORIZ, align 8
  %80 = call %struct.cmd_results* @do_split(i64 %79)
  store %struct.cmd_results* %80, %struct.cmd_results** %3, align 8
  br label %87

81:                                               ; preds = %73, %66
  %82 = load i64, i64* @L_VERT, align 8
  %83 = call %struct.cmd_results* @do_split(i64 %82)
  store %struct.cmd_results* %83, %struct.cmd_results** %3, align 8
  br label %87

84:                                               ; preds = %60
  %85 = load i32, i32* @CMD_FAILURE, align 4
  %86 = call %struct.cmd_results* @cmd_results_new(i32 %85, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0))
  store %struct.cmd_results* %86, %struct.cmd_results** %3, align 8
  br label %87

87:                                               ; preds = %84, %81, %78, %51, %36, %21, %12
  %88 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %88
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @do_split(i64) #1

declare dso_local i64 @container_parent_layout(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

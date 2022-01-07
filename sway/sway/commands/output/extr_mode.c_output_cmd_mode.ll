; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/output/extr_mode.c_output_cmd_mode.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/output/extr_mode.c_output_cmd_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.output_config* }
%struct.TYPE_4__ = type { i32, i8** }
%struct.output_config = type { i32, i8*, i32, i8* }
%struct.cmd_results = type { i32 }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Missing output config\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Missing mode argument.\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"--custom\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Invalid mode width.\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid mode height.\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"Hz\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Invalid mode refresh rate.\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Missing mode argument (height).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @output_cmd_mode(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.output_config*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.output_config*, %struct.output_config** %10, align 8
  %12 = icmp ne %struct.output_config* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @CMD_FAILURE, align 4
  %15 = call %struct.cmd_results* @cmd_results_new(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %15, %struct.cmd_results** %3, align 8
  br label %128

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @CMD_INVALID, align 4
  %21 = call %struct.cmd_results* @cmd_results_new(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %21, %struct.cmd_results** %3, align 8
  br label %128

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.output_config*, %struct.output_config** %25, align 8
  store %struct.output_config* %26, %struct.output_config** %6, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %4, align 4
  %37 = load %struct.output_config*, %struct.output_config** %6, align 8
  %38 = getelementptr inbounds %struct.output_config, %struct.output_config* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %42

39:                                               ; preds = %22
  %40 = load %struct.output_config*, %struct.output_config** %6, align 8
  %41 = getelementptr inbounds %struct.output_config, %struct.output_config* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %32
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @strtol(i8* %44, i8** %7, i32 10)
  %46 = load %struct.output_config*, %struct.output_config** %6, align 8
  %47 = getelementptr inbounds %struct.output_config, %struct.output_config* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %92

51:                                               ; preds = %42
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 120
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @CMD_INVALID, align 4
  %58 = call %struct.cmd_results* @cmd_results_new(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store %struct.cmd_results* %58, %struct.cmd_results** %3, align 8
  br label %128

59:                                               ; preds = %51
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @strtol(i8* %62, i8** %7, i32 10)
  %64 = load %struct.output_config*, %struct.output_config** %6, align 8
  %65 = getelementptr inbounds %struct.output_config, %struct.output_config* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %59
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 64
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @CMD_INVALID, align 4
  %76 = call %struct.cmd_results* @cmd_results_new(i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store %struct.cmd_results* %76, %struct.cmd_results** %3, align 8
  br label %128

77:                                               ; preds = %69
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @strtof(i8* %80, i8** %7)
  %82 = load %struct.output_config*, %struct.output_config** %6, align 8
  %83 = getelementptr inbounds %struct.output_config, %struct.output_config* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load i32, i32* @CMD_INVALID, align 4
  %89 = call %struct.cmd_results* @cmd_results_new(i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store %struct.cmd_results* %89, %struct.cmd_results** %3, align 8
  br label %128

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90, %59
  br label %115

92:                                               ; preds = %42
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %4, align 4
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i32 1
  store i8** %96, i8*** %5, align 8
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* @CMD_INVALID, align 4
  %101 = call %struct.cmd_results* @cmd_results_new(i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  store %struct.cmd_results* %101, %struct.cmd_results** %3, align 8
  br label %128

102:                                              ; preds = %92
  %103 = load i8**, i8*** %5, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @strtol(i8* %104, i8** %7, i32 10)
  %106 = load %struct.output_config*, %struct.output_config** %6, align 8
  %107 = getelementptr inbounds %struct.output_config, %struct.output_config* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i32, i32* @CMD_INVALID, align 4
  %113 = call %struct.cmd_results* @cmd_results_new(i32 %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store %struct.cmd_results* %113, %struct.cmd_results** %3, align 8
  br label %128

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %91
  %116 = load i32, i32* %4, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 %117, i32* %121, align 8
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i8** %123, i8*** %127, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %3, align 8
  br label %128

128:                                              ; preds = %115, %111, %99, %87, %74, %56, %19, %13
  %129 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %129
}

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strtof(i8*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

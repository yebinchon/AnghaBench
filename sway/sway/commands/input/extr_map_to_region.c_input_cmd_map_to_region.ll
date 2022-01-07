; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/input/extr_map_to_region.c_input_cmd_map_to_region.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/input/extr_map_to_region.c_input_cmd_map_to_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.input_config* }
%struct.input_config = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i8*, i8* }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"map_to_region\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_7__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"No input device defined\00", align 1
@MAPPED_TO_REGION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid X coordinate\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid Y coordinate\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Invalid width\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Invalid height\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @input_cmd_map_to_region(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.input_config*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %12 = call %struct.cmd_results* @checkarg(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11, i32 4)
  store %struct.cmd_results* %12, %struct.cmd_results** %6, align 8
  %13 = icmp ne %struct.cmd_results* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %15, %struct.cmd_results** %3, align 8
  br label %121

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.input_config*, %struct.input_config** %19, align 8
  store %struct.input_config* %20, %struct.input_config** %7, align 8
  %21 = load %struct.input_config*, %struct.input_config** %7, align 8
  %22 = icmp ne %struct.input_config* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @CMD_FAILURE, align 4
  %25 = call %struct.cmd_results* @cmd_results_new(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %25, %struct.cmd_results** %3, align 8
  br label %121

26:                                               ; preds = %16
  %27 = load i32, i32* @MAPPED_TO_REGION, align 4
  %28 = load %struct.input_config*, %struct.input_config** %7, align 8
  %29 = getelementptr inbounds %struct.input_config, %struct.input_config* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = call %struct.TYPE_6__* @calloc(i32 1, i32 4)
  %31 = load %struct.input_config*, %struct.input_config** %7, align 8
  %32 = getelementptr inbounds %struct.input_config, %struct.input_config* %31, i32 0, i32 0
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %32, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @strtol(i8* %35, i8** %9, i32 10)
  %37 = load %struct.input_config*, %struct.input_config** %7, align 8
  %38 = getelementptr inbounds %struct.input_config, %struct.input_config* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  store i8* %36, i8** %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %111

47:                                               ; preds = %26
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @strtol(i8* %50, i8** %9, i32 10)
  %52 = load %struct.input_config*, %struct.input_config** %7, align 8
  %53 = getelementptr inbounds %struct.input_config, %struct.input_config* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i8* %51, i8** %55, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %111

62:                                               ; preds = %47
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @strtol(i8* %65, i8** %9, i32 10)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.input_config*, %struct.input_config** %7, align 8
  %69 = getelementptr inbounds %struct.input_config, %struct.input_config* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %62
  %78 = load %struct.input_config*, %struct.input_config** %7, align 8
  %79 = getelementptr inbounds %struct.input_config, %struct.input_config* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %77, %62
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %111

85:                                               ; preds = %77
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @strtol(i8* %88, i8** %9, i32 10)
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.input_config*, %struct.input_config** %7, align 8
  %92 = getelementptr inbounds %struct.input_config, %struct.input_config* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %85
  %101 = load %struct.input_config*, %struct.input_config** %7, align 8
  %102 = getelementptr inbounds %struct.input_config, %struct.input_config* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %100, %85
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %111

108:                                              ; preds = %100
  %109 = load i32, i32* @CMD_SUCCESS, align 4
  %110 = call %struct.cmd_results* @cmd_results_new(i32 %109, i8* null)
  store %struct.cmd_results* %110, %struct.cmd_results** %3, align 8
  br label %121

111:                                              ; preds = %107, %84, %61, %46
  %112 = load %struct.input_config*, %struct.input_config** %7, align 8
  %113 = getelementptr inbounds %struct.input_config, %struct.input_config* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = call i32 @free(%struct.TYPE_6__* %114)
  %116 = load %struct.input_config*, %struct.input_config** %7, align 8
  %117 = getelementptr inbounds %struct.input_config, %struct.input_config* %116, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %117, align 8
  %118 = load i32, i32* @CMD_FAILURE, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = call %struct.cmd_results* @cmd_results_new(i32 %118, i8* %119)
  store %struct.cmd_results* %120, %struct.cmd_results** %3, align 8
  br label %121

121:                                              ; preds = %111, %108, %23, %14
  %122 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %122
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

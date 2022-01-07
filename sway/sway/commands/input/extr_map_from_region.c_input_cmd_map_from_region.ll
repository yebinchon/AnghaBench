; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/input/extr_map_from_region.c_input_cmd_map_from_region.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/input/extr_map_from_region.c_input_cmd_map_from_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.input_config* }
%struct.input_config = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"map_from_region\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_7__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"No input device defined\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid top-left coordinates\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid bottom-right coordinates\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Invalid rectangle\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Both coordinates must be in the same unit\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @input_cmd_map_from_region(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.input_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %12 = call %struct.cmd_results* @checkarg(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11, i32 2)
  store %struct.cmd_results* %12, %struct.cmd_results** %6, align 8
  %13 = icmp ne %struct.cmd_results* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %15, %struct.cmd_results** %3, align 8
  br label %129

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
  br label %129

26:                                               ; preds = %16
  %27 = call %struct.TYPE_6__* @calloc(i32 1, i32 4)
  %28 = load %struct.input_config*, %struct.input_config** %7, align 8
  %29 = getelementptr inbounds %struct.input_config, %struct.input_config* %28, i32 0, i32 0
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %29, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.input_config*, %struct.input_config** %7, align 8
  %34 = getelementptr inbounds %struct.input_config, %struct.input_config* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.input_config*, %struct.input_config** %7, align 8
  %38 = getelementptr inbounds %struct.input_config, %struct.input_config* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = call i32 @parse_coords(i8* %32, i64* %36, i64* %40, i32* %8)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %26
  %44 = load %struct.input_config*, %struct.input_config** %7, align 8
  %45 = getelementptr inbounds %struct.input_config, %struct.input_config* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i32 @free(%struct.TYPE_6__* %46)
  %48 = load %struct.input_config*, %struct.input_config** %7, align 8
  %49 = getelementptr inbounds %struct.input_config, %struct.input_config* %48, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %49, align 8
  %50 = load i32, i32* @CMD_FAILURE, align 4
  %51 = call %struct.cmd_results* @cmd_results_new(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %51, %struct.cmd_results** %3, align 8
  br label %129

52:                                               ; preds = %26
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.input_config*, %struct.input_config** %7, align 8
  %57 = getelementptr inbounds %struct.input_config, %struct.input_config* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load %struct.input_config*, %struct.input_config** %7, align 8
  %61 = getelementptr inbounds %struct.input_config, %struct.input_config* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = call i32 @parse_coords(i8* %55, i64* %59, i64* %63, i32* %9)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %52
  %67 = load %struct.input_config*, %struct.input_config** %7, align 8
  %68 = getelementptr inbounds %struct.input_config, %struct.input_config* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call i32 @free(%struct.TYPE_6__* %69)
  %71 = load %struct.input_config*, %struct.input_config** %7, align 8
  %72 = getelementptr inbounds %struct.input_config, %struct.input_config* %71, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %72, align 8
  %73 = load i32, i32* @CMD_FAILURE, align 4
  %74 = call %struct.cmd_results* @cmd_results_new(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store %struct.cmd_results* %74, %struct.cmd_results** %3, align 8
  br label %129

75:                                               ; preds = %52
  %76 = load %struct.input_config*, %struct.input_config** %7, align 8
  %77 = getelementptr inbounds %struct.input_config, %struct.input_config* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.input_config*, %struct.input_config** %7, align 8
  %82 = getelementptr inbounds %struct.input_config, %struct.input_config* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %80, %85
  br i1 %86, label %99, label %87

87:                                               ; preds = %75
  %88 = load %struct.input_config*, %struct.input_config** %7, align 8
  %89 = getelementptr inbounds %struct.input_config, %struct.input_config* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.input_config*, %struct.input_config** %7, align 8
  %94 = getelementptr inbounds %struct.input_config, %struct.input_config* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %92, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %87, %75
  %100 = load %struct.input_config*, %struct.input_config** %7, align 8
  %101 = getelementptr inbounds %struct.input_config, %struct.input_config* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = call i32 @free(%struct.TYPE_6__* %102)
  %104 = load %struct.input_config*, %struct.input_config** %7, align 8
  %105 = getelementptr inbounds %struct.input_config, %struct.input_config* %104, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %105, align 8
  %106 = load i32, i32* @CMD_FAILURE, align 4
  %107 = call %struct.cmd_results* @cmd_results_new(i32 %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store %struct.cmd_results* %107, %struct.cmd_results** %3, align 8
  br label %129

108:                                              ; preds = %87
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load %struct.input_config*, %struct.input_config** %7, align 8
  %114 = getelementptr inbounds %struct.input_config, %struct.input_config* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = call i32 @free(%struct.TYPE_6__* %115)
  %117 = load %struct.input_config*, %struct.input_config** %7, align 8
  %118 = getelementptr inbounds %struct.input_config, %struct.input_config* %117, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %118, align 8
  %119 = load i32, i32* @CMD_FAILURE, align 4
  %120 = call %struct.cmd_results* @cmd_results_new(i32 %119, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store %struct.cmd_results* %120, %struct.cmd_results** %3, align 8
  br label %129

121:                                              ; preds = %108
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.input_config*, %struct.input_config** %7, align 8
  %124 = getelementptr inbounds %struct.input_config, %struct.input_config* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  store i32 %122, i32* %126, align 8
  %127 = load i32, i32* @CMD_SUCCESS, align 4
  %128 = call %struct.cmd_results* @cmd_results_new(i32 %127, i8* null)
  store %struct.cmd_results* %128, %struct.cmd_results** %3, align 8
  br label %129

129:                                              ; preds = %121, %112, %99, %66, %43, %23, %14
  %130 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %130
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @parse_coords(i8*, i64*, i64*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_opacity.c_cmd_opacity.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_opacity.c_cmd_opacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sway_container* }
%struct.sway_container = type { float }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"No current container\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"opacity float invalid\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Expected: set|plus|minus <0..1>: %s\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"opacity value out of bounds\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_opacity(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %12 = call %struct.cmd_results* @checkarg(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1)
  store %struct.cmd_results* %12, %struct.cmd_results** %6, align 8
  %13 = icmp ne %struct.cmd_results* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %15, %struct.cmd_results** %3, align 8
  br label %104

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.sway_container*, %struct.sway_container** %19, align 8
  store %struct.sway_container* %20, %struct.sway_container** %7, align 8
  %21 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %22 = icmp eq %struct.sway_container* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @CMD_FAILURE, align 4
  %25 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %25, %struct.cmd_results** %3, align 8
  br label %104

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  br label %37

33:                                               ; preds = %26
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i8* [ %32, %29 ], [ %36, %33 ]
  %39 = call float @strtof(i8* %38, i8** %8)
  store float %39, float* %9, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @CMD_INVALID, align 4
  %45 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %45, %struct.cmd_results** %3, align 8
  br label %104

46:                                               ; preds = %37
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strcasecmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %54 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %53, i32 0, i32 0
  %55 = load float, float* %54, align 4
  %56 = load float, float* %9, align 4
  %57 = fadd float %55, %56
  store float %57, float* %9, align 4
  br label %87

58:                                               ; preds = %46
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcasecmp(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %66 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %65, i32 0, i32 0
  %67 = load float, float* %66, align 4
  %68 = load float, float* %9, align 4
  %69 = fsub float %67, %68
  store float %69, float* %9, align 4
  br label %86

70:                                               ; preds = %58
  %71 = load i32, i32* %4, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @strcasecmp(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i32, i32* @CMD_INVALID, align 4
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %83)
  store %struct.cmd_results* %84, %struct.cmd_results** %3, align 8
  br label %104

85:                                               ; preds = %73, %70
  br label %86

86:                                               ; preds = %85, %64
  br label %87

87:                                               ; preds = %86, %52
  %88 = load float, float* %9, align 4
  %89 = fcmp olt float %88, 0.000000e+00
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load float, float* %9, align 4
  %92 = fcmp ogt float %91, 1.000000e+00
  br i1 %92, label %93, label %96

93:                                               ; preds = %90, %87
  %94 = load i32, i32* @CMD_FAILURE, align 4
  %95 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  store %struct.cmd_results* %95, %struct.cmd_results** %3, align 8
  br label %104

96:                                               ; preds = %90
  %97 = load float, float* %9, align 4
  %98 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %99 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %98, i32 0, i32 0
  store float %97, float* %99, align 4
  %100 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %101 = call i32 @container_damage_whole(%struct.sway_container* %100)
  %102 = load i32, i32* @CMD_SUCCESS, align 4
  %103 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %102, i8* null)
  store %struct.cmd_results* %103, %struct.cmd_results** %3, align 8
  br label %104

104:                                              ; preds = %96, %93, %79, %43, %23, %14
  %105 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %105
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local float @strtof(i8*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @container_damage_whole(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

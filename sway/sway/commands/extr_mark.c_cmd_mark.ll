; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_mark.c_cmd_mark.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_mark.c_cmd_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sway_container* }
%struct.sway_container = type { i64 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Only containers can have marks\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"--add\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"--replace\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"--toggle\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Unrecognized argument '%s'\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Expected '[--add|--replace] [--toggle] <identifier>'\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_mark(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %14 = call %struct.cmd_results* @checkarg(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %13, i32 1)
  store %struct.cmd_results* %14, %struct.cmd_results** %6, align 8
  %15 = icmp ne %struct.cmd_results* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %17, %struct.cmd_results** %3, align 8
  br label %116

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.sway_container*, %struct.sway_container** %21, align 8
  store %struct.sway_container* %22, %struct.sway_container** %7, align 8
  %23 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %24 = icmp ne %struct.sway_container* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @CMD_INVALID, align 4
  %27 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %27, %struct.cmd_results** %3, align 8
  br label %116

28:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %64, %28
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strncmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %36 = icmp eq i64 %35, 0
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  br i1 %38, label %39, label %69

39:                                               ; preds = %37
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %64

45:                                               ; preds = %39
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %63

51:                                               ; preds = %45
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 1, i32* %9, align 4
  br label %62

57:                                               ; preds = %51
  %58 = load i32, i32* @CMD_INVALID, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %60)
  store %struct.cmd_results* %61, %struct.cmd_results** %3, align 8
  br label %116

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %50
  br label %64

64:                                               ; preds = %63, %44
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %5, align 8
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %4, align 4
  br label %29

69:                                               ; preds = %37
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @CMD_INVALID, align 4
  %74 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %73, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  store %struct.cmd_results* %74, %struct.cmd_results** %3, align 8
  br label %116

75:                                               ; preds = %69
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i8* @join_args(i8** %76, i32 %77)
  store i8* %78, i8** %10, align 8
  %79 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @container_has_mark(%struct.sway_container* %79, i8* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %75
  %85 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %86 = call i32 @container_clear_marks(%struct.sway_container* %85)
  br label %87

87:                                               ; preds = %84, %75
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @container_find_and_unmark(i8* %88)
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @container_add_mark(%struct.sway_container* %96, i8* %97)
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %103 = call i32 @container_update_marks_textures(%struct.sway_container* %102)
  %104 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %105 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %99
  %109 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %110 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @view_execute_criteria(i64 %111)
  br label %113

113:                                              ; preds = %108, %99
  %114 = load i32, i32* @CMD_SUCCESS, align 4
  %115 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %114, i8* null)
  store %struct.cmd_results* %115, %struct.cmd_results** %3, align 8
  br label %116

116:                                              ; preds = %113, %72, %57, %25, %16
  %117 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %117
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @join_args(i8**, i32) #1

declare dso_local i32 @container_has_mark(%struct.sway_container*, i8*) #1

declare dso_local i32 @container_clear_marks(%struct.sway_container*) #1

declare dso_local i32 @container_find_and_unmark(i8*) #1

declare dso_local i32 @container_add_mark(%struct.sway_container*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @container_update_marks_textures(%struct.sway_container*) #1

declare dso_local i32 @view_execute_criteria(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

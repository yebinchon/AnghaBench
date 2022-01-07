; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_swap.c_cmd_swap.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_swap.c_cmd_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sway_container* }
%struct.sway_container = type { i32 }
%struct.cmd_results = type { i32 }
%struct.sway_node = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_7__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Can't run this command while there's no outputs connected.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@expected_syntax = common dso_local global i8* null, align 8
@config = common dso_local global %struct.TYPE_8__* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"con_id\00", align 1
@test_con_id = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@test_mark = common dso_local global i32 0, align 4
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Failed to find %s '%s'\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Can only swap with containers and views\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Cannot swap ancestor and descendant\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@test_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_swap(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sway_node*, align 8
  %12 = alloca %struct.sway_node*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %15 = call %struct.cmd_results* @checkarg(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14, i32 4)
  store %struct.cmd_results* %15, %struct.cmd_results** %6, align 8
  %16 = icmp ne %struct.cmd_results* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %18, %struct.cmd_results** %3, align 8
  br label %164

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @CMD_INVALID, align 4
  %28 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %27, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %28, %struct.cmd_results** %3, align 8
  br label %164

29:                                               ; preds = %19
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcasecmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcasecmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35, %29
  %42 = load i32, i32* @CMD_INVALID, align 4
  %43 = load i8*, i8** @expected_syntax, align 8
  %44 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %42, i8* %43)
  store %struct.cmd_results* %44, %struct.cmd_results** %3, align 8
  br label %164

45:                                               ; preds = %35
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.sway_container*, %struct.sway_container** %48, align 8
  store %struct.sway_container* %49, %struct.sway_container** %7, align 8
  store %struct.sway_container* null, %struct.sway_container** %8, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 3
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 3
  %54 = call i8* @join_args(i8** %51, i32 %53)
  store i8* %54, i8** %9, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %90

61:                                               ; preds = %45
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strcasecmp(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i8*, i8** %9, align 8
  %69 = call i64 @atoi(i8* %68)
  store i64 %69, i64* %10, align 8
  %70 = load i32, i32* @test_con_id, align 4
  %71 = call %struct.sway_container* (i32, ...) @root_find_container(i32 %70, i64* %10)
  store %struct.sway_container* %71, %struct.sway_container** %8, align 8
  br label %89

72:                                               ; preds = %61
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcasecmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @test_mark, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = call %struct.sway_container* (i32, ...) @root_find_container(i32 %79, i8* %80)
  store %struct.sway_container* %81, %struct.sway_container** %8, align 8
  br label %88

82:                                               ; preds = %72
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* @CMD_INVALID, align 4
  %86 = load i8*, i8** @expected_syntax, align 8
  %87 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %85, i8* %86)
  store %struct.cmd_results* %87, %struct.cmd_results** %3, align 8
  br label %164

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %60
  %91 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %92 = icmp ne %struct.sway_container* %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* @CMD_FAILURE, align 4
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 2
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %97, i8* %98)
  store %struct.cmd_results* %99, %struct.cmd_results** %6, align 8
  br label %121

100:                                              ; preds = %90
  %101 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %102 = icmp ne %struct.sway_container* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @CMD_FAILURE, align 4
  %105 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %104, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  store %struct.cmd_results* %105, %struct.cmd_results** %6, align 8
  br label %120

106:                                              ; preds = %100
  %107 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %108 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %109 = call i64 @container_has_ancestor(%struct.sway_container* %107, %struct.sway_container* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %113 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %114 = call i64 @container_has_ancestor(%struct.sway_container* %112, %struct.sway_container* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111, %106
  %117 = load i32, i32* @CMD_FAILURE, align 4
  %118 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  store %struct.cmd_results* %118, %struct.cmd_results** %6, align 8
  br label %119

119:                                              ; preds = %116, %111
  br label %120

120:                                              ; preds = %119, %103
  br label %121

121:                                              ; preds = %120, %93
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  %125 = icmp ne %struct.cmd_results* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %127, %struct.cmd_results** %3, align 8
  br label %164

128:                                              ; preds = %121
  %129 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %130 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %131 = call i32 @container_swap(%struct.sway_container* %129, %struct.sway_container* %130)
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = call i32 (...) @arrange_root()
  br label %161

138:                                              ; preds = %128
  %139 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %140 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %139, i32 0, i32 0
  %141 = call %struct.sway_node* @node_get_parent(i32* %140)
  store %struct.sway_node* %141, %struct.sway_node** %11, align 8
  %142 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %143 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %142, i32 0, i32 0
  %144 = call %struct.sway_node* @node_get_parent(i32* %143)
  store %struct.sway_node* %144, %struct.sway_node** %12, align 8
  %145 = load %struct.sway_node*, %struct.sway_node** %11, align 8
  %146 = icmp ne %struct.sway_node* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load %struct.sway_node*, %struct.sway_node** %11, align 8
  %149 = call i32 @arrange_node(%struct.sway_node* %148)
  br label %150

150:                                              ; preds = %147, %138
  %151 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %152 = icmp ne %struct.sway_node* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load %struct.sway_node*, %struct.sway_node** %11, align 8
  %155 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %156 = icmp ne %struct.sway_node* %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %159 = call i32 @arrange_node(%struct.sway_node* %158)
  br label %160

160:                                              ; preds = %157, %153, %150
  br label %161

161:                                              ; preds = %160, %136
  %162 = load i32, i32* @CMD_SUCCESS, align 4
  %163 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %162, i8* null)
  store %struct.cmd_results* %163, %struct.cmd_results** %3, align 8
  br label %164

164:                                              ; preds = %161, %126, %82, %41, %26, %17
  %165 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %165
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @join_args(i8**, i32) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local %struct.sway_container* @root_find_container(i32, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @container_has_ancestor(%struct.sway_container*, %struct.sway_container*) #1

declare dso_local i32 @container_swap(%struct.sway_container*, %struct.sway_container*) #1

declare dso_local i32 @arrange_root(...) #1

declare dso_local %struct.sway_node* @node_get_parent(i32*) #1

declare dso_local i32 @arrange_node(%struct.sway_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

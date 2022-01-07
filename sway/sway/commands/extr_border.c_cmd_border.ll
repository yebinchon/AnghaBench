; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_border.c_cmd_border.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_border.c_cmd_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sway_container* }
%struct.sway_container = type { i32, %struct.sway_view* }
%struct.sway_view = type { i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"border\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Only views can have borders\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@B_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@B_NORMAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@B_PIXEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"csd\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"This window doesn't support client side decorations\00", align 1
@B_CSD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"Expected 'border <none|normal|pixel|csd|toggle>' or 'border pixel <px>'\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_border(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_view*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %11 = call %struct.cmd_results* @checkarg(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10, i32 1)
  store %struct.cmd_results* %11, %struct.cmd_results** %6, align 8
  %12 = icmp ne %struct.cmd_results* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %14, %struct.cmd_results** %3, align 8
  br label %119

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.sway_container*, %struct.sway_container** %18, align 8
  store %struct.sway_container* %19, %struct.sway_container** %7, align 8
  %20 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %21 = icmp ne %struct.sway_container* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %24 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %23, i32 0, i32 1
  %25 = load %struct.sway_view*, %struct.sway_view** %24, align 8
  %26 = icmp ne %struct.sway_view* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %15
  %28 = load i32, i32* @CMD_INVALID, align 4
  %29 = call %struct.cmd_results* @cmd_results_new(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %29, %struct.cmd_results** %3, align 8
  br label %119

30:                                               ; preds = %22
  %31 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %32 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %31, i32 0, i32 1
  %33 = load %struct.sway_view*, %struct.sway_view** %32, align 8
  store %struct.sway_view* %33, %struct.sway_view** %8, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %41 = load i32, i32* @B_NONE, align 4
  %42 = call i32 @set_border(%struct.sway_container* %40, i32 %41)
  br label %97

43:                                               ; preds = %30
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %51 = load i32, i32* @B_NORMAL, align 4
  %52 = call i32 @set_border(%struct.sway_container* %50, i32 %51)
  br label %96

53:                                               ; preds = %43
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %61 = load i32, i32* @B_PIXEL, align 4
  %62 = call i32 @set_border(%struct.sway_container* %60, i32 %61)
  br label %95

63:                                               ; preds = %53
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %71 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @CMD_INVALID, align 4
  %76 = call %struct.cmd_results* @cmd_results_new(i32 %75, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  store %struct.cmd_results* %76, %struct.cmd_results** %3, align 8
  br label %119

77:                                               ; preds = %69
  %78 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %79 = load i32, i32* @B_CSD, align 4
  %80 = call i32 @set_border(%struct.sway_container* %78, i32 %79)
  br label %94

81:                                               ; preds = %63
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %89 = call i32 @border_toggle(%struct.sway_container* %88)
  br label %93

90:                                               ; preds = %81
  %91 = load i32, i32* @CMD_INVALID, align 4
  %92 = call %struct.cmd_results* @cmd_results_new(i32 %91, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0))
  store %struct.cmd_results* %92, %struct.cmd_results** %3, align 8
  br label %119

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %77
  br label %95

95:                                               ; preds = %94, %59
  br label %96

96:                                               ; preds = %95, %49
  br label %97

97:                                               ; preds = %96, %39
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @atoi(i8* %103)
  %105 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %106 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %100, %97
  %108 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %109 = call i64 @container_is_floating(%struct.sway_container* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %113 = call i32 @container_set_geometry_from_content(%struct.sway_container* %112)
  br label %114

114:                                              ; preds = %111, %107
  %115 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %116 = call i32 @arrange_container(%struct.sway_container* %115)
  %117 = load i32, i32* @CMD_SUCCESS, align 4
  %118 = call %struct.cmd_results* @cmd_results_new(i32 %117, i8* null)
  store %struct.cmd_results* %118, %struct.cmd_results** %3, align 8
  br label %119

119:                                              ; preds = %114, %90, %74, %27, %13
  %120 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %120
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_border(%struct.sway_container*, i32) #1

declare dso_local i32 @border_toggle(%struct.sway_container*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @container_set_geometry_from_content(%struct.sway_container*) #1

declare dso_local i32 @arrange_container(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

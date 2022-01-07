; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_hide_edge_borders.c_cmd_hide_edge_borders.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_hide_edge_borders.c_cmd_hide_edge_borders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8* }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [85 x i8] c"Expected 'hide_edge_borders [--i3] none|vertical|horizontal|both|smart|smart_no_gaps\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"hide_edge_borders\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"--i3\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@E_NONE = common dso_local global i8* null, align 8
@config = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@E_VERTICAL = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@E_HORIZONTAL = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@E_BOTH = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"smart\00", align 1
@ESMART_ON = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"smart_no_gaps\00", align 1
@ESMART_NO_GAPS = common dso_local global i32 0, align 4
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_hide_edge_borders(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cmd_results*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %11 = call %struct.cmd_results* @checkarg(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 1)
  store %struct.cmd_results* %11, %struct.cmd_results** %7, align 8
  %12 = icmp ne %struct.cmd_results* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.cmd_results*, %struct.cmd_results** %7, align 8
  store %struct.cmd_results* %14, %struct.cmd_results** %3, align 8
  br label %114

15:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  store i32 1, i32* %8, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @CMD_INVALID, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call %struct.cmd_results* @cmd_results_new(i32 %29, i8* %30)
  store %struct.cmd_results* %31, %struct.cmd_results** %3, align 8
  br label %114

32:                                               ; preds = %25
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i8*, i8** @E_NONE, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %107

42:                                               ; preds = %32
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i8*, i8** @E_VERTICAL, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %106

52:                                               ; preds = %42
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i8*, i8** @E_HORIZONTAL, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %105

62:                                               ; preds = %52
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i8*, i8** @E_BOTH, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  br label %104

72:                                               ; preds = %62
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i8*, i8** @E_NONE, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @ESMART_ON, align 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %103

85:                                               ; preds = %72
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load i8*, i8** @E_NONE, align 8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* @ESMART_NO_GAPS, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %102

98:                                               ; preds = %85
  %99 = load i32, i32* @CMD_INVALID, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = call %struct.cmd_results* @cmd_results_new(i32 %99, i8* %100)
  store %struct.cmd_results* %101, %struct.cmd_results** %3, align 8
  br label %114

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %78
  br label %104

104:                                              ; preds = %103, %68
  br label %105

105:                                              ; preds = %104, %58
  br label %106

106:                                              ; preds = %105, %48
  br label %107

107:                                              ; preds = %106, %38
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = call i32 (...) @arrange_root()
  %112 = load i32, i32* @CMD_SUCCESS, align 4
  %113 = call %struct.cmd_results* @cmd_results_new(i32 %112, i8* null)
  store %struct.cmd_results* %113, %struct.cmd_results** %3, align 8
  br label %114

114:                                              ; preds = %107, %98, %28, %13
  %115 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %115
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i32 @arrange_root(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

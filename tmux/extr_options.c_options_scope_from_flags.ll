; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_scope_from_flags.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_scope_from_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32 }
%struct.args = type { i32 }
%struct.cmd_find_state = type { %struct.window_pane*, %struct.winlink*, %struct.session* }
%struct.window_pane = type { %struct.options* }
%struct.winlink = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.options* }
%struct.session = type { %struct.options* }

@global_options = common dso_local global %struct.options* null, align 8
@OPTIONS_TABLE_SERVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no such pane: %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"no current pane\00", align 1
@OPTIONS_TABLE_NONE = common dso_local global i32 0, align 4
@OPTIONS_TABLE_PANE = common dso_local global i32 0, align 4
@global_w_options = common dso_local global %struct.options* null, align 8
@OPTIONS_TABLE_WINDOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"no such window: %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"no current window\00", align 1
@global_s_options = common dso_local global %struct.options* null, align 8
@OPTIONS_TABLE_SESSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"no such session: %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"no current session\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @options_scope_from_flags(%struct.args* %0, i32 %1, %struct.cmd_find_state* %2, %struct.options** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmd_find_state*, align 8
  %10 = alloca %struct.options**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.session*, align 8
  %13 = alloca %struct.winlink*, align 8
  %14 = alloca %struct.window_pane*, align 8
  %15 = alloca i8*, align 8
  store %struct.args* %0, %struct.args** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.cmd_find_state* %2, %struct.cmd_find_state** %9, align 8
  store %struct.options** %3, %struct.options*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %16 = load %struct.cmd_find_state*, %struct.cmd_find_state** %9, align 8
  %17 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %16, i32 0, i32 2
  %18 = load %struct.session*, %struct.session** %17, align 8
  store %struct.session* %18, %struct.session** %12, align 8
  %19 = load %struct.cmd_find_state*, %struct.cmd_find_state** %9, align 8
  %20 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %19, i32 0, i32 1
  %21 = load %struct.winlink*, %struct.winlink** %20, align 8
  store %struct.winlink* %21, %struct.winlink** %13, align 8
  %22 = load %struct.cmd_find_state*, %struct.cmd_find_state** %9, align 8
  %23 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %22, i32 0, i32 0
  %24 = load %struct.window_pane*, %struct.window_pane** %23, align 8
  store %struct.window_pane* %24, %struct.window_pane** %14, align 8
  %25 = load %struct.args*, %struct.args** %7, align 8
  %26 = call i8* @args_get(%struct.args* %25, i8 signext 116)
  store i8* %26, i8** %15, align 8
  %27 = load %struct.args*, %struct.args** %7, align 8
  %28 = call i64 @args_has(%struct.args* %27, i8 signext 115)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load %struct.options*, %struct.options** @global_options, align 8
  %32 = load %struct.options**, %struct.options*** %10, align 8
  store %struct.options* %31, %struct.options** %32, align 8
  %33 = load i32, i32* @OPTIONS_TABLE_SERVER, align 4
  store i32 %33, i32* %6, align 4
  br label %126

34:                                               ; preds = %5
  %35 = load %struct.args*, %struct.args** %7, align 8
  %36 = call i64 @args_has(%struct.args* %35, i8 signext 112)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %40 = icmp eq %struct.window_pane* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i8*, i8** %15, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8**, i8*** %11, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = call i32 (i8**, i8*, ...) @xasprintf(i8** %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %51

48:                                               ; preds = %41
  %49 = load i8**, i8*** %11, align 8
  %50 = call i32 (i8**, i8*, ...) @xasprintf(i8** %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* @OPTIONS_TABLE_NONE, align 4
  store i32 %52, i32* %6, align 4
  br label %126

53:                                               ; preds = %38
  %54 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %55 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %54, i32 0, i32 0
  %56 = load %struct.options*, %struct.options** %55, align 8
  %57 = load %struct.options**, %struct.options*** %10, align 8
  store %struct.options* %56, %struct.options** %57, align 8
  %58 = load i32, i32* @OPTIONS_TABLE_PANE, align 4
  store i32 %58, i32* %6, align 4
  br label %126

59:                                               ; preds = %34
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load %struct.args*, %struct.args** %7, align 8
  %64 = call i64 @args_has(%struct.args* %63, i8 signext 119)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %62, %59
  %67 = load %struct.args*, %struct.args** %7, align 8
  %68 = call i64 @args_has(%struct.args* %67, i8 signext 103)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.options*, %struct.options** @global_w_options, align 8
  %72 = load %struct.options**, %struct.options*** %10, align 8
  store %struct.options* %71, %struct.options** %72, align 8
  %73 = load i32, i32* @OPTIONS_TABLE_WINDOW, align 4
  store i32 %73, i32* %6, align 4
  br label %126

74:                                               ; preds = %66
  %75 = load %struct.winlink*, %struct.winlink** %13, align 8
  %76 = icmp eq %struct.winlink* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load i8*, i8** %15, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i8**, i8*** %11, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = call i32 (i8**, i8*, ...) @xasprintf(i8** %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  br label %87

84:                                               ; preds = %77
  %85 = load i8**, i8*** %11, align 8
  %86 = call i32 (i8**, i8*, ...) @xasprintf(i8** %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %80
  %88 = load i32, i32* @OPTIONS_TABLE_NONE, align 4
  store i32 %88, i32* %6, align 4
  br label %126

89:                                               ; preds = %74
  %90 = load %struct.winlink*, %struct.winlink** %13, align 8
  %91 = getelementptr inbounds %struct.winlink, %struct.winlink* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load %struct.options*, %struct.options** %93, align 8
  %95 = load %struct.options**, %struct.options*** %10, align 8
  store %struct.options* %94, %struct.options** %95, align 8
  %96 = load i32, i32* @OPTIONS_TABLE_WINDOW, align 4
  store i32 %96, i32* %6, align 4
  br label %126

97:                                               ; preds = %62
  %98 = load %struct.args*, %struct.args** %7, align 8
  %99 = call i64 @args_has(%struct.args* %98, i8 signext 103)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load %struct.options*, %struct.options** @global_s_options, align 8
  %103 = load %struct.options**, %struct.options*** %10, align 8
  store %struct.options* %102, %struct.options** %103, align 8
  %104 = load i32, i32* @OPTIONS_TABLE_SESSION, align 4
  store i32 %104, i32* %6, align 4
  br label %126

105:                                              ; preds = %97
  %106 = load %struct.session*, %struct.session** %12, align 8
  %107 = icmp eq %struct.session* %106, null
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i8*, i8** %15, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i8**, i8*** %11, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = call i32 (i8**, i8*, ...) @xasprintf(i8** %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %113)
  br label %118

115:                                              ; preds = %108
  %116 = load i8**, i8*** %11, align 8
  %117 = call i32 (i8**, i8*, ...) @xasprintf(i8** %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i32, i32* @OPTIONS_TABLE_NONE, align 4
  store i32 %119, i32* %6, align 4
  br label %126

120:                                              ; preds = %105
  %121 = load %struct.session*, %struct.session** %12, align 8
  %122 = getelementptr inbounds %struct.session, %struct.session* %121, i32 0, i32 0
  %123 = load %struct.options*, %struct.options** %122, align 8
  %124 = load %struct.options**, %struct.options*** %10, align 8
  store %struct.options* %123, %struct.options** %124, align 8
  %125 = load i32, i32* @OPTIONS_TABLE_SESSION, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %120, %118, %101, %89, %87, %70, %53, %51, %30
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32 @xasprintf(i8**, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

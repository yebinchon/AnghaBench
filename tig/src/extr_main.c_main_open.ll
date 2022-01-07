; ModuleID = '/home/carl/AnghaBench/tig/src/extr_main.c_main_open.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_main.c_main_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64 }
%struct.view = type { i32, %struct.main_state* }
%struct.main_state = type { i32, i32 }
%struct.view_column = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@VIEW_COLUMN_COMMIT_TITLE = common dso_local global i32 0, align 4
@encoding_arg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%(mainargs)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%(cmdlineargs)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%(revargs)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%(fileargs)\00", align 1
@WATCH_NONE = common dso_local global i32 0, align 4
@opt_show_changes = common dso_local global i64 0, align 8
@repo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@WATCH_INDEX = common dso_local global i32 0, align 4
@GRAPH_DISPLAY_NO = common dso_local global i32 0, align 4
@opt_rev_args = common dso_local global i64 0, align 8
@ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@WATCH_HEAD = common dso_local global i32 0, align 4
@WATCH_REFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @main_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @main_open(%struct.view* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.view_column*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x i8*], align 8
  %9 = alloca [1 x i8*], align 8
  %10 = alloca %struct.main_state*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.view*, %struct.view** %4, align 8
  %15 = load i32, i32* @VIEW_COLUMN_COMMIT_TITLE, align 4
  %16 = call %struct.view_column* @get_view_column(%struct.view* %14, i32 %15)
  store %struct.view_column* %16, %struct.view_column** %6, align 8
  %17 = load %struct.view*, %struct.view** %4, align 8
  %18 = load %struct.view_column*, %struct.view_column** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @main_with_graph(%struct.view* %17, %struct.view_column* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  %22 = load i32, i32* @encoding_arg, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @commit_order_arg_with_graph(i32 %23)
  %25 = call i32 (...) @show_notes_arg()
  %26 = call i32 (...) @log_custom_pretty_arg()
  %27 = call i8* @GIT_MAIN_LOG(i32 %22, i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %25, i32 %26)
  store i8* %27, i8** %21, align 8
  %28 = getelementptr inbounds [1 x i8*], [1 x i8*]* %9, i64 0, i64 0
  %29 = load i32, i32* @encoding_arg, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @commit_order_arg_with_graph(i32 %30)
  %32 = call i32 (...) @show_notes_arg()
  %33 = call i8* @GIT_MAIN_LOG_RAW(i32 %29, i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  store i8* %33, i8** %28, align 8
  %34 = load %struct.view*, %struct.view** %4, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 1
  %36 = load %struct.main_state*, %struct.main_state** %35, align 8
  store %struct.main_state* %36, %struct.main_state** %10, align 8
  %37 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  store i8** %37, i8*** %11, align 8
  %38 = load i32, i32* @WATCH_NONE, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i64, i64* @opt_show_changes, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %2
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @repo, i32 0, i32 1), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @repo, i32 0, i32 0), align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44, %41
  %49 = load i32, i32* @WATCH_INDEX, align 4
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %48, %44, %2
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @GRAPH_DISPLAY_NO, align 4
  %55 = icmp ne i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load %struct.main_state*, %struct.main_state** %10, align 8
  %58 = getelementptr inbounds %struct.main_state, %struct.main_state* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i64, i64* @opt_rev_args, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load %struct.view*, %struct.view** %4, align 8
  %63 = load i64, i64* @opt_rev_args, align 8
  %64 = call i64 @main_check_argv(%struct.view* %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = getelementptr inbounds [1 x i8*], [1 x i8*]* %9, i64 0, i64 0
  store i8** %67, i8*** %11, align 8
  br label %68

68:                                               ; preds = %66, %61, %52
  %69 = load %struct.main_state*, %struct.main_state** %10, align 8
  %70 = getelementptr inbounds %struct.main_state, %struct.main_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load %struct.view_column*, %struct.view_column** %6, align 8
  %75 = getelementptr inbounds %struct.view_column, %struct.view_column* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @init_graph(i32 %78)
  %80 = load %struct.main_state*, %struct.main_state** %10, align 8
  %81 = getelementptr inbounds %struct.main_state, %struct.main_state* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.main_state*, %struct.main_state** %10, align 8
  %83 = getelementptr inbounds %struct.main_state, %struct.main_state* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %73
  %87 = load i32, i32* @ERROR_OUT_OF_MEMORY, align 4
  store i32 %87, i32* %3, align 4
  br label %127

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %68
  %90 = load i32, i32* %5, align 4
  %91 = call i64 @open_in_pager_mode(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @WATCH_NONE, align 4
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %93, %89
  %96 = load %struct.view*, %struct.view** %4, align 8
  %97 = load i8**, i8*** %11, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @begin_update(%struct.view* %96, i32* null, i8** %97, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @SUCCESS, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %3, align 4
  br label %127

105:                                              ; preds = %95
  %106 = load %struct.view*, %struct.view** %4, align 8
  %107 = call i64 @view_can_refresh(%struct.view* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load %struct.view*, %struct.view** %4, align 8
  %111 = getelementptr inbounds %struct.view, %struct.view* %110, i32 0, i32 0
  %112 = load i32, i32* @WATCH_HEAD, align 4
  %113 = load i32, i32* @WATCH_REFS, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @watch_register(i32* %111, i32 %116)
  br label %118

118:                                              ; preds = %109, %105
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load %struct.view*, %struct.view** %4, align 8
  %123 = load %struct.main_state*, %struct.main_state** %10, align 8
  %124 = call i32 @main_check_index(%struct.view* %122, %struct.main_state* %123)
  br label %125

125:                                              ; preds = %121, %118
  %126 = load i32, i32* @SUCCESS, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %103, %86
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.view_column* @get_view_column(%struct.view*, i32) #1

declare dso_local i32 @main_with_graph(%struct.view*, %struct.view_column*, i32) #1

declare dso_local i8* @GIT_MAIN_LOG(i32, i32, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @commit_order_arg_with_graph(i32) #1

declare dso_local i32 @show_notes_arg(...) #1

declare dso_local i32 @log_custom_pretty_arg(...) #1

declare dso_local i8* @GIT_MAIN_LOG_RAW(i32, i32, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i64 @main_check_argv(%struct.view*, i64) #1

declare dso_local i32 @init_graph(i32) #1

declare dso_local i64 @open_in_pager_mode(i32) #1

declare dso_local i32 @begin_update(%struct.view*, i32*, i8**, i32) #1

declare dso_local i64 @view_can_refresh(%struct.view*) #1

declare dso_local i32 @watch_register(i32*, i32) #1

declare dso_local i32 @main_check_index(%struct.view*, %struct.main_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

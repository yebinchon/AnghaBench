; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_defaults_winlink.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_defaults_winlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.winlink* }
%struct.winlink = type { i32, i32, %struct.window*, %struct.session* }
%struct.window = type { i32 }
%struct.session = type { i32, i32, %struct.winlink* }
%struct.format_tree = type { %struct.winlink*, %struct.window*, %struct.client* }
%struct.client = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"window_bigger\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"window_offset_x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"window_offset_y\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"window_index\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"window_stack_index\00", align 1
@format_cb_window_stack_index = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"window_flags\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"window_active\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"window_start_flag\00", align 1
@winlinks = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"window_end_flag\00", align 1
@marked_pane = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"window_marked_flag\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"window_bell_flag\00", align 1
@WINLINK_BELL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"window_activity_flag\00", align 1
@WINLINK_ACTIVITY = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"window_silence_flag\00", align 1
@WINLINK_SILENCE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"window_last_flag\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"window_linked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.format_tree*, %struct.winlink*)* @format_defaults_winlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_defaults_winlink(%struct.format_tree* %0, %struct.winlink* %1) #0 {
  %3 = alloca %struct.format_tree*, align 8
  %4 = alloca %struct.winlink*, align 8
  %5 = alloca %struct.client*, align 8
  %6 = alloca %struct.session*, align 8
  %7 = alloca %struct.window*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.format_tree* %0, %struct.format_tree** %3, align 8
  store %struct.winlink* %1, %struct.winlink** %4, align 8
  %13 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %14 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %13, i32 0, i32 2
  %15 = load %struct.client*, %struct.client** %14, align 8
  store %struct.client* %15, %struct.client** %5, align 8
  %16 = load %struct.winlink*, %struct.winlink** %4, align 8
  %17 = getelementptr inbounds %struct.winlink, %struct.winlink* %16, i32 0, i32 3
  %18 = load %struct.session*, %struct.session** %17, align 8
  store %struct.session* %18, %struct.session** %6, align 8
  %19 = load %struct.winlink*, %struct.winlink** %4, align 8
  %20 = getelementptr inbounds %struct.winlink, %struct.winlink* %19, i32 0, i32 2
  %21 = load %struct.window*, %struct.window** %20, align 8
  store %struct.window* %21, %struct.window** %7, align 8
  %22 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %23 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %22, i32 0, i32 1
  %24 = load %struct.window*, %struct.window** %23, align 8
  %25 = icmp eq %struct.window* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.winlink*, %struct.winlink** %4, align 8
  %28 = getelementptr inbounds %struct.winlink, %struct.winlink* %27, i32 0, i32 2
  %29 = load %struct.window*, %struct.window** %28, align 8
  %30 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %31 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %30, i32 0, i32 1
  store %struct.window* %29, %struct.window** %31, align 8
  br label %32

32:                                               ; preds = %26, %2
  %33 = load %struct.winlink*, %struct.winlink** %4, align 8
  %34 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %35 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %34, i32 0, i32 0
  store %struct.winlink* %33, %struct.winlink** %35, align 8
  %36 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %37 = load %struct.window*, %struct.window** %7, align 8
  %38 = call i32 @format_defaults_window(%struct.format_tree* %36, %struct.window* %37)
  %39 = load %struct.client*, %struct.client** %5, align 8
  %40 = icmp ne %struct.client* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %32
  %42 = load %struct.client*, %struct.client** %5, align 8
  %43 = getelementptr inbounds %struct.client, %struct.client* %42, i32 0, i32 0
  %44 = call i32 @tty_window_offset(i32* %43, i32* %9, i32* %10, i32* %11, i32* %12)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %50, %41
  br label %58

58:                                               ; preds = %57, %32
  %59 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %60 = load %struct.winlink*, %struct.winlink** %4, align 8
  %61 = getelementptr inbounds %struct.winlink, %struct.winlink* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %65 = load i32, i32* @format_cb_window_stack_index, align 4
  %66 = call i32 @format_add_cb(%struct.format_tree* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  %67 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %68 = load %struct.winlink*, %struct.winlink** %4, align 8
  %69 = call i32 @window_printable_flags(%struct.winlink* %68)
  %70 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %69)
  %71 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %72 = load %struct.winlink*, %struct.winlink** %4, align 8
  %73 = load %struct.session*, %struct.session** %6, align 8
  %74 = getelementptr inbounds %struct.session, %struct.session* %73, i32 0, i32 2
  %75 = load %struct.winlink*, %struct.winlink** %74, align 8
  %76 = icmp eq %struct.winlink* %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %80 = load %struct.winlink*, %struct.winlink** %4, align 8
  %81 = load i32, i32* @winlinks, align 4
  %82 = load %struct.session*, %struct.session** %6, align 8
  %83 = getelementptr inbounds %struct.session, %struct.session* %82, i32 0, i32 1
  %84 = call %struct.winlink* @RB_MIN(i32 %81, i32* %83)
  %85 = icmp eq %struct.winlink* %80, %84
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %91 = load %struct.winlink*, %struct.winlink** %4, align 8
  %92 = load i32, i32* @winlinks, align 4
  %93 = load %struct.session*, %struct.session** %6, align 8
  %94 = getelementptr inbounds %struct.session, %struct.session* %93, i32 0, i32 1
  %95 = call %struct.winlink* @RB_MAX(i32 %92, i32* %94)
  %96 = icmp eq %struct.winlink* %91, %95
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = call i64 (...) @server_check_marked()
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %58
  %104 = load %struct.winlink*, %struct.winlink** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @marked_pane, i32 0, i32 0), align 8
  %105 = load %struct.winlink*, %struct.winlink** %4, align 8
  %106 = icmp eq %struct.winlink* %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %109 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %113

110:                                              ; preds = %103, %58
  %111 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %112 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %115 = load %struct.winlink*, %struct.winlink** %4, align 8
  %116 = getelementptr inbounds %struct.winlink, %struct.winlink* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @WINLINK_BELL, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %126 = load %struct.winlink*, %struct.winlink** %4, align 8
  %127 = getelementptr inbounds %struct.winlink, %struct.winlink* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @WINLINK_ACTIVITY, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  %136 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %137 = load %struct.winlink*, %struct.winlink** %4, align 8
  %138 = getelementptr inbounds %struct.winlink, %struct.winlink* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @WINLINK_SILENCE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %148 = load %struct.winlink*, %struct.winlink** %4, align 8
  %149 = load %struct.session*, %struct.session** %6, align 8
  %150 = getelementptr inbounds %struct.session, %struct.session* %149, i32 0, i32 0
  %151 = call %struct.winlink* @TAILQ_FIRST(i32* %150)
  %152 = icmp eq %struct.winlink* %148, %151
  %153 = xor i1 %152, true
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %147, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  %157 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %158 = load %struct.session*, %struct.session** %6, align 8
  %159 = load %struct.winlink*, %struct.winlink** %4, align 8
  %160 = getelementptr inbounds %struct.winlink, %struct.winlink* %159, i32 0, i32 2
  %161 = load %struct.window*, %struct.window** %160, align 8
  %162 = call i32 @session_is_linked(%struct.session* %158, %struct.window* %161)
  %163 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %162)
  ret void
}

declare dso_local i32 @format_defaults_window(%struct.format_tree*, %struct.window*) #1

declare dso_local i32 @tty_window_offset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @format_add(%struct.format_tree*, i8*, i8*, ...) #1

declare dso_local i32 @format_add_cb(%struct.format_tree*, i8*, i32) #1

declare dso_local i32 @window_printable_flags(%struct.winlink*) #1

declare dso_local %struct.winlink* @RB_MIN(i32, i32*) #1

declare dso_local %struct.winlink* @RB_MAX(i32, i32*) #1

declare dso_local i64 @server_check_marked(...) #1

declare dso_local %struct.winlink* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @session_is_linked(%struct.session*, %struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

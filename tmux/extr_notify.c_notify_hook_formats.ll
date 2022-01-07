; ModuleID = '/home/carl/AnghaBench/tmux/extr_notify.c_notify_hook_formats.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_notify.c_notify_hook_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_item = type { i32 }
%struct.session = type { i32, i32 }
%struct.window = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"hook_session\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"$%u\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"hook_session_name\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"hook_window\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"@%u\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"hook_window_name\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"hook_pane\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%%%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdq_item*, %struct.session*, %struct.window*, i32)* @notify_hook_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notify_hook_formats(%struct.cmdq_item* %0, %struct.session* %1, %struct.window* %2, i32 %3) #0 {
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.session*, align 8
  %7 = alloca %struct.window*, align 8
  %8 = alloca i32, align 4
  store %struct.cmdq_item* %0, %struct.cmdq_item** %5, align 8
  store %struct.session* %1, %struct.session** %6, align 8
  store %struct.window* %2, %struct.window** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.session*, %struct.session** %6, align 8
  %10 = icmp ne %struct.session* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %13 = load %struct.session*, %struct.session** %6, align 8
  %14 = getelementptr inbounds %struct.session, %struct.session* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cmdq_format(%struct.cmdq_item* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %18 = load %struct.session*, %struct.session** %6, align 8
  %19 = getelementptr inbounds %struct.session, %struct.session* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cmdq_format(%struct.cmdq_item* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %11, %4
  %23 = load %struct.window*, %struct.window** %7, align 8
  %24 = icmp ne %struct.window* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %27 = load %struct.window*, %struct.window** %7, align 8
  %28 = getelementptr inbounds %struct.window, %struct.window* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cmdq_format(%struct.cmdq_item* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %29)
  %31 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %32 = load %struct.window*, %struct.window** %7, align 8
  %33 = getelementptr inbounds %struct.window, %struct.window* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cmdq_format(%struct.cmdq_item* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %25, %22
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @cmdq_format(%struct.cmdq_item* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @cmdq_format(%struct.cmdq_item*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

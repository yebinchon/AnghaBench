; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_copy_pipe_no_clear.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_copy_pipe_no_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.TYPE_2__*, %struct.winlink*, %struct.session*, %struct.client*, %struct.window_mode_entry* }
%struct.TYPE_2__ = type { i32, i8** }
%struct.winlink = type { i32 }
%struct.session = type { i32 }
%struct.client = type { i32 }
%struct.window_mode_entry = type { %struct.window_pane* }
%struct.window_pane = type { i32 }

@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_copy_pipe_no_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_copy_pipe_no_clear(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca %struct.window_copy_cmd_state*, align 8
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca %struct.client*, align 8
  %5 = alloca %struct.session*, align 8
  %6 = alloca %struct.winlink*, align 8
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %2, align 8
  %10 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %11 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %10, i32 0, i32 4
  %12 = load %struct.window_mode_entry*, %struct.window_mode_entry** %11, align 8
  store %struct.window_mode_entry* %12, %struct.window_mode_entry** %3, align 8
  %13 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %14 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %13, i32 0, i32 3
  %15 = load %struct.client*, %struct.client** %14, align 8
  store %struct.client* %15, %struct.client** %4, align 8
  %16 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %17 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %16, i32 0, i32 2
  %18 = load %struct.session*, %struct.session** %17, align 8
  store %struct.session* %18, %struct.session** %5, align 8
  %19 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %20 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %19, i32 0, i32 1
  %21 = load %struct.winlink*, %struct.winlink** %20, align 8
  store %struct.winlink* %21, %struct.winlink** %6, align 8
  %22 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %23 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %22, i32 0, i32 0
  %24 = load %struct.window_pane*, %struct.window_pane** %23, align 8
  store %struct.window_pane* %24, %struct.window_pane** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %25 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %26 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %44

31:                                               ; preds = %1
  %32 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %33 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.client*, %struct.client** %4, align 8
  %40 = load %struct.session*, %struct.session** %5, align 8
  %41 = load %struct.winlink*, %struct.winlink** %6, align 8
  %42 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %43 = call i8* @format_single(i32* null, i8* %38, %struct.client* %39, %struct.session* %40, %struct.winlink* %41, %struct.window_pane* %42)
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %31, %1
  %45 = load %struct.session*, %struct.session** %5, align 8
  %46 = icmp ne %struct.session* %45, null
  br i1 %46, label %47, label %78

47:                                               ; preds = %44
  %48 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %49 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %47
  %59 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %60 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.client*, %struct.client** %4, align 8
  %67 = load %struct.session*, %struct.session** %5, align 8
  %68 = load %struct.winlink*, %struct.winlink** %6, align 8
  %69 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %70 = call i8* @format_single(i32* null, i8* %65, %struct.client* %66, %struct.session* %67, %struct.winlink* %68, %struct.window_pane* %69)
  store i8* %70, i8** %8, align 8
  %71 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %72 = load %struct.session*, %struct.session** %5, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @window_copy_copy_pipe(%struct.window_mode_entry* %71, %struct.session* %72, i8* %73, i8* %74)
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @free(i8* %76)
  br label %78

78:                                               ; preds = %58, %47, %44
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  ret i32 %81
}

declare dso_local i8* @format_single(i32*, i8*, %struct.client*, %struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i32 @window_copy_copy_pipe(%struct.window_mode_entry*, %struct.session*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

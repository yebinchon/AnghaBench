; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_osc_10.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_osc_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { %struct.window_pane* }
%struct.window_pane = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"fg=#%02x%02x%02x\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"window-style\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"window-active-style\00", align 1
@PANE_REDRAW = common dso_local global i32 0, align 4
@PANE_STYLECHANGED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"bad OSC 10: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_ctx*, i8*)* @input_osc_10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_osc_10(%struct.input_ctx* %0, i8* %1) #0 {
  %3 = alloca %struct.input_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  store %struct.input_ctx* %0, %struct.input_ctx** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %10, i32 0, i32 0
  %12 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  store %struct.window_pane* %12, %struct.window_pane** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %48

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @input_osc_parse_colour(i8* %18, i32* %6, i32* %7, i32* %8)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %45

22:                                               ; preds = %17
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @xsnprintf(i8* %23, i32 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  %28 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %29 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %32 = call i32 @options_set_style(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 1, i8* %31)
  %33 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %34 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %37 = call i32 @options_set_style(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1, i8* %36)
  %38 = load i32, i32* @PANE_REDRAW, align 4
  %39 = load i32, i32* @PANE_STYLECHANGED, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %42 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %48

45:                                               ; preds = %21
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @log_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %22, %16
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @input_osc_parse_colour(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @options_set_style(i32, i8*, i32, i8*) #1

declare dso_local i32 @log_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

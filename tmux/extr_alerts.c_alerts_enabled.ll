; ModuleID = '/home/carl/AnghaBench/tmux/extr_alerts.c_alerts_enabled.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_alerts.c_alerts_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32 }

@WINDOW_BELL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"monitor-bell\00", align 1
@WINDOW_ACTIVITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"monitor-activity\00", align 1
@WINDOW_SILENCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"monitor-silence\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window*, i32)* @alerts_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alerts_enabled(%struct.window* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.window*, align 8
  %5 = alloca i32, align 4
  store %struct.window* %0, %struct.window** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @WINDOW_BELL, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.window*, %struct.window** %4, align 8
  %12 = getelementptr inbounds %struct.window, %struct.window* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @options_get_number(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %45

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @WINDOW_ACTIVITY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.window*, %struct.window** %4, align 8
  %25 = getelementptr inbounds %struct.window, %struct.window* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @options_get_number(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %45

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @WINDOW_SILENCE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.window*, %struct.window** %4, align 8
  %38 = getelementptr inbounds %struct.window, %struct.window* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @options_get_number(i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %45

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %31
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %42, %29, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @options_get_number(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

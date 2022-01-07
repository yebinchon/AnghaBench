; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/seat/extr_cursor.c_press_or_release.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/seat/extr_cursor.c_press_or_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_results = type { i32 }
%struct.sway_cursor = type { i32 }
%struct.wlr_event_pointer_axis = type { i32, double, double, i32, i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"press\00", align 1
@WLR_BUTTON_PRESSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@WLR_BUTTON_RELEASED = common dso_local global i32 0, align 4
@CMD_INVALID = common dso_local global i32 0, align 4
@expected_syntax = common dso_local global i8* null, align 8
@SWAY_SCROLL_UP = common dso_local global i64 0, align 8
@SWAY_SCROLL_DOWN = common dso_local global i64 0, align 8
@SWAY_SCROLL_LEFT = common dso_local global i64 0, align 8
@SWAY_SCROLL_RIGHT = common dso_local global i64 0, align 8
@WLR_AXIS_ORIENTATION_VERTICAL = common dso_local global i32 0, align 4
@WLR_AXIS_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4
@WLR_AXIS_SOURCE_WHEEL = common dso_local global i32 0, align 4
@CMD_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Unknown button %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (%struct.sway_cursor*, i8*, i8*)* @press_or_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @press_or_release(%struct.sway_cursor* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.cmd_results*, align 8
  %5 = alloca %struct.sway_cursor*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cmd_results*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca %struct.wlr_event_pointer_axis, align 8
  store %struct.sway_cursor* %0, %struct.sway_cursor** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strcasecmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @WLR_BUTTON_PRESSED, align 4
  store i32 %19, i32* %8, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strcasecmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @WLR_BUTTON_RELEASED, align 4
  store i32 %25, i32* %8, align 4
  br label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @CMD_INVALID, align 4
  %28 = load i8*, i8** @expected_syntax, align 8
  %29 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %27, i8* %28)
  store %struct.cmd_results* %29, %struct.cmd_results** %4, align 8
  br label %116

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %18
  store i8* null, i8** %10, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @get_mouse_button(i8* %32, i8** %10)
  store i64 %33, i64* %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* @CMD_INVALID, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %37, i8* %38)
  store %struct.cmd_results* %39, %struct.cmd_results** %11, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load %struct.cmd_results*, %struct.cmd_results** %11, align 8
  store %struct.cmd_results* %42, %struct.cmd_results** %4, align 8
  br label %116

43:                                               ; preds = %31
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @SWAY_SCROLL_UP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @SWAY_SCROLL_DOWN, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @SWAY_SCROLL_LEFT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @SWAY_SCROLL_RIGHT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %100

59:                                               ; preds = %55, %51, %47, %43
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @SWAY_SCROLL_UP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @SWAY_SCROLL_DOWN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %59
  %68 = load i32, i32* @WLR_AXIS_ORIENTATION_VERTICAL, align 4
  br label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @WLR_AXIS_ORIENTATION_HORIZONTAL, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %12, align 4
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @SWAY_SCROLL_UP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @SWAY_SCROLL_LEFT, align 8
  %79 = icmp eq i64 %77, %78
  br label %80

80:                                               ; preds = %76, %71
  %81 = phi i1 [ true, %71 ], [ %79, %76 ]
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 -1, i32 1
  %84 = sitofp i32 %83 to double
  store double %84, double* %13, align 8
  %85 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %14, i32 0, i32 0
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %85, align 8
  %87 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %14, i32 0, i32 1
  %88 = load double, double* %13, align 8
  %89 = fmul double %88, 1.500000e+01
  store double %89, double* %87, align 8
  %90 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %14, i32 0, i32 2
  %91 = load double, double* %13, align 8
  store double %91, double* %90, align 8
  %92 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %14, i32 0, i32 3
  %93 = load i32, i32* @WLR_AXIS_SOURCE_WHEEL, align 4
  store i32 %93, i32* %92, align 8
  %94 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %14, i32 0, i32 4
  store i32 0, i32* %94, align 4
  %95 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %14, i32 0, i32 5
  store i32* null, i32** %95, align 8
  %96 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %97 = call i32 @dispatch_cursor_axis(%struct.sway_cursor* %96, %struct.wlr_event_pointer_axis* %14)
  %98 = load i32, i32* @CMD_SUCCESS, align 4
  %99 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %98, i8* null)
  store %struct.cmd_results* %99, %struct.cmd_results** %4, align 8
  br label %116

100:                                              ; preds = %55
  %101 = load i64, i64* %9, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @CMD_INVALID, align 4
  %105 = load i8*, i8** %7, align 8
  %106 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  store %struct.cmd_results* %106, %struct.cmd_results** %4, align 8
  br label %116

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @dispatch_cursor_button(%struct.sway_cursor* %110, i32* null, i32 0, i64 %111, i32 %112)
  %114 = load i32, i32* @CMD_SUCCESS, align 4
  %115 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %114, i8* null)
  store %struct.cmd_results* %115, %struct.cmd_results** %4, align 8
  br label %116

116:                                              ; preds = %109, %103, %80, %36, %26
  %117 = load %struct.cmd_results*, %struct.cmd_results** %4, align 8
  ret %struct.cmd_results* %117
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i64 @get_mouse_button(i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dispatch_cursor_axis(%struct.sway_cursor*, %struct.wlr_event_pointer_axis*) #1

declare dso_local i32 @dispatch_cursor_button(%struct.sway_cursor*, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

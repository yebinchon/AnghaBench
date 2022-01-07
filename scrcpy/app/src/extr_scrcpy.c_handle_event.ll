; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_scrcpy.c_handle_event.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_scrcpy.c_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Video stream stopped\00", align 1
@EVENT_RESULT_STOPPED_BY_EOS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"User requested to quit\00", align 1
@EVENT_RESULT_STOPPED_BY_USER = common dso_local global i32 0, align 4
@screen = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@video_buffer = common dso_local global i32 0, align 4
@EVENT_RESULT_CONTINUE = common dso_local global i32 0, align 4
@input_manager = common dso_local global i32 0, align 4
@ACTION_INSTALL_APK = common dso_local global i32 0, align 4
@ACTION_PUSH_FILE = common dso_local global i32 0, align 4
@file_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_event(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %91 [
    i32 140, label %10
    i32 132, label %13
    i32 141, label %16
    i32 130, label %27
    i32 131, label %35
    i32 138, label %43
    i32 137, label %43
    i32 134, label %48
    i32 133, label %56
    i32 136, label %64
    i32 135, label %64
    i32 139, label %69
  ]

10:                                               ; preds = %2
  %11 = call i32 @LOGD(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EVENT_RESULT_STOPPED_BY_EOS, align 4
  store i32 %12, i32* %3, align 4
  br label %93

13:                                               ; preds = %2
  %14 = call i32 @LOGD(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @EVENT_RESULT_STOPPED_BY_USER, align 4
  store i32 %15, i32* %3, align 4
  br label %93

16:                                               ; preds = %2
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @screen, i32 0, i32 0), align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @screen, i32 0, i32 0), align 4
  %20 = call i32 @screen_show_window(%struct.TYPE_12__* @screen)
  br label %21

21:                                               ; preds = %19, %16
  %22 = call i32 @screen_update_frame(%struct.TYPE_12__* @screen, i32* @video_buffer)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @EVENT_RESULT_CONTINUE, align 4
  store i32 %25, i32* %3, align 4
  br label %93

26:                                               ; preds = %21
  br label %91

27:                                               ; preds = %2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %34 [
    i32 129, label %32
    i32 128, label %32
  ]

32:                                               ; preds = %27, %27
  %33 = call i32 @screen_render(%struct.TYPE_12__* @screen)
  br label %34

34:                                               ; preds = %27, %32
  br label %91

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %91

39:                                               ; preds = %35
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 6
  %42 = call i32 @input_manager_process_text_input(i32* @input_manager, i32* %41)
  br label %91

43:                                               ; preds = %2, %2
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 5
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @input_manager_process_key(i32* @input_manager, i32* %45, i32 %46)
  br label %91

48:                                               ; preds = %2
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %91

52:                                               ; preds = %48
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 4
  %55 = call i32 @input_manager_process_mouse_motion(i32* @input_manager, i32* %54)
  br label %91

56:                                               ; preds = %2
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %91

60:                                               ; preds = %56
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = call i32 @input_manager_process_mouse_wheel(i32* @input_manager, i32* %62)
  br label %91

64:                                               ; preds = %2, %2
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @input_manager_process_mouse_button(i32* @input_manager, i32* %66, i32 %67)
  br label %91

69:                                               ; preds = %2
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %91

73:                                               ; preds = %69
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @is_apk(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @ACTION_INSTALL_APK, align 4
  store i32 %81, i32* %6, align 4
  br label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @ACTION_PUSH_FILE, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @file_handler_request(i32* @file_handler, i32 %85, i32 %89)
  br label %91

91:                                               ; preds = %2, %84, %72, %64, %60, %59, %52, %51, %43, %39, %38, %34, %26
  %92 = load i32, i32* @EVENT_RESULT_CONTINUE, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %24, %13, %10
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @LOGD(i8*) #1

declare dso_local i32 @screen_show_window(%struct.TYPE_12__*) #1

declare dso_local i32 @screen_update_frame(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @screen_render(%struct.TYPE_12__*) #1

declare dso_local i32 @input_manager_process_text_input(i32*, i32*) #1

declare dso_local i32 @input_manager_process_key(i32*, i32*, i32) #1

declare dso_local i32 @input_manager_process_mouse_motion(i32*, i32*) #1

declare dso_local i32 @input_manager_process_mouse_wheel(i32*, i32*) #1

declare dso_local i32 @input_manager_process_mouse_button(i32*, i32*, i32) #1

declare dso_local i32 @is_apk(i32) #1

declare dso_local i32 @file_handler_request(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

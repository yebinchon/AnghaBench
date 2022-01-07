; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_input_manager.c_input_manager_process_mouse_button.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_input_manager.c_input_manager_process_mouse_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_manager = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32 }
%struct.control_msg = type { i32 }

@SDL_MOUSEBUTTONDOWN = common dso_local global i64 0, align 8
@SDL_BUTTON_RIGHT = common dso_local global i64 0, align 8
@SDL_BUTTON_MIDDLE = common dso_local global i64 0, align 8
@ACTION_DOWN = common dso_local global i32 0, align 4
@ACTION_UP = common dso_local global i32 0, align 4
@SDL_BUTTON_LEFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Could not request 'inject mouse button event'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_manager_process_mouse_button(%struct.input_manager* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca %struct.input_manager*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.control_msg, align 4
  store %struct.input_manager* %0, %struct.input_manager** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SDL_MOUSEBUTTONDOWN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %74

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SDL_BUTTON_RIGHT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.input_manager*, %struct.input_manager** %4, align 8
  %25 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @press_back_or_turn_screen_on(i32 %26)
  br label %96

28:                                               ; preds = %17, %14
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SDL_BUTTON_MIDDLE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.input_manager*, %struct.input_manager** %4, align 8
  %39 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ACTION_DOWN, align 4
  %42 = load i32, i32* @ACTION_UP, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @action_home(i32 %40, i32 %43)
  br label %96

45:                                               ; preds = %31, %28
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SDL_BUTTON_LEFT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load %struct.input_manager*, %struct.input_manager** %4, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @is_outside_device_screen(%struct.input_manager* %57, i32 %60, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = load %struct.input_manager*, %struct.input_manager** %4, align 8
  %69 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call i32 @screen_resize_to_fit(%struct.TYPE_6__* %70)
  br label %96

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72, %51, %45
  br label %74

74:                                               ; preds = %73, %3
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  br label %96

78:                                               ; preds = %74
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = load %struct.input_manager*, %struct.input_manager** %4, align 8
  %81 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @convert_mouse_button(%struct.TYPE_5__* %79, i32 %84, %struct.control_msg* %8)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %78
  %88 = load %struct.input_manager*, %struct.input_manager** %4, align 8
  %89 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @controller_push_msg(i32 %90, %struct.control_msg* %8)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = call i32 @LOGW(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %87
  br label %96

96:                                               ; preds = %23, %37, %67, %77, %95, %78
  ret void
}

declare dso_local i32 @press_back_or_turn_screen_on(i32) #1

declare dso_local i32 @action_home(i32, i32) #1

declare dso_local i32 @is_outside_device_screen(%struct.input_manager*, i32, i32) #1

declare dso_local i32 @screen_resize_to_fit(%struct.TYPE_6__*) #1

declare dso_local i64 @convert_mouse_button(%struct.TYPE_5__*, i32, %struct.control_msg*) #1

declare dso_local i32 @controller_push_msg(i32, %struct.control_msg*) #1

declare dso_local i32 @LOGW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_input_manager.c_input_manager_process_mouse_wheel.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_input_manager.c_input_manager_process_mouse_wheel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_manager = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.position = type { i32, i32 }
%struct.control_msg = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Could not request 'inject mouse wheel event'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_manager_process_mouse_wheel(%struct.input_manager* %0, i32* %1) #0 {
  %3 = alloca %struct.input_manager*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.position, align 4
  %6 = alloca %struct.control_msg, align 4
  store %struct.input_manager* %0, %struct.input_manager** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = getelementptr inbounds %struct.position, %struct.position* %5, i32 0, i32 0
  %8 = load %struct.input_manager*, %struct.input_manager** %3, align 8
  %9 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i32 @get_mouse_point(%struct.TYPE_2__* %10)
  store i32 %11, i32* %7, align 4
  %12 = getelementptr inbounds %struct.position, %struct.position* %5, i32 0, i32 1
  %13 = load %struct.input_manager*, %struct.input_manager** %3, align 8
  %14 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = bitcast %struct.position* %5 to i64*
  %20 = load i64, i64* %19, align 4
  %21 = call i64 @convert_mouse_wheel(i32* %18, i64 %20, %struct.control_msg* %6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.input_manager*, %struct.input_manager** %3, align 8
  %25 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @controller_push_msg(i32 %26, %struct.control_msg* %6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = call i32 @LOGW(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @get_mouse_point(%struct.TYPE_2__*) #1

declare dso_local i64 @convert_mouse_wheel(i32*, i64, %struct.control_msg*) #1

declare dso_local i32 @controller_push_msg(i32, %struct.control_msg*) #1

declare dso_local i32 @LOGW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

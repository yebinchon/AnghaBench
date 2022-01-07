; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_input_manager.c_input_manager_process_mouse_motion.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_input_manager.c_input_manager_process_mouse_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_manager = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.control_msg = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Could not request 'inject mouse motion event'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_manager_process_mouse_motion(%struct.input_manager* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.input_manager*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.control_msg, align 4
  store %struct.input_manager* %0, %struct.input_manager** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = load %struct.input_manager*, %struct.input_manager** %3, align 8
  %14 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @convert_mouse_motion(%struct.TYPE_6__* %12, i32 %17, %struct.control_msg* %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load %struct.input_manager*, %struct.input_manager** %3, align 8
  %22 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @controller_push_msg(i32 %23, %struct.control_msg* %5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = call i32 @LOGW(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  br label %29

29:                                               ; preds = %10, %28, %11
  ret void
}

declare dso_local i64 @convert_mouse_motion(%struct.TYPE_6__*, i32, %struct.control_msg*) #1

declare dso_local i32 @controller_push_msg(i32, %struct.control_msg*) #1

declare dso_local i32 @LOGW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

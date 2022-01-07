; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_input-manager.c_input_manager_verify_fallback_seat.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_input-manager.c_input_manager_verify_fallback_seat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.seat_config = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"no fallback seat config - creating default\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_manager_verify_fallback_seat() #0 {
  %1 = alloca %struct.sway_seat*, align 8
  %2 = alloca %struct.seat_config*, align 8
  store %struct.sway_seat* null, %struct.sway_seat** %1, align 8
  %3 = call i32 (...) @input_has_seat_fallback_configuration()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @SWAY_DEBUG, align 4
  %7 = call i32 @sway_log(i32 %6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %8 = call %struct.sway_seat* (...) @input_manager_get_default_seat()
  store %struct.sway_seat* %8, %struct.sway_seat** %1, align 8
  %9 = load %struct.sway_seat*, %struct.sway_seat** %1, align 8
  %10 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.seat_config* @new_seat_config(i32 %13)
  store %struct.seat_config* %14, %struct.seat_config** %2, align 8
  %15 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %16 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %18 = call %struct.seat_config* @store_seat_config(%struct.seat_config* %17)
  store %struct.seat_config* %18, %struct.seat_config** %2, align 8
  %19 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %20 = call i32 @input_manager_apply_seat_config(%struct.seat_config* %19)
  br label %21

21:                                               ; preds = %5, %0
  ret void
}

declare dso_local i32 @input_has_seat_fallback_configuration(...) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local %struct.sway_seat* @input_manager_get_default_seat(...) #1

declare dso_local %struct.seat_config* @new_seat_config(i32) #1

declare dso_local %struct.seat_config* @store_seat_config(%struct.seat_config*) #1

declare dso_local i32 @input_manager_apply_seat_config(%struct.seat_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

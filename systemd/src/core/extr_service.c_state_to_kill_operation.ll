; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_state_to_kill_operation.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_state_to_kill_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KILL_WATCHDOG = common dso_local global i32 0, align 4
@JOB_RESTART = common dso_local global i32 0, align 4
@KILL_RESTART = common dso_local global i32 0, align 4
@_fallthrough_ = common dso_local global i32 0, align 4
@KILL_TERMINATE = common dso_local global i32 0, align 4
@KILL_KILL = common dso_local global i32 0, align 4
@_KILL_OPERATION_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @state_to_kill_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_to_kill_operation(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %23 [
    i32 128, label %7
    i32 129, label %9
    i32 131, label %19
    i32 130, label %21
    i32 132, label %21
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @KILL_WATCHDOG, align 4
  store i32 %8, i32* %3, align 4
  br label %25

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @UNIT(i32* %10)
  %12 = load i32, i32* @JOB_RESTART, align 4
  %13 = call i32 @unit_has_job_type(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @KILL_RESTART, align 4
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %9
  %18 = load i32, i32* @_fallthrough_, align 4
  br label %19

19:                                               ; preds = %2, %17
  %20 = load i32, i32* @KILL_TERMINATE, align 4
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %2, %2
  %22 = load i32, i32* @KILL_KILL, align 4
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @_KILL_OPERATION_INVALID, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %21, %19, %15, %7
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @unit_has_job_type(i32, i32) #1

declare dso_local i32 @UNIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

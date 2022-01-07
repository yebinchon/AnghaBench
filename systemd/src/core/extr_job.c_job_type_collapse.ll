; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_job.c_job_type_collapse.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_job.c_job_type_collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JOB_NOP = common dso_local global i32 0, align 4
@JOB_RESTART = common dso_local global i32 0, align 4
@JOB_RELOAD = common dso_local global i32 0, align 4
@JOB_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @job_type_collapse(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %38 [
    i32 128, label %8
    i32 129, label %18
    i32 130, label %28
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @unit_active_state(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @UNIT_IS_ACTIVE_OR_RELOADING(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @JOB_NOP, align 4
  store i32 %15, i32* %3, align 4
  br label %40

16:                                               ; preds = %8
  %17 = load i32, i32* @JOB_RESTART, align 4
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @unit_active_state(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @UNIT_IS_ACTIVE_OR_RELOADING(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @JOB_NOP, align 4
  store i32 %25, i32* %3, align 4
  br label %40

26:                                               ; preds = %18
  %27 = load i32, i32* @JOB_RELOAD, align 4
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %2
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @unit_active_state(i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @UNIT_IS_ACTIVE_OR_RELOADING(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @JOB_START, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @JOB_RELOAD, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %36, %34, %26, %24, %16, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @unit_active_state(i32*) #1

declare dso_local i32 @UNIT_IS_ACTIVE_OR_RELOADING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

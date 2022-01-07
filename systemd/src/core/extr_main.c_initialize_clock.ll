; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_main.c_initialize_clock.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_main.c_initialize_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"Failed to apply local time delta, ignoring: %m\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"RTC configured in localtime, applying delta of %i minutes to system time.\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Current system time is before build time, but cannot correct: %m\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"System time before build time, advancing clock.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_clock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 @clock_is_localtime(i32* null)
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = call i32 @clock_set_timezone(i32* %2)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @log_error_errno(i32 %10, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %15

12:                                               ; preds = %5
  %13 = load i32, i32* %2, align 4
  %14 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %9
  br label %22

16:                                               ; preds = %0
  %17 = call i32 (...) @in_initrd()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 (...) @clock_reset_timewarp()
  br label %21

21:                                               ; preds = %19, %16
  br label %22

22:                                               ; preds = %21, %15
  %23 = call i32 (...) @clock_apply_epoch()
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @log_error_errno(i32 %27, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  br label %35

29:                                               ; preds = %22
  %30 = load i32, i32* %1, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %26
  ret void
}

declare dso_local i64 @clock_is_localtime(i32*) #1

declare dso_local i32 @clock_set_timezone(i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @log_info(i8*, ...) #1

declare dso_local i32 @in_initrd(...) #1

declare dso_local i32 @clock_reset_timewarp(...) #1

declare dso_local i32 @clock_apply_epoch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

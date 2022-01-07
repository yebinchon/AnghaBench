; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_halt_now.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_halt_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_no_sync = common dso_local global i32 0, align 4
@arg_dry_run = common dso_local global i64 0, align 8
@RB_ENABLE_CAD = common dso_local global i32 0, align 4
@arg_quiet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Halting.\00", align 1
@RB_HALT_SYSTEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Powering off.\00", align 1
@RB_POWER_OFF = common dso_local global i32 0, align 4
@REBOOT_FALLBACK = common dso_local global i32 0, align 4
@REBOOT_LOG = common dso_local global i32 0, align 4
@REBOOT_DRY_RUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Unknown action.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @halt_now to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halt_now(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @arg_no_sync, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* @arg_dry_run, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 (...) @sync()
  br label %11

11:                                               ; preds = %9, %6, %1
  %12 = load i64, i64* @arg_dry_run, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @RB_ENABLE_CAD, align 4
  %16 = call i32 @reboot(i32 %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %3, align 4
  switch i32 %18, label %66 [
    i32 131, label %19
    i32 129, label %33
    i32 130, label %47
    i32 128, label %47
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @arg_quiet, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32 @log_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i64, i64* @arg_dry_run, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %68

28:                                               ; preds = %24
  %29 = load i32, i32* @RB_HALT_SYSTEM, align 4
  %30 = call i32 @reboot(i32 %29)
  %31 = load i32, i32* @errno, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %68

33:                                               ; preds = %17
  %34 = load i32, i32* @arg_quiet, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = call i32 @log_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i64, i64* @arg_dry_run, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %68

42:                                               ; preds = %38
  %43 = load i32, i32* @RB_POWER_OFF, align 4
  %44 = call i32 @reboot(i32 %43)
  %45 = load i32, i32* @errno, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %68

47:                                               ; preds = %17, %17
  %48 = load i32, i32* @REBOOT_FALLBACK, align 4
  %49 = load i32, i32* @arg_quiet, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @REBOOT_LOG, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i32 [ 0, %51 ], [ %53, %52 ]
  %56 = or i32 %48, %55
  %57 = load i64, i64* @arg_dry_run, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @REBOOT_DRY_RUN, align 4
  br label %62

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = or i32 %56, %63
  %65 = call i32 @reboot_with_parameter(i32 %64)
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %17
  %67 = call i32 @assert_not_reached(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %27, %28, %41, %42, %62, %66
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @sync(...) #1

declare dso_local i32 @reboot(i32) #1

declare dso_local i32 @log_info(i8*) #1

declare dso_local i32 @reboot_with_parameter(i32) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

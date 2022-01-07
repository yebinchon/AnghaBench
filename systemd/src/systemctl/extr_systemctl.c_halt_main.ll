; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_halt_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_halt_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_action = common dso_local global i32 0, align 4
@arg_when = common dso_local global i64 0, align 8
@arg_dry_run = common dso_local global i64 0, align 8
@arg_force = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@ACTION_POWEROFF = common dso_local global i32 0, align 4
@ACTION_REBOOT = common dso_local global i32 0, align 4
@ACTION_HALT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@arg_no_block = common dso_local global i32 0, align 4
@arg_no_wtmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Not writing utmp record, assuming that systemd-update-utmp is used.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to write utmp record: %m\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to reboot: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @halt_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halt_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @arg_action, align 4
  %4 = call i32 @logind_check_inhibitors(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %1, align 4
  br label %93

9:                                                ; preds = %0
  %10 = load i64, i64* @arg_when, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = call i64 (...) @logind_schedule_shutdown()
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %93

16:                                               ; preds = %12, %9
  %17 = call i64 (...) @geteuid()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  %20 = load i64, i64* @arg_dry_run, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @arg_force, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %19
  %26 = call i32 (...) @must_be_root()
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %1, align 4
  br label %93

29:                                               ; preds = %22
  %30 = load i32, i32* @arg_action, align 4
  %31 = load i32, i32* @ACTION_POWEROFF, align 4
  %32 = load i32, i32* @ACTION_REBOOT, align 4
  %33 = load i32, i32* @ACTION_HALT, align 4
  %34 = call i64 (i32, i32, i32, ...) @IN_SET(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load i32, i32* @arg_action, align 4
  %38 = call i32 @logind_reboot(i32 %37)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  store i32 %42, i32* %1, align 4
  br label %93

43:                                               ; preds = %36
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  %47 = load i32, i32* @EINPROGRESS, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i64 (i32, i32, i32, ...) @IN_SET(i32 %44, i32 %46, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %2, align 4
  store i32 %52, i32* %1, align 4
  br label %93

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %29
  br label %55

55:                                               ; preds = %54, %16
  store i32 1, i32* @arg_no_block, align 4
  %56 = load i64, i64* @arg_dry_run, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @arg_force, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = call i32 (...) @start_with_fallback()
  store i32 %62, i32* %1, align 4
  br label %93

63:                                               ; preds = %58, %55
  %64 = call i64 (...) @geteuid()
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* @arg_no_wtmp, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %63
  %71 = call i64 (...) @sd_booted()
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 @log_debug(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %83

75:                                               ; preds = %70
  %76 = call i32 (...) @utmp_put_shutdown()
  store i32 %76, i32* %2, align 4
  %77 = load i32, i32* %2, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @log_warning_errno(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %75
  br label %83

83:                                               ; preds = %82, %73
  br label %84

84:                                               ; preds = %83, %63
  %85 = load i64, i64* @arg_dry_run, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %1, align 4
  br label %93

88:                                               ; preds = %84
  %89 = load i32, i32* @arg_action, align 4
  %90 = call i32 @halt_now(i32 %89)
  store i32 %90, i32* %2, align 4
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @log_error_errno(i32 %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %92, i32* %1, align 4
  br label %93

93:                                               ; preds = %88, %87, %61, %51, %41, %25, %15, %7
  %94 = load i32, i32* %1, align 4
  ret i32 %94
}

declare dso_local i32 @logind_check_inhibitors(i32) #1

declare dso_local i64 @logind_schedule_shutdown(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @must_be_root(...) #1

declare dso_local i64 @IN_SET(i32, i32, i32, ...) #1

declare dso_local i32 @logind_reboot(i32) #1

declare dso_local i32 @start_with_fallback(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sd_booted(...) #1

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @utmp_put_shutdown(...) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @halt_now(i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

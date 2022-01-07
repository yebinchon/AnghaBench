; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_main.c_safety_checks.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_main.c_safety_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_action = common dso_local global i64 0, align 8
@ACTION_RUN = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unsupported execution mode while PID 1.\00", align 1
@arg_system = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't run --user mode as PID 1.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Can't run system mode unless PID 1.\00", align 1
@ACTION_TEST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Don't run test mode as root.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [81 x i8] c"Trying to run as user instance, but the system has not been booted with systemd.\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"XDG_RUNTIME_DIR\00", align 1
@EUNATCH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [65 x i8] c"Trying to run as user instance, but $XDG_RUNTIME_DIR is not set.\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Cannot be run in a chroot() environment.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @safety_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safety_checks() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @getpid_cached()
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load i64, i64* @arg_action, align 8
  %6 = load i64, i64* @ACTION_RUN, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i32, i32* @EPERM, align 4
  %10 = call i32 @SYNTHETIC_ERRNO(i32 %9)
  %11 = call i32 @log_error_errno(i32 %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %1, align 4
  br label %90

12:                                               ; preds = %4, %0
  %13 = call i32 (...) @getpid_cached()
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i64, i64* @arg_system, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @EPERM, align 4
  %20 = call i32 @SYNTHETIC_ERRNO(i32 %19)
  %21 = call i32 @log_error_errno(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %1, align 4
  br label %90

22:                                               ; preds = %15, %12
  %23 = load i64, i64* @arg_action, align 8
  %24 = load i64, i64* @ACTION_RUN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i64, i64* @arg_system, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = call i32 (...) @getpid_cached()
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @EPERM, align 4
  %34 = call i32 @SYNTHETIC_ERRNO(i32 %33)
  %35 = call i32 @log_error_errno(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 %35, i32* %1, align 4
  br label %90

36:                                               ; preds = %29, %26, %22
  %37 = load i64, i64* @arg_action, align 8
  %38 = load i64, i64* @ACTION_TEST, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = call i64 (...) @geteuid()
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @EPERM, align 4
  %45 = call i32 @SYNTHETIC_ERRNO(i32 %44)
  %46 = call i32 @log_error_errno(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 %46, i32* %1, align 4
  br label %90

47:                                               ; preds = %40, %36
  %48 = load i64, i64* @arg_system, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* @arg_action, align 8
  %52 = load i64, i64* @ACTION_RUN, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = call i64 (...) @sd_booted()
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = call i32 @SYNTHETIC_ERRNO(i32 %58)
  %60 = call i32 @log_error_errno(i32 %59, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0))
  store i32 %60, i32* %1, align 4
  br label %90

61:                                               ; preds = %54, %50, %47
  %62 = load i64, i64* @arg_system, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* @arg_action, align 8
  %66 = load i64, i64* @ACTION_RUN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = call i32 @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @EUNATCH, align 4
  %73 = call i32 @SYNTHETIC_ERRNO(i32 %72)
  %74 = call i32 @log_error_errno(i32 %73, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  store i32 %74, i32* %1, align 4
  br label %90

75:                                               ; preds = %68, %64, %61
  %76 = load i64, i64* @arg_system, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i64, i64* @arg_action, align 8
  %80 = load i64, i64* @ACTION_RUN, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = call i64 (...) @running_in_chroot()
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @EOPNOTSUPP, align 4
  %87 = call i32 @SYNTHETIC_ERRNO(i32 %86)
  %88 = call i32 @log_error_errno(i32 %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  store i32 %88, i32* %1, align 4
  br label %90

89:                                               ; preds = %82, %78, %75
  store i32 0, i32* %1, align 4
  br label %90

90:                                               ; preds = %89, %85, %71, %57, %43, %32, %18, %8
  %91 = load i32, i32* %1, align 4
  ret i32 %91
}

declare dso_local i32 @getpid_cached(...) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i64 @sd_booted(...) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i64 @running_in_chroot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

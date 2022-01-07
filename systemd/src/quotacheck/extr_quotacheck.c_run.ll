; ModuleID = '/home/carl/AnghaBench/systemd/src/quotacheck/extr_quotacheck.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/quotacheck/extr_quotacheck.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"This program takes no arguments.\00", align 1
@parse_proc_cmdline_item = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to parse kernel command line, ignoring: %m\00", align 1
@arg_force = common dso_local global i32 0, align 4
@arg_skip = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"/run/systemd/quotacheck\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"(quotacheck)\00", align 1
@FORK_RESET_SIGNALS = common dso_local global i32 0, align 4
@FORK_DEATHSIG = common dso_local global i32 0, align 4
@FORK_RLIMIT_NOFILE_SAFE = common dso_local global i32 0, align 4
@FORK_WAIT = common dso_local global i32 0, align 4
@FORK_LOG = common dso_local global i32 0, align 4
@run.cmdline = internal constant [3 x i8*] [i8* inttoptr (i64 128 to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* null], align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"-anug\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @log_setup_service()
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = call i32 @SYNTHETIC_ERRNO(i32 %11)
  %13 = call i32 @log_error_errno(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  br label %61

14:                                               ; preds = %2
  %15 = call i32 @umask(i32 18)
  %16 = load i32, i32* @parse_proc_cmdline_item, align 4
  %17 = call i32 @proc_cmdline_parse(i32 %16, i32* null, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @log_warning_errno(i32 %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %14
  %24 = call i32 (...) @test_files()
  %25 = load i32, i32* @arg_force, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* @arg_skip, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %61

31:                                               ; preds = %27
  %32 = load i32, i32* @F_OK, align 4
  %33 = call i64 @access(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %61

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i32, i32* @FORK_RESET_SIGNALS, align 4
  %39 = load i32, i32* @FORK_DEATHSIG, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FORK_RLIMIT_NOFILE_SAFE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FORK_WAIT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FORK_LOG, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @safe_fork(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32* null)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %61

52:                                               ; preds = %37
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @run.cmdline, i64 0, i64 0), align 16
  %57 = call i32 @execv(i8* %56, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @run.cmdline, i64 0, i64 0))
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  %59 = call i32 @_exit(i32 %58) #3
  unreachable

60:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %50, %35, %30, %10
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @log_setup_service(...) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @proc_cmdline_parse(i32, i32*, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @test_files(...) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @safe_fork(i8*, i32, i32*) #1

declare dso_local i32 @execv(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

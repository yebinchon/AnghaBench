; ModuleID = '/home/carl/AnghaBench/systemd/src/sulogin-shell/extr_sulogin-shell.c_fork_wait.c'
source_filename = "/home/carl/AnghaBench/systemd/src/sulogin-shell/extr_sulogin-shell.c_fork_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"(sulogin)\00", align 1
@FORK_RESET_SIGNALS = common dso_local global i32 0, align 4
@FORK_DEATHSIG = common dso_local global i32 0, align 4
@FORK_RLIMIT_NOFILE_SAFE = common dso_local global i32 0, align 4
@FORK_LOG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to execute %s: %m\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@WAIT_LOG_ABNORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @fork_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fork_wait(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %6 = load i32, i32* @FORK_RESET_SIGNALS, align 4
  %7 = load i32, i32* @FORK_DEATHSIG, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @FORK_RLIMIT_NOFILE_SAFE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @FORK_LOG, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @safe_fork(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12, i32* %4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %41

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i8**, i8*** %3, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** %3, align 8
  %26 = call i32 @execv(i8* %24, i8** %25)
  %27 = load i32, i32* @errno, align 4
  %28 = load i8**, i8*** %3, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @log_error_errno(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @EXIT_FAILURE, align 4
  %33 = call i32 @_exit(i32 %32) #3
  unreachable

34:                                               ; preds = %18
  %35 = load i8**, i8*** %3, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @WAIT_LOG_ABNORMAL, align 4
  %40 = call i32 @wait_for_terminate_and_check(i8* %37, i32 %38, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %34, %16
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @safe_fork(i8*, i32, i32*) #1

declare dso_local i32 @execv(i8*, i8**) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @wait_for_terminate_and_check(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

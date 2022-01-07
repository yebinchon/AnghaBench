; ModuleID = '/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-remote-main.c_spawn_child.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-remote-main.c_spawn_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to create pager pipe: %m\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(remote)\00", align 1
@FORK_RESET_SIGNALS = common dso_local global i32 0, align 4
@FORK_DEATHSIG = common dso_local global i32 0, align 4
@FORK_LOG = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to dup pipe to stdout: %m\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to exec child %s: %m\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed to set child pipe to non-blocking: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @spawn_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spawn_child(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %10 = call i64 @pipe(i32* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 (i32, i8*, ...) @log_error_errno(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load i32, i32* @FORK_RESET_SIGNALS, align 4
  %17 = load i32, i32* @FORK_DEATHSIG, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FORK_LOG, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @safe_fork(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32* %6)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %26 = call i32 @safe_close_pair(i32* %25)
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %72

28:                                               ; preds = %15
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @safe_close(i32 %33)
  %35 = load i32, i32* @STDIN_FILENO, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @STDERR_FILENO, align 4
  %39 = call i32 @rearrange_stdio(i32 %35, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i32, i8*, ...) @log_error_errno(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EXIT_FAILURE, align 4
  %46 = call i32 @_exit(i32 %45) #3
  unreachable

47:                                               ; preds = %31
  %48 = call i32 (...) @rlimit_nofile_safe()
  %49 = load i8*, i8** %4, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = call i32 @execvp(i8* %49, i8** %50)
  %52 = load i32, i32* @errno, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 (i32, i8*, ...) @log_error_errno(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  %56 = call i32 @_exit(i32 %55) #3
  unreachable

57:                                               ; preds = %28
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @safe_close(i32 %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fd_nonblock(i32 %62, i32 1)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @log_warning_errno(i32 %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %57
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %24, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @safe_fork(i8*, i32, i32*) #1

declare dso_local i32 @safe_close_pair(i32*) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i32 @rearrange_stdio(i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @rlimit_nofile_safe(...) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @fd_nonblock(i32, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

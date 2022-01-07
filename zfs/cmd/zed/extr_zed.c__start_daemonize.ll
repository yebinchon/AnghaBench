; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed.c__start_daemonize.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed.c__start_daemonize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to create child process: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to create new session: %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to initialize sigset\00", align 1
@SIG_IGN = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to ignore SIGHUP\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to create grandchild process: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_start_daemonize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_start_daemonize() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.sigaction, align 8
  %3 = call i32 (...) @zed_log_pipe_open()
  %4 = call i64 (...) @fork()
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i32, i32* @errno, align 4
  %9 = call i32 @strerror(i32 %8)
  %10 = call i32 (i8*, ...) @zed_log_die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %21

11:                                               ; preds = %0
  %12 = load i64, i64* %1, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = call i32 (...) @zed_log_pipe_close_writes()
  %16 = call i32 (...) @zed_log_pipe_wait()
  %17 = call i32 (...) @zed_log_pipe_close_reads()
  %18 = load i32, i32* @EXIT_SUCCESS, align 4
  %19 = call i32 @_exit(i32 %18) #3
  unreachable

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %7
  %22 = call i32 (...) @zed_log_pipe_close_reads()
  %23 = call i64 (...) @setsid()
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 (i8*, ...) @zed_log_die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  %31 = call i64 @sigemptyset(i32* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @zed_log_die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @SIG_IGN, align 4
  %38 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @SIGHUP, align 4
  %40 = call i64 @sigaction(i32 %39, %struct.sigaction* %2, i32* null)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 (i8*, ...) @zed_log_die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  %45 = call i64 (...) @fork()
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @strerror(i32 %49)
  %51 = call i32 (i8*, ...) @zed_log_die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  br label %59

52:                                               ; preds = %44
  %53 = load i64, i64* %1, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EXIT_SUCCESS, align 4
  %57 = call i32 @_exit(i32 %56) #3
  unreachable

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %48
  ret void
}

declare dso_local i32 @zed_log_pipe_open(...) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @zed_log_die(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @zed_log_pipe_close_writes(...) #1

declare dso_local i32 @zed_log_pipe_wait(...) #1

declare dso_local i32 @zed_log_pipe_close_reads(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @setsid(...) #1

declare dso_local i64 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

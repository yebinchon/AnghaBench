; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-process-util.c_test_safe_fork.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-process-util.c_test_safe_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@SIGCHLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"(test-child)\00", align 1
@FORK_RESET_SIGNALS = common dso_local global i32 0, align 4
@FORK_CLOSE_ALL_FDS = common dso_local global i32 0, align 4
@FORK_DEATHSIG = common dso_local global i32 0, align 4
@FORK_NULL_STDIO = common dso_local global i32 0, align 4
@FORK_REOPEN_LOG = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@CLD_EXITED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_safe_fork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_safe_fork() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @SIGCHLD, align 4
  %5 = call i32 @BLOCK_SIGNALS(i32 %4)
  %6 = load i32, i32* @FORK_RESET_SIGNALS, align 4
  %7 = load i32, i32* @FORK_CLOSE_ALL_FDS, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @FORK_DEATHSIG, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @FORK_NULL_STDIO, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @FORK_REOPEN_LOG, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @safe_fork(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14, i32* %2)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %0
  %23 = load i32, i32* @USEC_PER_MSEC, align 4
  %24 = mul nsw i32 100, %23
  %25 = call i32 @usleep(i32 %24)
  %26 = call i32 @_exit(i32 88) #3
  unreachable

27:                                               ; preds = %0
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @wait_for_terminate(i32 %28, %struct.TYPE_3__* %1)
  %30 = icmp sge i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CLD_EXITED, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert_se(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 88
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert_se(i32 %42)
  ret void
}

declare dso_local i32 @BLOCK_SIGNALS(i32) #1

declare dso_local i32 @safe_fork(i8*, i32, i32*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @usleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @wait_for_terminate(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

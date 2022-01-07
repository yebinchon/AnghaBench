; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_pager.c_pager_close.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_pager.c_pager_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pager_pid = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@stdout_redirected = common dso_local global i32 0, align 4
@stored_stdout = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@stderr_redirected = common dso_local global i32 0, align 4
@stored_stderr = common dso_local global i64 0, align 8
@STDERR_FILENO = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pager_close() #0 {
  %1 = load i64, i64* @pager_pid, align 8
  %2 = icmp sle i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %48

4:                                                ; preds = %0
  %5 = load i32, i32* @stdout, align 4
  %6 = call i32 @fflush(i32 %5)
  %7 = load i32, i32* @stdout_redirected, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = load i64, i64* @stored_stdout, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load i64, i64* @stored_stdout, align 8
  %14 = load i32, i32* @STDOUT_FILENO, align 4
  %15 = call i64 @dup2(i64 %13, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %9
  %18 = load i32, i32* @STDOUT_FILENO, align 4
  %19 = call i32 @close(i32 %18)
  br label %20

20:                                               ; preds = %17, %12
  br label %21

21:                                               ; preds = %20, %4
  %22 = load i64, i64* @stored_stdout, align 8
  %23 = call i64 @safe_close(i64 %22)
  store i64 %23, i64* @stored_stdout, align 8
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fflush(i32 %24)
  %26 = load i32, i32* @stderr_redirected, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load i64, i64* @stored_stderr, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @stored_stderr, align 8
  %33 = load i32, i32* @STDERR_FILENO, align 4
  %34 = call i64 @dup2(i64 %32, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %28
  %37 = load i32, i32* @STDERR_FILENO, align 4
  %38 = call i32 @close(i32 %37)
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i64, i64* @stored_stderr, align 8
  %42 = call i64 @safe_close(i64 %41)
  store i64 %42, i64* @stored_stderr, align 8
  store i32 0, i32* @stderr_redirected, align 4
  store i32 0, i32* @stdout_redirected, align 4
  %43 = load i64, i64* @pager_pid, align 8
  %44 = load i32, i32* @SIGCONT, align 4
  %45 = call i32 @kill(i64 %43, i32 %44)
  %46 = load i64, i64* @pager_pid, align 8
  %47 = call i32 @wait_for_terminate(i64 %46, i32* null)
  store i64 0, i64* @pager_pid, align 8
  br label %48

48:                                               ; preds = %40, %3
  ret void
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @dup2(i64, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @safe_close(i64) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @wait_for_terminate(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

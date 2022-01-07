; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed.c__finish_daemonize.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed.c__finish_daemonize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to open /dev/null: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to dup /dev/null onto stdin: %s\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to dup /dev/null onto stdout: %s\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to dup /dev/null onto stderr: %s\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to close /dev/null: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_finish_daemonize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_finish_daemonize() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @O_RDWR, align 4
  %3 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @errno, align 4
  %8 = call i32 @strerror(i32 %7)
  %9 = call i32 @zed_log_die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %6, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @STDIN_FILENO, align 4
  %13 = call i64 @dup2(i32 %11, i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 @zed_log_die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %10
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @STDOUT_FILENO, align 4
  %22 = call i64 @dup2(i32 %20, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @zed_log_die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @STDERR_FILENO, align 4
  %31 = call i64 @dup2(i32 %29, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 @zed_log_die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @STDERR_FILENO, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* %1, align 4
  %43 = call i64 @close(i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @strerror(i32 %46)
  %48 = call i32 @zed_log_die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %41, %37
  %50 = call i32 (...) @zed_log_pipe_close_writes()
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @zed_log_die(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @dup2(i32, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @zed_log_pipe_close_writes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

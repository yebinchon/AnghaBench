; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_log.c_zed_log_pipe_wait.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_log.c_zed_log_pipe_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@_ctx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [43 x i8] c"Invalid use of zed_log_pipe_wait in PID %d\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to read from daemonize pipe in PID %d: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zed_log_pipe_wait() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8, align 1
  %3 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_ctx, i32 0, i32 0), align 8
  %4 = getelementptr inbounds i64, i64* %3, i64 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = call i64 (...) @getpid()
  %9 = trunc i64 %8 to i32
  %10 = call i32 (i8*, i32, ...) @zed_log_die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %7, %0
  br label %12

12:                                               ; preds = %34, %23, %11
  %13 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_ctx, i32 0, i32 0), align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @read(i64 %15, i8* %2, i32 1)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EINTR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %12

24:                                               ; preds = %19
  %25 = call i64 (...) @getpid()
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* @errno, align 8
  %28 = call i32 @strerror(i64 %27)
  %29 = call i32 (i8*, i32, ...) @zed_log_die(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %24, %12
  %31 = load i64, i64* %1, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %35

34:                                               ; preds = %30
  br label %12

35:                                               ; preds = %33
  ret void
}

declare dso_local i32 @zed_log_die(i8*, i32, ...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @read(i64, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

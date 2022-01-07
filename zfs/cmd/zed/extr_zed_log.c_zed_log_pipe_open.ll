; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_log.c_zed_log_pipe_open.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_log.c_zed_log_pipe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@_ctx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [43 x i8] c"Invalid use of zed_log_pipe_open in PID %d\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to create daemonize pipe in PID %d: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zed_log_pipe_open() #0 {
  %1 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_ctx, i32 0, i32 0), align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 0
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_ctx, i32 0, i32 0), align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %5, %0
  %11 = call i64 (...) @getpid()
  %12 = trunc i64 %11 to i32
  %13 = call i32 (i8*, i32, ...) @zed_log_die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %10, %5
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_ctx, i32 0, i32 0), align 8
  %16 = call i64 @pipe(i32* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = call i64 (...) @getpid()
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 (i8*, i32, ...) @zed_log_die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @zed_log_die(i8*, i32, ...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

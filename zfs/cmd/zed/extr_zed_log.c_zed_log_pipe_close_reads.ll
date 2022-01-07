; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_log.c_zed_log_pipe_close_reads.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_log.c_zed_log_pipe_close_reads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@_ctx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [50 x i8] c"Invalid use of zed_log_pipe_close_reads in PID %d\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Failed to close reads on daemonize pipe in PID %d: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zed_log_pipe_close_reads() #0 {
  %1 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_ctx, i32 0, i32 0), align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 0
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = call i64 (...) @getpid()
  %7 = trunc i64 %6 to i32
  %8 = call i32 (i8*, i32, ...) @zed_log_die(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_ctx, i32 0, i32 0), align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @close(i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = call i64 (...) @getpid()
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @strerror(i32 %18)
  %20 = call i32 (i8*, i32, ...) @zed_log_die(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %19)
  br label %21

21:                                               ; preds = %15, %9
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_ctx, i32 0, i32 0), align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 -1, i32* %23, align 4
  ret void
}

declare dso_local i32 @zed_log_die(i8*, i32, ...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

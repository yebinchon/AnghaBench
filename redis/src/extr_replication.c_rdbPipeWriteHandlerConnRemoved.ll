; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_rdbPipeWriteHandlerConnRemoved.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_rdbPipeWriteHandlerConnRemoved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.connection = type { i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AE_READABLE = common dso_local global i32 0, align 4
@rdbPipeReadHandler = common dso_local global i32 0, align 4
@AE_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Unrecoverable error creating server.rdb_pipe_read file event.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdbPipeWriteHandlerConnRemoved(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %3 = load %struct.connection*, %struct.connection** %2, align 8
  %4 = call i32 @connHasWriteHandler(%struct.connection* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %25

7:                                                ; preds = %1
  %8 = load %struct.connection*, %struct.connection** %2, align 8
  %9 = call i32 @connSetWriteHandler(%struct.connection* %8, i32* null)
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %17 = load i32, i32* @AE_READABLE, align 4
  %18 = load i32, i32* @rdbPipeReadHandler, align 4
  %19 = call i64 @aeCreateFileEvent(i32 %15, i32 %16, i32 %17, i32 %18, i32* null)
  %20 = load i64, i64* @AE_ERR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 @serverPanic(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %14
  br label %25

25:                                               ; preds = %6, %24, %7
  ret void
}

declare dso_local i32 @connHasWriteHandler(%struct.connection*) #1

declare dso_local i32 @connSetWriteHandler(%struct.connection*, i32*) #1

declare dso_local i64 @aeCreateFileEvent(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

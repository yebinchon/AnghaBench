; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_backgroundSaveDoneHandlerSocket.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_backgroundSaveDoneHandlerSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Background RDB transfer terminated with success\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Background transfer error\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Background transfer terminated by signal %d\00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RDB_CHILD_TYPE_NONE = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@RDB_CHILD_TYPE_SOCKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backgroundSaveDoneHandlerSocket(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @LL_NOTICE, align 4
  %12 = call i32 (i32, i8*, ...) @serverLog(i32 %11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %27

13:                                               ; preds = %7, %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @LL_WARNING, align 4
  %21 = call i32 (i32, i8*, ...) @serverLog(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %26

22:                                               ; preds = %16, %13
  %23 = load i32, i32* @LL_WARNING, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i32, i8*, ...) @serverLog(i32 %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  br label %27

27:                                               ; preds = %26, %10
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %28 = load i32, i32* @RDB_CHILD_TYPE_NONE, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @C_OK, align 4
  br label %38

36:                                               ; preds = %31, %27
  %37 = load i32, i32* @C_ERR, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* @RDB_CHILD_TYPE_SOCKET, align 4
  %41 = call i32 @updateSlavesWaitingBgsave(i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @updateSlavesWaitingBgsave(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

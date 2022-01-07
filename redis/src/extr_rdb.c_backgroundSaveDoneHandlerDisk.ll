; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_backgroundSaveDoneHandlerDisk.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_backgroundSaveDoneHandlerDisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8*, i32, i8*, i8*, i64, i64 }

@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Background saving terminated with success\00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@C_OK = common dso_local global i8* null, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Background saving error\00", align 1
@C_ERR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Background saving terminated by signal %d\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"rdb-unlink-temp-file\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@RDB_CHILD_TYPE_NONE = common dso_local global i32 0, align 4
@RDB_CHILD_TYPE_DISK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backgroundSaveDoneHandlerDisk(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load i32, i32* @LL_NOTICE, align 4
  %13 = call i32 (i32, i8*, ...) @serverLog(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %16 = sub nsw i64 %14, %15
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %17 = call i8* @time(i32* null)
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %18 = load i8*, i8** @C_OK, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  br label %48

19:                                               ; preds = %8, %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @LL_WARNING, align 4
  %27 = call i32 (i32, i8*, ...) @serverLog(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8*, i8** @C_ERR, align 8
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  br label %47

29:                                               ; preds = %22, %19
  %30 = load i32, i32* @LL_WARNING, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, i8*, ...) @serverLog(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @latencyStartMonitor(i32 %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %36 = call i32 @rdbRemoveTempFile(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @latencyEndMonitor(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SIGUSR1, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i8*, i8** @C_ERR, align 8
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  br label %46

46:                                               ; preds = %44, %29
  br label %47

47:                                               ; preds = %46, %25
  br label %48

48:                                               ; preds = %47, %11
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %49 = load i32, i32* @RDB_CHILD_TYPE_NONE, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %50 = call i8* @time(i32* null)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 0, %52
  %54 = getelementptr i8, i8* %50, i64 %53
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i8*, i8** @C_OK, align 8
  br label %64

62:                                               ; preds = %57, %48
  %63 = load i8*, i8** @C_ERR, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i8* [ %61, %60 ], [ %63, %62 ]
  %66 = load i32, i32* @RDB_CHILD_TYPE_DISK, align 4
  %67 = call i32 @updateSlavesWaitingBgsave(i8* %65, i32 %66)
  ret void
}

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i8* @time(i32*) #1

declare dso_local i32 @latencyStartMonitor(i32) #1

declare dso_local i32 @rdbRemoveTempFile(i32) #1

declare dso_local i32 @latencyEndMonitor(i32) #1

declare dso_local i32 @latencyAddSampleIfNeeded(i8*, i32) #1

declare dso_local i32 @updateSlavesWaitingBgsave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

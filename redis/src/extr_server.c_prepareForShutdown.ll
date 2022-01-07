; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_prepareForShutdown.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_prepareForShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i64, i64, i64, i64, i32, i32 }

@SHUTDOWN_SAVE = common dso_local global i32 0, align 4
@SHUTDOWN_NOSAVE = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"User requested shutdown...\00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"There is a child saving an .rdb. Killing it!\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"There is a module fork child. Killing it!\00", align 1
@AOF_OFF = common dso_local global i64 0, align 8
@AOF_WAIT_REWRITE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Writing initial AOF, can't exit.\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"There is a child rewriting the AOF. Killing it!\00", align 1
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Calling fsync() on the AOF file.\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Saving the final RDB snapshot before exiting.\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"Error trying to save the DB, can't exit.\00", align 1
@REDISMODULE_EVENT_SHUTDOWN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"Removing the pid file.\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%s is now ready to exit, bye bye...\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Sentinel\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Redis\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepareForShutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SHUTDOWN_SAVE, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SHUTDOWN_NOSAVE, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @LL_WARNING, align 4
  %15 = call i32 (i32, i8*, ...) @serverLog(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @ldbKillForkedSessions()
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @LL_WARNING, align 4
  %21 = call i32 (i32, i8*, ...) @serverLog(i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 (...) @killRDBChild()
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @LL_WARNING, align 4
  %28 = call i32 (i32, i8*, ...) @serverLog(i32 %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %30 = call i32 @TerminateModuleForkChild(i32 %29, i32 0)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %33 = load i64, i64* @AOF_OFF, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %40 = load i64, i64* @AOF_WAIT_REWRITE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @LL_WARNING, align 4
  %44 = call i32 (i32, i8*, ...) @serverLog(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* @C_ERR, align 4
  store i32 %45, i32* %2, align 4
  br label %103

46:                                               ; preds = %38
  %47 = load i32, i32* @LL_WARNING, align 4
  %48 = call i32 (i32, i8*, ...) @serverLog(i32 %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i32 (...) @killAppendOnlyChild()
  br label %50

50:                                               ; preds = %46, %35
  %51 = load i32, i32* @LL_NOTICE, align 4
  %52 = call i32 (i32, i8*, ...) @serverLog(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %53 = call i32 @flushAppendOnlyFile(i32 1)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 4
  %55 = call i32 @redis_fsync(i32 %54)
  br label %56

56:                                               ; preds = %50, %31
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62, %59
  %66 = load i32, i32* @LL_NOTICE, align 4
  %67 = call i32 (i32, i8*, ...) @serverLog(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %68 = call i32* @rdbPopulateSaveInfo(i32* %6)
  store i32* %68, i32** %7, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8), align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i64 @rdbSave(i32 %69, i32* %70)
  %72 = load i64, i64* @C_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i32, i32* @LL_WARNING, align 4
  %76 = call i32 (i32, i8*, ...) @serverLog(i32 %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %77 = load i32, i32* @C_ERR, align 4
  store i32 %77, i32* %2, align 4
  br label %103

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %62
  %80 = load i32, i32* @REDISMODULE_EVENT_SHUTDOWN, align 4
  %81 = call i32 @moduleFireServerEvent(i32 %80, i32 0, i32* null)
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84, %79
  %88 = load i32, i32* @LL_NOTICE, align 4
  %89 = call i32 (i32, i8*, ...) @serverLog(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %91 = call i32 @unlink(i64 %90)
  br label %92

92:                                               ; preds = %87, %84
  %93 = call i32 (...) @flushSlavesOutputBuffers()
  %94 = call i32 @closeListeningSockets(i32 1)
  %95 = load i32, i32* @LL_WARNING, align 4
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)
  %100 = call i32 (i32, i8*, ...) @serverLog(i32 %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %99)
  %101 = load i64, i64* @C_OK, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %92, %74, %42
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @ldbKillForkedSessions(...) #1

declare dso_local i32 @killRDBChild(...) #1

declare dso_local i32 @TerminateModuleForkChild(i32, i32) #1

declare dso_local i32 @killAppendOnlyChild(...) #1

declare dso_local i32 @flushAppendOnlyFile(i32) #1

declare dso_local i32 @redis_fsync(i32) #1

declare dso_local i32* @rdbPopulateSaveInfo(i32*) #1

declare dso_local i64 @rdbSave(i32, i32*) #1

declare dso_local i32 @moduleFireServerEvent(i32, i32, i32*) #1

declare dso_local i32 @unlink(i64) #1

declare dso_local i32 @flushSlavesOutputBuffers(...) #1

declare dso_local i32 @closeListeningSockets(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

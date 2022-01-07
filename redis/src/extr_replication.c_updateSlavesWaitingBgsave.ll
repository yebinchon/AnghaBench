; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_updateSlavesWaitingBgsave.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_updateSlavesWaitingBgsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i64, i32, i64, i32 }
%struct.redis_stat = type { i64 }

@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@SLAVE_STATE_WAIT_BGSAVE_START = common dso_local global i64 0, align 8
@SLAVE_STATE_WAIT_BGSAVE_END = common dso_local global i64 0, align 8
@RDB_CHILD_TYPE_SOCKET = common dso_local global i32 0, align 4
@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [114 x i8] c"Streamed RDB transfer with replica %s succeeded (socket). Waiting for REPLCONF ACK from slave to enable streaming\00", align 1
@SLAVE_STATE_ONLINE = common dso_local global i64 0, align 8
@C_OK = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"SYNC failed. BGSAVE child returned an error\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"SYNC failed. Can't open/stat DB after BGSAVE: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SLAVE_STATE_SEND_BULK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"$%lld\0D\0A\00", align 1
@sendBulkToSlave = common dso_local global i32* null, align 8
@C_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @updateSlavesWaitingBgsave(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.redis_stat, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 2), align 4
  %12 = call i32 @listRewind(i32 %11, i32* %8)
  br label %13

13:                                               ; preds = %126, %120, %85, %67, %2
  %14 = call %struct.TYPE_7__* @listNext(i32* %8)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %5, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %127

16:                                               ; preds = %13
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %9, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SLAVE_STATE_WAIT_BGSAVE_START, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  br label %38

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %33, %36
  br label %38

38:                                               ; preds = %32, %28
  %39 = phi i32 [ %31, %28 ], [ %37, %32 ]
  store i32 %39, i32* %7, align 4
  br label %126

40:                                               ; preds = %16
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SLAVE_STATE_WAIT_BGSAVE_END, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %125

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @RDB_CHILD_TYPE_SOCKET, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i32, i32* @LL_NOTICE, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = call i32 @replicationGetSlaveName(%struct.TYPE_8__* %52)
  %54 = call i32 (i32, i8*, ...) @serverLog(i32 %51, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* @SLAVE_STATE_ONLINE, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 1), align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 8
  br label %124

63:                                               ; preds = %46
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @C_OK, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = call i32 @freeClient(%struct.TYPE_8__* %68)
  %70 = load i32, i32* @LL_WARNING, align 4
  %71 = call i32 (i32, i8*, ...) @serverLog(i32 %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %13

72:                                               ; preds = %63
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 4
  %74 = load i32, i32* @O_RDONLY, align 4
  %75 = call i32 @open(i32 %73, i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = icmp eq i32 %75, -1
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @redis_fstat(i32 %82, %struct.redis_stat* %10)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %92

85:                                               ; preds = %79, %72
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %87 = call i32 @freeClient(%struct.TYPE_8__* %86)
  %88 = load i32, i32* @LL_WARNING, align 4
  %89 = load i32, i32* @errno, align 4
  %90 = call i32 @strerror(i32 %89)
  %91 = call i32 (i32, i8*, ...) @serverLog(i32 %88, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %13

92:                                               ; preds = %79
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 7
  store i64 0, i64* %94, align 8
  %95 = getelementptr inbounds %struct.redis_stat, %struct.redis_stat* %10, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 5
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* @SLAVE_STATE_SEND_BULK, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = call i32 (...) @sdsempty()
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @sdscatprintf(i32 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @connSetWriteHandler(i32 %111, i32* null)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** @sendBulkToSlave, align 8
  %117 = call i32 @connSetWriteHandler(i32 %115, i32* %116)
  %118 = load i32, i32* @C_ERR, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %92
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %122 = call i32 @freeClient(%struct.TYPE_8__* %121)
  br label %13

123:                                              ; preds = %92
  br label %124

124:                                              ; preds = %123, %50
  br label %125

125:                                              ; preds = %124, %40
  br label %126

126:                                              ; preds = %125, %38
  br label %13

127:                                              ; preds = %13
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @startBgsaveForReplication(i32 %131)
  br label %133

133:                                              ; preds = %130, %127
  ret void
}

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_7__* @listNext(i32*) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @replicationGetSlaveName(%struct.TYPE_8__*) #1

declare dso_local i32 @freeClient(%struct.TYPE_8__*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @redis_fstat(i32, %struct.redis_stat*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i64) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @connSetWriteHandler(i32, i32*) #1

declare dso_local i32 @startBgsaveForReplication(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

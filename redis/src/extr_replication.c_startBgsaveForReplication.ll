; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_startBgsaveForReplication.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_startBgsaveForReplication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }

@server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@SLAVE_CAPA_EOF = common dso_local global i32 0, align 4
@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Starting BGSAVE for SYNC with target: %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"replicas sockets\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [113 x i8] c"BGSAVE for replication: replication information not available, can't generate the RDB file right now. Try later.\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"BGSAVE for replication failed\00", align 1
@SLAVE_STATE_WAIT_BGSAVE_START = common dso_local global i64 0, align 8
@REPL_STATE_NONE = common dso_local global i64 0, align 8
@CLIENT_SLAVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"BGSAVE failed, replication can't continue\00", align 1
@CLIENT_CLOSE_AFTER_REPLY = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @startBgsaveForReplication(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %3, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 2), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SLAVE_CAPA_EOF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i1 [ false, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @LL_NOTICE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 (i32, i8*, ...) @serverLog(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32* @rdbPopulateSaveInfo(i32* %8)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @rdbSaveToSlavesSockets(i32* %35)
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %31
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 1), align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @rdbSaveBackground(i32 %38, i32* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %34
  br label %46

42:                                               ; preds = %19
  %43 = load i32, i32* @LL_WARNING, align 4
  %44 = call i32 (i32, i8*, ...) @serverLog(i32 %43, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* @C_ERR, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %41
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @C_ERR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %90

50:                                               ; preds = %46
  %51 = load i32, i32* @LL_WARNING, align 4
  %52 = call i32 (i32, i8*, ...) @serverLog(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %54 = call i32 @listRewind(i32 %53, i32* %6)
  br label %55

55:                                               ; preds = %87, %50
  %56 = call %struct.TYPE_8__* @listNext(i32* %6)
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %7, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %88

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %10, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SLAVE_STATE_WAIT_BGSAVE_START, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %58
  %68 = load i64, i64* @REPL_STATE_NONE, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* @CLIENT_SLAVE, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = call i32 @listDelNode(i32 %77, %struct.TYPE_8__* %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %81 = call i32 @addReplyError(%struct.TYPE_9__* %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %67, %58
  br label %55

88:                                               ; preds = %55
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %122

90:                                               ; preds = %46
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %114, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %95 = call i32 @listRewind(i32 %94, i32* %6)
  br label %96

96:                                               ; preds = %112, %93
  %97 = call %struct.TYPE_8__* @listNext(i32* %6)
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %7, align 8
  %98 = icmp ne %struct.TYPE_8__* %97, null
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %11, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SLAVE_STATE_WAIT_BGSAVE_START, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %110 = call i32 (...) @getPsyncInitialOffset()
  %111 = call i32 @replicationSetupSlaveForFullResync(%struct.TYPE_9__* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %99
  br label %96

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113, %90
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @C_OK, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = call i32 (...) @replicationScriptCacheFlush()
  br label %120

120:                                              ; preds = %118, %114
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %88
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32* @rdbPopulateSaveInfo(i32*) #1

declare dso_local i32 @rdbSaveToSlavesSockets(i32*) #1

declare dso_local i32 @rdbSaveBackground(i32, i32*) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @listNext(i32*) #1

declare dso_local i32 @listDelNode(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @replicationSetupSlaveForFullResync(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @getPsyncInitialOffset(...) #1

declare dso_local i32 @replicationScriptCacheFlush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

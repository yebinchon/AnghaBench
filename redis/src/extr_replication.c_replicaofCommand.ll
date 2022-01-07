; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_replicaofCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_replicaofCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i8* }

@server = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"REPLICAOF not allowed in cluster mode.\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"MASTER MODE enabled (user request from '%s')\00", align 1
@AOF_OFF = common dso_local global i64 0, align 8
@CLIENT_SLAVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Command is not valid when client is a replica.\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [115 x i8] c"REPLICAOF would result into synchronization with the master we are already connected with. No operation performed.\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"+OK Already connected to specified master\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"REPLICAOF %s:%d enabled (user request from '%s')\00", align 1
@shared = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replicaofCommand(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 4), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = call i32 @addReplyError(%struct.TYPE_11__* %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %123

11:                                               ; preds = %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %14, i64 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %11
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %24, i64 2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcasecmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %21
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = call i32 (...) @replicationUnsetMaster()
  %36 = call i32 (...) @sdsempty()
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = call i32 @catClientInfoString(i32 %36, %struct.TYPE_11__* %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @LL_NOTICE, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (i32, i8*, ...) @serverLog(i32 %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @sdsfree(i32 %42)
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 3), align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 1), align 8
  %48 = load i64, i64* @AOF_OFF, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (...) @restartAOFAfterSYNC()
  br label %52

52:                                               ; preds = %50, %46, %34
  br label %53

53:                                               ; preds = %52, %31
  br label %119

54:                                               ; preds = %21, %11
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CLIENT_SLAVE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = call i32 @addReplyError(%struct.TYPE_11__* %62, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %123

64:                                               ; preds = %54
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %68, i64 2
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = call i64 @getLongFromObjectOrReply(%struct.TYPE_11__* %65, %struct.TYPE_14__* %70, i64* %4, i32* null)
  %72 = load i64, i64* @C_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %123

75:                                               ; preds = %64
  %76 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %99

78:                                               ; preds = %75
  %79 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %82, i64 1
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strcasecmp(i8* %79, i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %78
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 2), align 8
  %91 = load i64, i64* %4, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* @LL_NOTICE, align 4
  %95 = call i32 (i32, i8*, ...) @serverLog(i32 %94, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.5, i64 0, i64 0))
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %97 = call i32 @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %98 = call i32 @addReplySds(%struct.TYPE_11__* %96, i32 %97)
  br label %123

99:                                               ; preds = %89, %78, %75
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %102, i64 1
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @replicationSetMaster(i8* %106, i64 %107)
  %109 = call i32 (...) @sdsempty()
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %111 = call i32 @catClientInfoString(i32 %109, %struct.TYPE_11__* %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* @LL_NOTICE, align 4
  %113 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 2), align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 (i32, i8*, ...) @serverLog(i32 %112, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %113, i64 %114, i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @sdsfree(i32 %117)
  br label %119

119:                                              ; preds = %99, %53
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shared, i32 0, i32 0), align 4
  %122 = call i32 @addReply(%struct.TYPE_11__* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %93, %74, %61, %8
  ret void
}

declare dso_local i32 @addReplyError(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @replicationUnsetMaster(...) #1

declare dso_local i32 @catClientInfoString(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @restartAOFAfterSYNC(...) #1

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_11__*, %struct.TYPE_14__*, i64*, i32*) #1

declare dso_local i32 @addReplySds(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @replicationSetMaster(i8*, i64) #1

declare dso_local i32 @addReply(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

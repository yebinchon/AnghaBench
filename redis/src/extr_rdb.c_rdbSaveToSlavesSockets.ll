; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveToSlavesSockets.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveToSlavesSockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@C_ERR = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SLAVE_STATE_WAIT_BGSAVE_START = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"redis-rdb-to-slaves\00", align 1
@C_OK = common dso_local global i32 0, align 4
@CHILD_INFO_TYPE_RDB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"RDB\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Can't save in background: fork: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SLAVE_STATE_WAIT_BGSAVE_END = common dso_local global i64 0, align 8
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Background RDB transfer started by pid %d\00", align 1
@RDB_CHILD_TYPE_SOCKET = common dso_local global i32 0, align 4
@AE_READABLE = common dso_local global i32 0, align 4
@rdbPipeReadHandler = common dso_local global i32 0, align 4
@AE_ERR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [62 x i8] c"Unrecoverable error creating server.rdb_pipe_read file event.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveToSlavesSockets(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  %12 = call i64 (...) @hasActiveChildProcess()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @C_ERR, align 4
  store i32 %15, i32* %2, align 4
  br label %166

16:                                               ; preds = %1
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 8), align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @C_ERR, align 4
  store i32 %20, i32* %2, align 4
  br label %166

21:                                               ; preds = %16
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %23 = call i32 @pipe(i32* %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @C_ERR, align 4
  store i32 %26, i32* %2, align 4
  br label %166

27:                                               ; preds = %21
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  %33 = call i32 @anetNonBlock(i32* null, i32 %32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 9), align 8
  %35 = call i32 @listLength(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = mul i64 8, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32* @zmalloc(i32 %38)
  store i32* %39, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 6), align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 9), align 8
  %41 = call i32 @listRewind(i32 %40, i32* %5)
  br label %42

42:                                               ; preds = %65, %27
  %43 = call %struct.TYPE_6__* @listNext(i32* %5)
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %4, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %8, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SLAVE_STATE_WAIT_BGSAVE_START, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %45
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 8), align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 7), align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 7), align 8
  %61 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %61, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = call i32 (...) @getPsyncInitialOffset()
  %64 = call i32 @replicationSetupSlaveForFullResync(%struct.TYPE_7__* %62, i32 %63)
  br label %65

65:                                               ; preds = %54, %45
  br label %42

66:                                               ; preds = %42
  %67 = call i32 (...) @openChildInfoPipe()
  %68 = call i32 (...) @redisFork()
  store i32 %68, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %66
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 4
  %72 = call i32 @rioInitWithFd(i32* %10, i32 %71)
  %73 = call i32 @redisSetProcTitle(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @rdbSaveRioWithEOFMark(i32* %10, i32* null, i32* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @C_OK, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = call i64 @rioFlush(i32* %10)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @C_ERR, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %82, %79, %70
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @C_OK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @CHILD_INFO_TYPE_RDB, align 4
  %90 = call i32 @sendChildCOWInfo(i32 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %84
  %92 = call i32 @rioFreeFd(i32* %10)
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 4
  %94 = call i32 @close(i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @C_OK, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 0, i32 1
  %100 = call i32 @exitFromChild(i32 %99)
  br label %164

101:                                              ; preds = %66
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %136

104:                                              ; preds = %101
  %105 = load i32, i32* @LL_WARNING, align 4
  %106 = load i32, i32* @errno, align 4
  %107 = call i32 @strerror(i32 %106)
  %108 = call i32 @serverLog(i32 %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 9), align 8
  %110 = call i32 @listRewind(i32 %109, i32* %5)
  br label %111

111:                                              ; preds = %127, %104
  %112 = call %struct.TYPE_6__* @listNext(i32* %5)
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %4, align 8
  %113 = icmp ne %struct.TYPE_6__* %112, null
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %11, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SLAVE_STATE_WAIT_BGSAVE_END, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load i64, i64* @SLAVE_STATE_WAIT_BGSAVE_START, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %114
  br label %111

128:                                              ; preds = %111
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 4
  %130 = call i32 @close(i32 %129)
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  %132 = call i32 @close(i32 %131)
  %133 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 8), align 8
  %134 = call i32 @zfree(i32* %133)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 6), align 8
  %135 = call i32 (...) @closeChildInfoPipe()
  br label %155

136:                                              ; preds = %101
  %137 = load i32, i32* @LL_NOTICE, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @serverLog(i32 %137, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = call i32 @time(i32* null)
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 5), align 4
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 2), align 8
  %142 = load i32, i32* @RDB_CHILD_TYPE_SOCKET, align 4
  store i32 %142, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 4), align 8
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 4
  %144 = call i32 @close(i32 %143)
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 3), align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  %147 = load i32, i32* @AE_READABLE, align 4
  %148 = load i32, i32* @rdbPipeReadHandler, align 4
  %149 = call i64 @aeCreateFileEvent(i32 %145, i32 %146, i32 %147, i32 %148, i32* null)
  %150 = load i64, i64* @AE_ERR, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %136
  %153 = call i32 @serverPanic(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %136
  br label %155

155:                                              ; preds = %154, %128
  %156 = load i32, i32* %6, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* @C_ERR, align 4
  br label %162

160:                                              ; preds = %155
  %161 = load i32, i32* @C_OK, align 4
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i32 [ %159, %158 ], [ %161, %160 ]
  store i32 %163, i32* %2, align 4
  br label %166

164:                                              ; preds = %91
  %165 = load i32, i32* @C_OK, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %164, %162, %25, %19, %14
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i64 @hasActiveChildProcess(...) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @anetNonBlock(i32*, i32) #1

declare dso_local i32* @zmalloc(i32) #1

declare dso_local i32 @listLength(i32) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @listNext(i32*) #1

declare dso_local i32 @replicationSetupSlaveForFullResync(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @getPsyncInitialOffset(...) #1

declare dso_local i32 @openChildInfoPipe(...) #1

declare dso_local i32 @redisFork(...) #1

declare dso_local i32 @rioInitWithFd(i32*, i32) #1

declare dso_local i32 @redisSetProcTitle(i8*) #1

declare dso_local i32 @rdbSaveRioWithEOFMark(i32*, i32*, i32*) #1

declare dso_local i64 @rioFlush(i32*) #1

declare dso_local i32 @sendChildCOWInfo(i32, i8*) #1

declare dso_local i32 @rioFreeFd(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @exitFromChild(i32) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @closeChildInfoPipe(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @aeCreateFileEvent(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

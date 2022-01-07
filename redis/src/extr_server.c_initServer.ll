; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_initServer.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_initServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i64, i64*, i32, i64*, i32, i64, i32, i32, i32, i32*, i32, i32, i64*, i64, i32, i32, i64, i64, i32, i32, i32*, i64, i64, i8*, i8*, %struct.TYPE_6__, i64, i64, i64, i64, i8*, i64, i64, i8*, i32, %struct.TYPE_5__, i64, i64, i32*, i64, i64, i32*, i32, i64, i8*, i8*, %struct.TYPE_7__*, i32, i32, i32, i32*, i64, i32, i32, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i64, i32*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i8*, i64, i8*, i8*, i8*, i8*, i8* }

@SIGHUP = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@LOG_PID = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_NOWAIT = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Failed to configure TLS. Check logs for more info.\00", align 1
@CONFIG_FDSET_INCR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed creating the event loop. Error message: '%s'\00", align 1
@errno = common dso_local global i32 0, align 4
@ANET_ERR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Opening Unix socket: %s\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Configured to not listen anywhere, exiting.\00", align 1
@dbDictType = common dso_local global i32 0, align 4
@keyptrDictType = common dso_local global i32 0, align 4
@keylistDictType = common dso_local global i32 0, align 4
@objectKeyPointerValueDictType = common dso_local global i32 0, align 4
@freePubsubPattern = common dso_local global i32 0, align 4
@listMatchPubsubPattern = common dso_local global i32 0, align 4
@RDB_CHILD_TYPE_NONE = common dso_local global i32 0, align 4
@C_OK = common dso_local global i8* null, align 8
@serverCron = common dso_local global i32 0, align 4
@AE_ERR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Can't create event loop timers.\00", align 1
@AE_READABLE = common dso_local global i32 0, align 4
@acceptTcpHandler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Unrecoverable error creating server.ipfd file event.\00", align 1
@acceptTLSHandler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"Unrecoverable error creating server.tlsfd file event.\00", align 1
@acceptUnixHandler = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"Unrecoverable error creating server.sofd file event.\00", align 1
@moduleBlockedClientPipeReadable = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [79 x i8] c"Error registering the readable event for the module blocked clients subsystem.\00", align 1
@AOF_ON = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Can't open the append-only file: %s\00", align 1
@.str.10 = private unnamed_addr constant [118 x i8] c"Warning: 32 bit instance detected but no memory limit set. Setting 3 GB maxmemory limit with 'noeviction' policy now.\00", align 1
@MAXMEMORY_NO_EVICTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initServer() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SIGHUP, align 4
  %3 = load i32, i32* @SIG_IGN, align 4
  %4 = call i32 @signal(i32 %2, i32 %3)
  %5 = load i32, i32* @SIGPIPE, align 4
  %6 = load i32, i32* @SIG_IGN, align 4
  %7 = call i32 @signal(i32 %5, i32 %6)
  %8 = call i32 (...) @setupSignalHandlers()
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 76), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 75), align 8
  %13 = load i32, i32* @LOG_PID, align 4
  %14 = load i32, i32* @LOG_NDELAY, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @LOG_NOWAIT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 74), align 4
  %19 = call i32 @openlog(i32 %12, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %11, %0
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 72), align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 73), align 8
  %22 = call i32 (...) @getpid()
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 71), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 70), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 69), align 8
  %23 = call i8* (...) @listCreate()
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 68), align 8
  %24 = call i32 (...) @raxNew()
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 67), align 8
  %25 = call i8* (...) @listCreate()
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 66), align 8
  %26 = call i8* (...) @listCreate()
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 65), align 8
  %27 = call i8* (...) @listCreate()
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 64), align 8
  %28 = call i8* (...) @listCreate()
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 63), align 8
  %29 = call i8* (...) @listCreate()
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 62), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  %30 = call i8* (...) @listCreate()
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 61), align 8
  %31 = call i8* (...) @listCreate()
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 60), align 8
  %32 = call i8* (...) @listCreate()
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 59), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 58), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 57), align 8
  %33 = call i32 (...) @zmalloc_get_memory_size()
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 56), align 4
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %20
  %37 = call i64 @tlsConfigure(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 55))
  %38 = load i64, i64* @C_ERR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @LL_WARNING, align 4
  %42 = call i32 (i32, i8*, ...) @serverLog(i32 %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %36, %20
  %45 = call i32 (...) @createSharedObjects()
  %46 = call i32 (...) @adjustOpenFilesLimit()
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 54), align 8
  %48 = load i64, i64* @CONFIG_FDSET_INCR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32* @aeCreateEventLoop(i64 %49)
  store i32* %50, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 23), align 8
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 23), align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i32, i32* @LL_WARNING, align 4
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @strerror(i32 %55)
  %57 = call i32 (i32, i8*, ...) @serverLog(i32 %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %44
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 2), align 8
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = call %struct.TYPE_7__* @zmalloc(i32 %63)
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 49), align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 3), align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 3), align 8
  %69 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 4), align 8
  %70 = call i64 @listenToPort(i64 %68, i64* %69, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 5))
  %71 = load i64, i64* @C_ERR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 @exit(i32 1) #3
  unreachable

75:                                               ; preds = %67, %59
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 8
  %80 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 6), align 8
  %81 = call i64 @listenToPort(i64 %79, i64* %80, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 7))
  %82 = load i64, i64* @C_ERR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = call i32 @exit(i32 1) #3
  unreachable

86:                                               ; preds = %78, %75
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 53), align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 53), align 8
  %91 = call i32 @unlink(i32* %90)
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 50), align 8
  %93 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 53), align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 52), align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 51), align 4
  %96 = call i64 @anetUnixServer(i32 %92, i32* %93, i32 %94, i32 %95)
  store i64 %96, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 8), align 8
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 8), align 8
  %98 = load i64, i64* @ANET_ERR, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %89
  %101 = load i32, i32* @LL_WARNING, align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 50), align 8
  %103 = call i32 (i32, i8*, ...) @serverLog(i32 %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = call i32 @exit(i32 1) #3
  unreachable

105:                                              ; preds = %89
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 8), align 8
  %107 = call i32 @anetNonBlock(i32* null, i64 %106)
  br label %108

108:                                              ; preds = %105, %86
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 5), align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 7), align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 8), align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* @LL_WARNING, align 4
  %119 = call i32 (i32, i8*, ...) @serverLog(i32 %118, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %120 = call i32 @exit(i32 1) #3
  unreachable

121:                                              ; preds = %114, %111, %108
  store i32 0, i32* %1, align 4
  br label %122

122:                                              ; preds = %174, %121
  %123 = load i32, i32* %1, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 2), align 8
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %177

126:                                              ; preds = %122
  %127 = call i8* @dictCreate(i32* @dbDictType, i32* null)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 49), align 8
  %129 = load i32, i32* %1, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 7
  store i8* %127, i8** %132, align 8
  %133 = call i8* @dictCreate(i32* @keyptrDictType, i32* null)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 49), align 8
  %135 = load i32, i32* %1, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 6
  store i8* %133, i8** %138, align 8
  %139 = call i8* @dictCreate(i32* @keylistDictType, i32* null)
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 49), align 8
  %141 = load i32, i32* %1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 5
  store i8* %139, i8** %144, align 8
  %145 = call i8* @dictCreate(i32* @objectKeyPointerValueDictType, i32* null)
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 49), align 8
  %147 = load i32, i32* %1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 4
  store i8* %145, i8** %150, align 8
  %151 = call i8* @dictCreate(i32* @keylistDictType, i32* null)
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 49), align 8
  %153 = load i32, i32* %1, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 3
  store i8* %151, i8** %156, align 8
  %157 = load i32, i32* %1, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 49), align 8
  %159 = load i32, i32* %1, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  store i32 %157, i32* %162, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 49), align 8
  %164 = load i32, i32* %1, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  store i64 0, i64* %167, align 8
  %168 = call i8* (...) @listCreate()
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 49), align 8
  %170 = load i32, i32* %1, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  store i8* %168, i8** %173, align 8
  br label %174

174:                                              ; preds = %126
  %175 = load i32, i32* %1, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %1, align 4
  br label %122

177:                                              ; preds = %122
  %178 = call i32 (...) @evictionPoolAlloc()
  %179 = call i8* @dictCreate(i32* @keylistDictType, i32* null)
  store i8* %179, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 48), align 8
  %180 = call i8* (...) @listCreate()
  store i8* %180, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 47), align 8
  %181 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 47), align 8
  %182 = load i32, i32* @freePubsubPattern, align 4
  %183 = call i32 @listSetFreeMethod(i8* %181, i32 %182)
  %184 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 47), align 8
  %185 = load i32, i32* @listMatchPubsubPattern, align 4
  %186 = call i32 @listSetMatchMethod(i8* %184, i32 %185)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 46), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 9), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 10), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 11), align 8
  %187 = load i32, i32* @RDB_CHILD_TYPE_NONE, align 4
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 45), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 44), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 43), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 42), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 41), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 40), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 39), align 8
  %188 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 12), align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  store i32 -1, i32* %189, align 4
  %190 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 12), align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  store i32 -1, i32* %191, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 38, i32 0), align 8
  %192 = call i32 (...) @aofRewriteBufferReset()
  %193 = call i32 (...) @sdsempty()
  store i32 %193, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 37), align 8
  %194 = call i8* @time(i32* null)
  store i8* %194, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 36), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 35), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 13), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 14), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 34), align 8
  %195 = call i32 (...) @resetServerStats()
  %196 = call i8* @time(i32* null)
  store i8* %196, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 33), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 32), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 31), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 30), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 29), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 28, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 28, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 28, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 28, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 28, i32 0), align 8
  %197 = load i8*, i8** @C_OK, align 8
  store i8* %197, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 27), align 8
  %198 = load i8*, i8** @C_OK, align 8
  store i8* %198, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 26), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 25), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 24), align 8
  %199 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 23), align 8
  %200 = load i32, i32* @serverCron, align 4
  %201 = call i64 @aeCreateTimeEvent(i32* %199, i32 1, i32 %200, i32* null, i32* null)
  %202 = load i64, i64* @AE_ERR, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %177
  %205 = call i32 @serverPanic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %206 = call i32 @exit(i32 1) #3
  unreachable

207:                                              ; preds = %177
  store i32 0, i32* %1, align 4
  br label %208

208:                                              ; preds = %227, %207
  %209 = load i32, i32* %1, align 4
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 5), align 8
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %230

212:                                              ; preds = %208
  %213 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 23), align 8
  %214 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 4), align 8
  %215 = load i32, i32* %1, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load i32, i32* @AE_READABLE, align 4
  %220 = load i32, i32* @acceptTcpHandler, align 4
  %221 = call i64 @aeCreateFileEvent(i32* %213, i64 %218, i32 %219, i32 %220, i32* null)
  %222 = load i64, i64* @AE_ERR, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %212
  %225 = call i32 @serverPanic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %212
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %1, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %1, align 4
  br label %208

230:                                              ; preds = %208
  store i32 0, i32* %1, align 4
  br label %231

231:                                              ; preds = %250, %230
  %232 = load i32, i32* %1, align 4
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 7), align 8
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %253

235:                                              ; preds = %231
  %236 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 23), align 8
  %237 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 6), align 8
  %238 = load i32, i32* %1, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %237, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = load i32, i32* @AE_READABLE, align 4
  %243 = load i32, i32* @acceptTLSHandler, align 4
  %244 = call i64 @aeCreateFileEvent(i32* %236, i64 %241, i32 %242, i32 %243, i32* null)
  %245 = load i64, i64* @AE_ERR, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %235
  %248 = call i32 @serverPanic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %249

249:                                              ; preds = %247, %235
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %1, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %1, align 4
  br label %231

253:                                              ; preds = %231
  %254 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 8), align 8
  %255 = icmp sgt i64 %254, 0
  br i1 %255, label %256, label %266

256:                                              ; preds = %253
  %257 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 23), align 8
  %258 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 8), align 8
  %259 = load i32, i32* @AE_READABLE, align 4
  %260 = load i32, i32* @acceptUnixHandler, align 4
  %261 = call i64 @aeCreateFileEvent(i32* %257, i64 %258, i32 %259, i32 %260, i32* null)
  %262 = load i64, i64* @AE_ERR, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %256
  %265 = call i32 @serverPanic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %256, %253
  %267 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 23), align 8
  %268 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 15), align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 0
  %270 = load i64, i64* %269, align 8
  %271 = load i32, i32* @AE_READABLE, align 4
  %272 = load i32, i32* @moduleBlockedClientPipeReadable, align 4
  %273 = call i64 @aeCreateFileEvent(i32* %267, i64 %270, i32 %271, i32 %272, i32* null)
  %274 = load i64, i64* @AE_ERR, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %266
  %277 = call i32 @serverPanic(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.8, i64 0, i64 0))
  br label %278

278:                                              ; preds = %276, %266
  %279 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 16), align 8
  %280 = load i64, i64* @AOF_ON, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %299

282:                                              ; preds = %278
  %283 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 22), align 4
  %284 = load i32, i32* @O_WRONLY, align 4
  %285 = load i32, i32* @O_APPEND, align 4
  %286 = or i32 %284, %285
  %287 = load i32, i32* @O_CREAT, align 4
  %288 = or i32 %286, %287
  %289 = call i32 @open(i32 %283, i32 %288, i32 420)
  store i32 %289, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 17), align 8
  %290 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 17), align 8
  %291 = icmp eq i32 %290, -1
  br i1 %291, label %292, label %298

292:                                              ; preds = %282
  %293 = load i32, i32* @LL_WARNING, align 4
  %294 = load i32, i32* @errno, align 4
  %295 = call i32 @strerror(i32 %294)
  %296 = call i32 (i32, i8*, ...) @serverLog(i32 %293, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %295)
  %297 = call i32 @exit(i32 1) #3
  unreachable

298:                                              ; preds = %282
  br label %299

299:                                              ; preds = %298, %278
  %300 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 18), align 4
  %301 = icmp eq i32 %300, 32
  br i1 %301, label %302, label %309

302:                                              ; preds = %299
  %303 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 19), align 8
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %302
  %306 = load i32, i32* @LL_WARNING, align 4
  %307 = call i32 (i32, i8*, ...) @serverLog(i32 %306, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.10, i64 0, i64 0))
  store i64 3221225472, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 19), align 8
  %308 = load i32, i32* @MAXMEMORY_NO_EVICTION, align 4
  store i32 %308, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 21), align 8
  br label %309

309:                                              ; preds = %305, %302, %299
  %310 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 20), align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %309
  %313 = call i32 (...) @clusterInit()
  br label %314

314:                                              ; preds = %312, %309
  %315 = call i32 (...) @replicationScriptCacheInit()
  %316 = call i32 @scriptingInit(i32 1)
  %317 = call i32 (...) @slowlogInit()
  %318 = call i32 (...) @latencyMonitorInit()
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @setupSignalHandlers(...) #1

declare dso_local i32 @openlog(i32, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i8* @listCreate(...) #1

declare dso_local i32 @raxNew(...) #1

declare dso_local i32 @zmalloc_get_memory_size(...) #1

declare dso_local i64 @tlsConfigure(i32*) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @createSharedObjects(...) #1

declare dso_local i32 @adjustOpenFilesLimit(...) #1

declare dso_local i32* @aeCreateEventLoop(i64) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.TYPE_7__* @zmalloc(i32) #1

declare dso_local i64 @listenToPort(i64, i64*, i32*) #1

declare dso_local i32 @unlink(i32*) #1

declare dso_local i64 @anetUnixServer(i32, i32*, i32, i32) #1

declare dso_local i32 @anetNonBlock(i32*, i64) #1

declare dso_local i8* @dictCreate(i32*, i32*) #1

declare dso_local i32 @evictionPoolAlloc(...) #1

declare dso_local i32 @listSetFreeMethod(i8*, i32) #1

declare dso_local i32 @listSetMatchMethod(i8*, i32) #1

declare dso_local i32 @aofRewriteBufferReset(...) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i8* @time(i32*) #1

declare dso_local i32 @resetServerStats(...) #1

declare dso_local i64 @aeCreateTimeEvent(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i64 @aeCreateFileEvent(i32*, i64, i32, i32, i32*) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @clusterInit(...) #1

declare dso_local i32 @replicationScriptCacheInit(...) #1

declare dso_local i32 @scriptingInit(i32) #1

declare dso_local i32 @slowlogInit(...) #1

declare dso_local i32 @latencyMonitorInit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

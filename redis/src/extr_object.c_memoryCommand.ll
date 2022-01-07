; ModuleID = '/home/carl/AnghaBench/redis/src/extr_object.c_memoryCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_object.c_memoryCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i64, i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_26__**, %struct.TYPE_20__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.redisMemOverhead = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"DOCTOR - Return memory problems reports.\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"MALLOC-STATS -- Return internal statistics report from the memory allocator.\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"PURGE -- Attempt to purge dirty pages for reclamation by the allocator.\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"STATS -- Return information about the memory usage of the server.\00", align 1
@.str.5 = private unnamed_addr constant [145 x i8] c"USAGE <key> [SAMPLES <count>] -- Return memory in bytes used by <key> and its value. Nested values are sampled up to <count> times (default: 5).\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@OBJ_COMPUTE_SIZE_DEF_SAMPLES = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"samples\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@LLONG_MAX = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"peak.allocated\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"total.allocated\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"startup.allocated\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"replication.backlog\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"clients.slaves\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"clients.normal\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"aof.buffer\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"lua.caches\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"db.%zd\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"overhead.hashtable.main\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"overhead.hashtable.expires\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"overhead.total\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"keys.count\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"keys.bytes-per-key\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"dataset.bytes\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"dataset.percentage\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"peak.percentage\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"allocator.allocated\00", align 1
@server = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@.str.27 = private unnamed_addr constant [17 x i8] c"allocator.active\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"allocator.resident\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"allocator-fragmentation.ratio\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"allocator-fragmentation.bytes\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"allocator-rss.ratio\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"allocator-rss.bytes\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"rss-overhead.ratio\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"rss-overhead.bytes\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"fragmentation\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"fragmentation.bytes\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"malloc-stats\00", align 1
@.str.38 = private unnamed_addr constant [46 x i8] c"Stats not supported for the current allocator\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"doctor\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"purge\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"Error purging dirty pages\00", align 1
@.str.43 = private unnamed_addr constant [74 x i8] c"Unknown subcommand or wrong number of arguments for '%s'. Try MEMORY HELP\00", align 1
@inputCatSds = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memoryCommand(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca [6 x i8*], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.redisMemOverhead*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %14, i64 1
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @strcasecmp(i64 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = bitcast [6 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 48, i1 false)
  %28 = bitcast i8* %27 to [6 x i8*]*
  %29 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i8** %29, align 16
  %30 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 1
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i32 0, i32 0), i8** %30, align 8
  %31 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 2
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i32 0, i32 0), i8** %31, align 16
  %32 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 3
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i32 0, i32 0), i8** %32, align 8
  %33 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 4
  store i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.5, i32 0, i32 0), i8** %33, align 16
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %35 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 0
  %36 = call i32 @addReplyHelp(%struct.TYPE_23__* %34, i8** %35)
  br label %475

37:                                               ; preds = %21, %1
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %40, i64 1
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @strcasecmp(i64 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %149, label %47

47:                                               ; preds = %37
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 3
  br i1 %51, label %52, label %149

52:                                               ; preds = %47
  %53 = load i64, i64* @OBJ_COMPUTE_SIZE_DEF_SAMPLES, align 8
  store i64 %53, i64* %5, align 8
  store i32 3, i32* %6, align 4
  br label %54

54:                                               ; preds = %113, %52
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %116

60:                                               ; preds = %54
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %63, i64 %65
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @strcasecmp(i64 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %108, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %72
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %83, i64 %86
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %87, align 8
  %89 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_23__* %80, %struct.TYPE_26__* %88, i64* %5, i32* null)
  %90 = load i64, i64* @C_ERR, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %475

93:                                               ; preds = %79
  %94 = load i64, i64* %5, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @shared, i32 0, i32 1), align 4
  %99 = call i32 @addReply(%struct.TYPE_23__* %97, i32 %98)
  br label %475

100:                                              ; preds = %93
  %101 = load i64, i64* %5, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i64, i64* @LLONG_MAX, align 8
  store i64 %104, i64* %5, align 8
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %112

108:                                              ; preds = %72, %60
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @shared, i32 0, i32 1), align 4
  %111 = call i32 @addReply(%struct.TYPE_23__* %109, i32 %110)
  br label %475

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %54

116:                                              ; preds = %54
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %124, i64 2
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32* @dictFind(i32 %121, i64 %128)
  store i32* %129, i32** %4, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %116
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %133 = call i32 @addReplyNull(%struct.TYPE_23__* %132)
  br label %475

134:                                              ; preds = %116
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @dictGetVal(i32* %135)
  %137 = load i64, i64* %5, align 8
  %138 = call i64 @objectComputeSize(i32 %136, i64 %137)
  store i64 %138, i64* %7, align 8
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 @dictGetKey(i32* %139)
  %141 = call i64 @sdsAllocSize(i32 %140)
  %142 = load i64, i64* %7, align 8
  %143 = add i64 %142, %141
  store i64 %143, i64* %7, align 8
  %144 = load i64, i64* %7, align 8
  %145 = add i64 %144, 4
  store i64 %145, i64* %7, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @addReplyLongLong(%struct.TYPE_23__* %146, i64 %147)
  br label %474

149:                                              ; preds = %47, %37
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %152, i64 1
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @strcasecmp(i64 %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %391, label %159

159:                                              ; preds = %149
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %164, label %391

164:                                              ; preds = %159
  %165 = call %struct.redisMemOverhead* (...) @getMemoryOverheadData()
  store %struct.redisMemOverhead* %165, %struct.redisMemOverhead** %8, align 8
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %167 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %168 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 25, %169
  %171 = call i32 @addReplyMapLen(%struct.TYPE_23__* %166, i32 %170)
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %173 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %172, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %175 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %176 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @addReplyLongLong(%struct.TYPE_23__* %174, i64 %177)
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %180 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %179, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %182 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %183 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @addReplyLongLong(%struct.TYPE_23__* %181, i64 %184)
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %187 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %186, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %189 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %190 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @addReplyLongLong(%struct.TYPE_23__* %188, i64 %191)
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %194 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %193, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %196 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %197 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @addReplyLongLong(%struct.TYPE_23__* %195, i64 %198)
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %201 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %203 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %204 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %203, i32 0, i32 5
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @addReplyLongLong(%struct.TYPE_23__* %202, i64 %205)
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %208 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %210 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %211 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %210, i32 0, i32 6
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @addReplyLongLong(%struct.TYPE_23__* %209, i64 %212)
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %215 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %214, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %217 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %218 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %217, i32 0, i32 7
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @addReplyLongLong(%struct.TYPE_23__* %216, i64 %219)
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %222 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %221, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %224 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %225 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %224, i32 0, i32 8
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @addReplyLongLong(%struct.TYPE_23__* %223, i64 %226)
  store i64 0, i64* %9, align 8
  br label %228

228:                                              ; preds = %272, %164
  %229 = load i64, i64* %9, align 8
  %230 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %231 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = icmp ult i64 %229, %233
  br i1 %234, label %235, label %275

235:                                              ; preds = %228
  %236 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %237 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %238 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %237, i32 0, i32 23
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %238, align 8
  %240 = load i64, i64* %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @snprintf(i8* %236, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %243)
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %246 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %247 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %245, i8* %246)
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %249 = call i32 @addReplyMapLen(%struct.TYPE_23__* %248, i32 2)
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %251 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %250, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %253 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %254 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %253, i32 0, i32 23
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %254, align 8
  %256 = load i64, i64* %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @addReplyLongLong(%struct.TYPE_23__* %252, i64 %259)
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %262 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %261, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %264 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %265 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %264, i32 0, i32 23
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %265, align 8
  %267 = load i64, i64* %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @addReplyLongLong(%struct.TYPE_23__* %263, i64 %270)
  br label %272

272:                                              ; preds = %235
  %273 = load i64, i64* %9, align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* %9, align 8
  br label %228

275:                                              ; preds = %228
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %277 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %276, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %279 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %280 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %279, i32 0, i32 9
  %281 = load i64, i64* %280, align 8
  %282 = call i32 @addReplyLongLong(%struct.TYPE_23__* %278, i64 %281)
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %284 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %283, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %286 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %287 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %286, i32 0, i32 10
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @addReplyLongLong(%struct.TYPE_23__* %285, i64 %288)
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %291 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %290, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %293 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %294 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %293, i32 0, i32 11
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @addReplyLongLong(%struct.TYPE_23__* %292, i64 %295)
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %298 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %297, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %300 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %301 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %300, i32 0, i32 12
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @addReplyLongLong(%struct.TYPE_23__* %299, i64 %302)
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %305 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %304, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %306 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %307 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %308 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %307, i32 0, i32 22
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @addReplyDouble(%struct.TYPE_23__* %306, i32 %309)
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %312 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %311, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  %313 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %314 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %315 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %314, i32 0, i32 21
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @addReplyDouble(%struct.TYPE_23__* %313, i32 %316)
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %319 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %318, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %321 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0, i32 0), align 8
  %322 = call i32 @addReplyLongLong(%struct.TYPE_23__* %320, i64 %321)
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %324 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %323, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  %325 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %326 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0, i32 1), align 8
  %327 = call i32 @addReplyLongLong(%struct.TYPE_23__* %325, i64 %326)
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %329 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %328, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %331 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0, i32 2), align 8
  %332 = call i32 @addReplyLongLong(%struct.TYPE_23__* %330, i64 %331)
  %333 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %334 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %333, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0))
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %336 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %337 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %336, i32 0, i32 20
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @addReplyDouble(%struct.TYPE_23__* %335, i32 %338)
  %340 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %341 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %340, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0))
  %342 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %343 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %344 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %343, i32 0, i32 13
  %345 = load i64, i64* %344, align 8
  %346 = call i32 @addReplyLongLong(%struct.TYPE_23__* %342, i64 %345)
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %348 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %347, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0))
  %349 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %350 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %351 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %350, i32 0, i32 19
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @addReplyDouble(%struct.TYPE_23__* %349, i32 %352)
  %354 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %355 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %354, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0))
  %356 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %357 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %358 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %357, i32 0, i32 14
  %359 = load i64, i64* %358, align 8
  %360 = call i32 @addReplyLongLong(%struct.TYPE_23__* %356, i64 %359)
  %361 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %362 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %361, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0))
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %364 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %365 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %364, i32 0, i32 18
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @addReplyDouble(%struct.TYPE_23__* %363, i32 %366)
  %368 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %369 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %368, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0))
  %370 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %371 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %372 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %371, i32 0, i32 15
  %373 = load i64, i64* %372, align 8
  %374 = call i32 @addReplyLongLong(%struct.TYPE_23__* %370, i64 %373)
  %375 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %376 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %375, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0))
  %377 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %378 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %379 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %378, i32 0, i32 17
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @addReplyDouble(%struct.TYPE_23__* %377, i32 %380)
  %382 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %383 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %382, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0))
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %385 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %386 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %385, i32 0, i32 16
  %387 = load i64, i64* %386, align 8
  %388 = call i32 @addReplyLongLong(%struct.TYPE_23__* %384, i64 %387)
  %389 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %8, align 8
  %390 = call i32 @freeMemoryOverheadData(%struct.redisMemOverhead* %389)
  br label %473

391:                                              ; preds = %159, %149
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %394, i64 1
  %396 = load %struct.TYPE_26__*, %struct.TYPE_26__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = call i32 @strcasecmp(i64 %398, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0))
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %409, label %401

401:                                              ; preds = %391
  %402 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %403 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = icmp eq i32 %404, 2
  br i1 %405, label %406, label %409

406:                                              ; preds = %401
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %408 = call i32 @addReplyBulkCString(%struct.TYPE_23__* %407, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.38, i64 0, i64 0))
  br label %472

409:                                              ; preds = %401, %391
  %410 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %411 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %410, i32 0, i32 1
  %412 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %412, i64 1
  %414 = load %struct.TYPE_26__*, %struct.TYPE_26__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = call i32 @strcasecmp(i64 %416, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0))
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %433, label %419

419:                                              ; preds = %409
  %420 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %421 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = icmp eq i32 %422, 2
  br i1 %423, label %424, label %433

424:                                              ; preds = %419
  %425 = call i32 (...) @getMemoryDoctorReport()
  store i32 %425, i32* %11, align 4
  %426 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %427 = load i32, i32* %11, align 4
  %428 = load i32, i32* %11, align 4
  %429 = call i32 @sdslen(i32 %428)
  %430 = call i32 @addReplyVerbatim(%struct.TYPE_23__* %426, i32 %427, i32 %429, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0))
  %431 = load i32, i32* %11, align 4
  %432 = call i32 @sdsfree(i32 %431)
  br label %471

433:                                              ; preds = %419, %409
  %434 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %435 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %434, i32 0, i32 1
  %436 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %436, i64 1
  %438 = load %struct.TYPE_26__*, %struct.TYPE_26__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = call i32 @strcasecmp(i64 %440, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0))
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %459, label %443

443:                                              ; preds = %433
  %444 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %445 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = icmp eq i32 %446, 2
  br i1 %447, label %448, label %459

448:                                              ; preds = %443
  %449 = call i64 (...) @jemalloc_purge()
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %451, label %455

451:                                              ; preds = %448
  %452 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %453 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @shared, i32 0, i32 0), align 4
  %454 = call i32 @addReply(%struct.TYPE_23__* %452, i32 %453)
  br label %458

455:                                              ; preds = %448
  %456 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %457 = call i32 @addReplyError(%struct.TYPE_23__* %456, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0))
  br label %458

458:                                              ; preds = %455, %451
  br label %470

459:                                              ; preds = %443, %433
  %460 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %461 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %462 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %461, i32 0, i32 1
  %463 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %463, i64 1
  %465 = load %struct.TYPE_26__*, %struct.TYPE_26__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %465, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = inttoptr i64 %467 to i8*
  %469 = call i32 @addReplyErrorFormat(%struct.TYPE_23__* %460, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.43, i64 0, i64 0), i8* %468)
  br label %470

470:                                              ; preds = %459, %458
  br label %471

471:                                              ; preds = %470, %424
  br label %472

472:                                              ; preds = %471, %406
  br label %473

473:                                              ; preds = %472, %275
  br label %474

474:                                              ; preds = %473, %134
  br label %475

475:                                              ; preds = %92, %96, %108, %131, %474, %26
  ret void
}

declare dso_local i32 @strcasecmp(i64, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @addReplyHelp(%struct.TYPE_23__*, i8**) #1

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_23__*, %struct.TYPE_26__*, i64*, i32*) #1

declare dso_local i32 @addReply(%struct.TYPE_23__*, i32) #1

declare dso_local i32* @dictFind(i32, i64) #1

declare dso_local i32 @addReplyNull(%struct.TYPE_23__*) #1

declare dso_local i64 @objectComputeSize(i32, i64) #1

declare dso_local i32 @dictGetVal(i32*) #1

declare dso_local i64 @sdsAllocSize(i32) #1

declare dso_local i32 @dictGetKey(i32*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_23__*, i64) #1

declare dso_local %struct.redisMemOverhead* @getMemoryOverheadData(...) #1

declare dso_local i32 @addReplyMapLen(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @addReplyBulkCString(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @addReplyDouble(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @freeMemoryOverheadData(%struct.redisMemOverhead*) #1

declare dso_local i32 @getMemoryDoctorReport(...) #1

declare dso_local i32 @addReplyVerbatim(%struct.TYPE_23__*, i32, i32, i8*) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i64 @jemalloc_purge(...) #1

declare dso_local i32 @addReplyError(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_23__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

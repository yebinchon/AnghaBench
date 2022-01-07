; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_rewriteConfigSentinelOption.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_rewriteConfigSentinelOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i32 }
%struct.rewriteConfigState = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i32, i32, i32*, %struct.TYPE_9__*, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"sentinel myid %s\00", align 1
@sentinel = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"sentinel\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"sentinel deny-scripts-reconfig %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@SENTINEL_DEFAULT_DENY_SCRIPTS_RECONFIG = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"sentinel monitor %s %s %d %d\00", align 1
@SENTINEL_DEFAULT_DOWN_AFTER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"sentinel down-after-milliseconds %s %ld\00", align 1
@SENTINEL_DEFAULT_FAILOVER_TIMEOUT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"sentinel failover-timeout %s %ld\00", align 1
@SENTINEL_DEFAULT_PARALLEL_SYNCS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"sentinel parallel-syncs %s %d\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"sentinel notification-script %s %s\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"sentinel client-reconfig-script %s %s\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"sentinel auth-pass %s %s\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"sentinel config-epoch %s %llu\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"sentinel leader-epoch %s %llu\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"sentinel known-replica %s %s %d\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"sentinel known-sentinel %s %s %d %s\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"sentinel rename-command %s %s %s\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"sentinel current-epoch %llu\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"sentinel announce-ip \00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"sentinel announce-port %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewriteConfigSentinelOption(%struct.rewriteConfigState* %0) #0 {
  %2 = alloca %struct.rewriteConfigState*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.rewriteConfigState* %0, %struct.rewriteConfigState** %2, align 8
  %13 = call i32 (...) @sdsempty()
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sentinel, i32 0, i32 0), align 8
  %15 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %14)
  store i8* %15, i8** %6, align 8
  %16 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 1)
  %19 = call i32 (...) @sdsempty()
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sentinel, i32 0, i32 1), align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %24 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  store i8* %24, i8** %6, align 8
  %25 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sentinel, i32 0, i32 1), align 8
  %28 = load i64, i64* @SENTINEL_DEFAULT_DENY_SCRIPTS_RECONFIG, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sentinel, i32 0, i32 5), align 8
  %33 = call i32* @dictGetIterator(i32 %32)
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %294, %1
  %35 = load i32*, i32** %3, align 8
  %36 = call i32* @dictNext(i32* %35)
  store i32* %36, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %297

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = call i8* @dictGetVal(i32* %39)
  %41 = bitcast i8* %40 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %7, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = call %struct.TYPE_9__* @sentinelGetCurrentMasterAddress(%struct.TYPE_8__* %42)
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %9, align 8
  %44 = call i32 (...) @sdsempty()
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 14
  %56 = load i32, i32* %55, align 4
  %57 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %47, i32 %50, i32 %53, i32 %56)
  store i8* %57, i8** %6, align 8
  %58 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %59, i32 1)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SENTINEL_DEFAULT_DOWN_AFTER, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %38
  %67 = call i32 (...) @sdsempty()
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %70, i64 %73)
  store i8* %74, i8** %6, align 8
  %75 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %76, i32 1)
  br label %78

78:                                               ; preds = %66, %38
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SENTINEL_DEFAULT_FAILOVER_TIMEOUT, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = call i32 (...) @sdsempty()
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %88, i64 %91)
  store i8* %92, i8** %6, align 8
  %93 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %94, i32 1)
  br label %96

96:                                               ; preds = %84, %78
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @SENTINEL_DEFAULT_PARALLEL_SYNCS, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = call i32 (...) @sdsempty()
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 13
  %109 = load i32, i32* %108, align 8
  %110 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %106, i32 %109)
  store i8* %110, i8** %6, align 8
  %111 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %112, i32 1)
  br label %114

114:                                              ; preds = %102, %96
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %114
  %120 = call i32 (...) @sdsempty()
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %120, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %123, i64 %126)
  store i8* %127, i8** %6, align 8
  %128 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %129, i32 1)
  br label %131

131:                                              ; preds = %119, %114
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %131
  %137 = call i32 (...) @sdsempty()
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %137, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %140, i64 %143)
  store i8* %144, i8** %6, align 8
  %145 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %146, i32 1)
  br label %148

148:                                              ; preds = %136, %131
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %148
  %154 = call i32 (...) @sdsempty()
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %154, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %157, i64 %160)
  store i8* %161, i8** %6, align 8
  %162 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %163, i32 1)
  br label %165

165:                                              ; preds = %153, %148
  %166 = call i32 (...) @sdsempty()
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 12
  %172 = load i64, i64* %171, align 8
  %173 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %166, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %169, i64 %172)
  store i8* %173, i8** %6, align 8
  %174 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %175 = load i8*, i8** %6, align 8
  %176 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %174, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %175, i32 1)
  %177 = call i32 (...) @sdsempty()
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 11
  %183 = load i64, i64* %182, align 8
  %184 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %177, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %180, i64 %183)
  store i8* %184, i8** %6, align 8
  %185 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %186 = load i8*, i8** %6, align 8
  %187 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %186, i32 1)
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 10
  %190 = load i32, i32* %189, align 4
  %191 = call i32* @dictGetIterator(i32 %190)
  store i32* %191, i32** %4, align 8
  br label %192

192:                                              ; preds = %211, %165
  %193 = load i32*, i32** %4, align 8
  %194 = call i32* @dictNext(i32* %193)
  store i32* %194, i32** %5, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %226

196:                                              ; preds = %192
  %197 = load i32*, i32** %5, align 8
  %198 = call i8* @dictGetVal(i32* %197)
  %199 = bitcast i8* %198 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %199, %struct.TYPE_8__** %8, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  store %struct.TYPE_9__* %202, %struct.TYPE_9__** %10, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %205 = call i64 @sentinelAddrIsEqual(%struct.TYPE_9__* %203, %struct.TYPE_9__* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %196
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  store %struct.TYPE_9__* %210, %struct.TYPE_9__** %10, align 8
  br label %211

211:                                              ; preds = %207, %196
  %212 = call i32 (...) @sdsempty()
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %212, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %215, i32 %218, i32 %221)
  store i8* %222, i8** %6, align 8
  %223 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %224 = load i8*, i8** %6, align 8
  %225 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %224, i32 1)
  br label %192

226:                                              ; preds = %192
  %227 = load i32*, i32** %4, align 8
  %228 = call i32 @dictReleaseIterator(i32* %227)
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 9
  %231 = load i32, i32* %230, align 8
  %232 = call i32* @dictGetIterator(i32 %231)
  store i32* %232, i32** %4, align 8
  br label %233

233:                                              ; preds = %246, %245, %226
  %234 = load i32*, i32** %4, align 8
  %235 = call i32* @dictNext(i32* %234)
  store i32* %235, i32** %5, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %268

237:                                              ; preds = %233
  %238 = load i32*, i32** %5, align 8
  %239 = call i8* @dictGetVal(i32* %238)
  %240 = bitcast i8* %239 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %240, %struct.TYPE_8__** %8, align 8
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 7
  %243 = load i32*, i32** %242, align 8
  %244 = icmp eq i32* %243, null
  br i1 %244, label %245, label %246

245:                                              ; preds = %237
  br label %233

246:                                              ; preds = %237
  %247 = call i32 (...) @sdsempty()
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 8
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 8
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 7
  %263 = load i32*, i32** %262, align 8
  %264 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %247, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 %250, i32 %255, i32 %260, i32* %263)
  store i8* %264, i8** %6, align 8
  %265 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %266 = load i8*, i8** %6, align 8
  %267 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %265, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %266, i32 1)
  br label %233

268:                                              ; preds = %233
  %269 = load i32*, i32** %4, align 8
  %270 = call i32 @dictReleaseIterator(i32* %269)
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 4
  %274 = call i32* @dictGetIterator(i32 %273)
  store i32* %274, i32** %4, align 8
  br label %275

275:                                              ; preds = %279, %268
  %276 = load i32*, i32** %4, align 8
  %277 = call i32* @dictNext(i32* %276)
  store i32* %277, i32** %5, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %294

279:                                              ; preds = %275
  %280 = load i32*, i32** %5, align 8
  %281 = call i8* @dictGetKey(i32* %280)
  store i8* %281, i8** %11, align 8
  %282 = load i32*, i32** %5, align 8
  %283 = call i8* @dictGetVal(i32* %282)
  store i8* %283, i8** %12, align 8
  %284 = call i32 (...) @sdsempty()
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = load i8*, i8** %11, align 8
  %289 = load i8*, i8** %12, align 8
  %290 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %284, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 %287, i8* %288, i8* %289)
  store i8* %290, i8** %6, align 8
  %291 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %292 = load i8*, i8** %6, align 8
  %293 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %291, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %292, i32 1)
  br label %275

294:                                              ; preds = %275
  %295 = load i32*, i32** %4, align 8
  %296 = call i32 @dictReleaseIterator(i32* %295)
  br label %34

297:                                              ; preds = %34
  %298 = call i32 (...) @sdsempty()
  %299 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sentinel, i32 0, i32 4), align 8
  %300 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %298, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i64 %299)
  store i8* %300, i8** %6, align 8
  %301 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %302 = load i8*, i8** %6, align 8
  %303 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %301, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %302, i32 1)
  %304 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sentinel, i32 0, i32 3), align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %316

306:                                              ; preds = %297
  %307 = call i8* @sdsnew(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  store i8* %307, i8** %6, align 8
  %308 = load i8*, i8** %6, align 8
  %309 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sentinel, i32 0, i32 3), align 8
  %310 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sentinel, i32 0, i32 3), align 8
  %311 = call i32 @sdslen(i64 %310)
  %312 = call i8* @sdscatrepr(i8* %308, i64 %309, i32 %311)
  store i8* %312, i8** %6, align 8
  %313 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %314 = load i8*, i8** %6, align 8
  %315 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %313, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %314, i32 1)
  br label %316

316:                                              ; preds = %306, %297
  %317 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sentinel, i32 0, i32 2), align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %326

319:                                              ; preds = %316
  %320 = call i32 (...) @sdsempty()
  %321 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sentinel, i32 0, i32 2), align 8
  %322 = call i8* (i32, i8*, ...) @sdscatprintf(i32 %320, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i64 %321)
  store i8* %322, i8** %6, align 8
  %323 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %324 = load i8*, i8** %6, align 8
  %325 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %323, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %324, i32 1)
  br label %326

326:                                              ; preds = %319, %316
  %327 = load i32*, i32** %3, align 8
  %328 = call i32 @dictReleaseIterator(i32* %327)
  ret void
}

declare dso_local i8* @sdscatprintf(i32, i8*, ...) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState*, i8*, i8*, i32) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i8* @dictGetVal(i32*) #1

declare dso_local %struct.TYPE_9__* @sentinelGetCurrentMasterAddress(%struct.TYPE_8__*) #1

declare dso_local i64 @sentinelAddrIsEqual(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i8* @dictGetKey(i32*) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i8* @sdscatrepr(i8*, i64, i32) #1

declare dso_local i32 @sdslen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

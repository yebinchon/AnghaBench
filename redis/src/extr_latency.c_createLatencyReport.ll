; ModuleID = '/home/carl/AnghaBench/redis/src/extr_latency.c_createLatencyReport.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_latency.c_createLatencyReport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i32 }
%struct.latencyTimeSeries = type { i64 }
%struct.latencyStats = type { double, i64, i64, i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [288 x i8] c"I'm sorry, Dave, I can't do that. Latency monitoring is disabled in this Redis instance. You may use \22CONFIG SET latency-monitor-threshold <milliseconds>.\22 in order to enable it. If we weren't in a deep space mission I'd suggest to take a look at http://redis.io/topics/latency-monitor.\0A\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"Dave, I have observed latency spikes in this Redis instance. You don't mind talking about it, do you Dave?\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [110 x i8] c"%d. %s: %d latency spikes (average %lums, mean deviation %lums, period %.2f sec). Worst all time event %lums.\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"terrible\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"poor\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"excellent\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c" Fork rate is %.2f GB/sec (%s).\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"fast-command\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"aof-write-pending-fsync\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"aof-write-active-child\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"aof-write-alone\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"aof-fsync-always\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"aof-fstat\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"rdb-unlik-temp-file\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"aof-rewrite-diff-write\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"aof-rename\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"expire-cycle\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"eviction-del\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"eviction-cycle\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [197 x i8] c"Dave, no latency spike was observed during the lifetime of this Redis instance, not in the slightest bit. I honestly think you ought to sit down calmly, take a stress pill, and think things over.\0A\00", align 1
@.str.24 = private unnamed_addr constant [172 x i8] c"\0AWhile there are latency events logged, I'm not able to suggest any easy fix. Please use the Redis community to get some help, providing this report in your help request.\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"\0AI have a few advices for you:\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [303 x i8] c"- If you are using a virtual machine, consider upgrading it with a faster one using an hypervisior that provides less latency during fork() calls. Xen is known to have poor fork() performance. Even in the context of the same VM provider, certain kinds of instances can execute fork faster than others.\0A\00", align 1
@.str.27 = private unnamed_addr constant [262 x i8] c"- There are latency issues with potentially slow commands you are using. Try to enable the Slow Log Redis feature using the command 'CONFIG SET slowlog-log-slower-than %llu'. If the Slow log is disabled Redis is not able to log slow commands execution for you.\0A\00", align 1
@.str.28 = private unnamed_addr constant [174 x i8] c"- Your current Slow Log configuration only logs events that are slower than your configured latency monitor threshold. Please use 'CONFIG SET slowlog-log-slower-than %llu'.\0A\00", align 1
@.str.29 = private unnamed_addr constant [174 x i8] c"- Check your Slow Log to understand what are the commands you are running which are too slow to execute. Please check http://redis.io/commands/slowlog for more information.\0A\00", align 1
@.str.30 = private unnamed_addr constant [618 x i8] c"- The system is slow to execute Redis code paths not containing system calls. This usually means the system does not provide Redis CPU time to run for long periods. You should try to:\0A  1) Lower the system load.\0A  2) Use a computer / VM just for Redis if you are running other softawre in the same system.\0A  3) Check if you have a \22noisy neighbour\22 problem.\0A  4) Check with 'redis-cli --intrinsic-latency 100' what is the intrinsic latency in your system.\0A  5) Check if the problem is allocator-related by recompiling Redis with MALLOC=libc, if you are using Jemalloc. However this may create fragmentation problems.\0A\00", align 1
@.str.31 = private unnamed_addr constant [174 x i8] c"- It is strongly advised to use local disks for persistence, especially if you are using AOF. Remote disks provided by platform-as-a-service providers are known to be slow.\0A\00", align 1
@.str.32 = private unnamed_addr constant [362 x i8] c"- SSD disks are able to reduce fsync latency, and total time needed for snapshotting and AOF log rewriting (resulting in smaller memory usage and smaller final AOF rewrite buffer flushes). With extremely high write load SSD disks can be a good option. However Redis should perform reasonably with high load using normal disks. Use this advice as a last resort.\0A\00", align 1
@.str.33 = private unnamed_addr constant [331 x i8] c"- Mounting ext3/4 filesystems with data=writeback can provide a performance boost compared to data=ordered, however this mode of operation provides less guarantees, and sometimes it can happen that after a hard crash the AOF file will have an half-written command at the end and will require to be repaired before Redis restarts.\0A\00", align 1
@.str.34 = private unnamed_addr constant [156 x i8] c"- Try to lower the disk contention. This is often caused by other disk intensive processes running in the same computer (including other Redis instances).\0A\00", align 1
@.str.35 = private unnamed_addr constant [307 x i8] c"- Assuming from the point of view of data safety this is viable in your environment, you could try to enable the 'no-appendfsync-on-rewrite' option, so that fsync will not be performed while there is a child rewriting the AOF file or producing an RDB file (the moment where there is high disk contention).\0A\00", align 1
@AOF_FSYNC_ALWAYS = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [156 x i8] c"- Your fsync policy is set to 'always'. It is very hard to get good performances with such a setup, if possible try to relax the fsync policy to 'onesec'.\0A\00", align 1
@.str.37 = private unnamed_addr constant [363 x i8] c"- Latency during the AOF atomic rename operation or when the final difference is flushed to the AOF file at the end of the rewrite, sometimes is caused by very high write load, causing the AOF buffer to get very large. If possible try to send less commands to accomplish the same work, or use Lua scripts to group multiple operations into a single EVALSHA call.\0A\00", align 1
@.str.38 = private unnamed_addr constant [148 x i8] c"- In order to make the Redis keys expiring process more incremental, try to set the 'hz' configuration parameter to 100 using 'CONFIG SET hz 100'.\0A\00", align 1
@.str.39 = private unnamed_addr constant [240 x i8] c"- Deleting, expiring or evicting (because of maxmemory policy) large objects is a blocking operation. If you have very large objects that are often deleted, expired, or evicted, try to fragment those objects into multiple smaller objects.\0A\00", align 1
@.str.40 = private unnamed_addr constant [295 x i8] c"- Sudden changes to the 'maxmemory' setting via 'CONFIG SET', or allocation of large objects via sets or sorted sets intersections, STORE option of SORT, Redis Cluster large keys migrations (RESTORE command), may create sudden memory pressure forcing the server to block trying to evict keys. \0A\00", align 1
@.str.41 = private unnamed_addr constant [530 x i8] c"- I detected a non zero amount of anonymous huge pages used by your process. This creates very serious latency events in different conditions, especially when Redis is persisting on disk. To disable THP support use the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled', make sure to also add it into /etc/rc.local so that the command will be executed again after a reboot. Note that even if you have already disabled THP, you still need to restart the Redis process to get rid of the huge pages already created.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @createLatencyReport() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca %struct.latencyTimeSeries*, align 8
  %25 = alloca %struct.latencyStats, align 8
  %26 = alloca i8*, align 8
  %27 = call i32 (...) @sdsempty()
  store i32 %27, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 4
  %29 = call i64 @dictSize(i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %0
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @sdscat(i32 %35, i8* getelementptr inbounds ([288 x i8], [288 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  store i32 %37, i32* %1, align 4
  br label %356

38:                                               ; preds = %31, %0
  store i32 0, i32* %22, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 4
  %40 = call i32* @dictGetSafeIterator(i32 %39)
  store i32* %40, i32** %20, align 8
  br label %41

41:                                               ; preds = %212, %52, %38
  %42 = load i32*, i32** %20, align 8
  %43 = call i32* @dictNext(i32* %42)
  store i32* %43, i32** %21, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %215

45:                                               ; preds = %41
  %46 = load i32*, i32** %21, align 8
  %47 = call i8* @dictGetKey(i32* %46)
  store i8* %47, i8** %23, align 8
  %48 = load i32*, i32** %21, align 8
  %49 = call %struct.latencyTimeSeries* @dictGetVal(i32* %48)
  store %struct.latencyTimeSeries* %49, %struct.latencyTimeSeries** %24, align 8
  %50 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %24, align 8
  %51 = icmp eq %struct.latencyTimeSeries* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %41

53:                                               ; preds = %45
  %54 = load i32, i32* %22, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %22, align 4
  %56 = load i32, i32* %22, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @sdscat(i32 %59, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i64 0, i64 0))
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i8*, i8** %23, align 8
  %63 = call i32 @analyzeLatencyForEvent(i8* %62, %struct.latencyStats* %25)
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* %22, align 4
  %66 = sext i32 %65 to i64
  %67 = load i8*, i8** %23, align 8
  %68 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %25, i32 0, i32 0
  %69 = load double, double* %68, align 8
  %70 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %25, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %25, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %25, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sitofp i64 %75 to double
  %77 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %25, i32 0, i32 0
  %78 = load double, double* %77, align 8
  %79 = fdiv double %76, %78
  %80 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %24, align 8
  %81 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %64, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.2, i64 0, i64 0), i64 %66, i8* %67, double %69, i64 %71, i64 %73, double %79, i64 %82)
  store i32 %83, i32* %2, align 4
  %84 = load i8*, i8** %23, align 8
  %85 = call i32 @strcasecmp(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %112, label %87

87:                                               ; preds = %61
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %89 = icmp slt i32 %88, 10
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %26, align 8
  store i32 1, i32* %3, align 4
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %106

93:                                               ; preds = %87
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %95 = icmp slt i32 %94, 25
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %26, align 8
  store i32 1, i32* %3, align 4
  %97 = load i32, i32* %19, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %19, align 4
  br label %105

99:                                               ; preds = %93
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %101 = icmp slt i32 %100, 100
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %26, align 8
  br label %104

103:                                              ; preds = %99
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %26, align 8
  br label %104

104:                                              ; preds = %103, %102
  br label %105

105:                                              ; preds = %104, %96
  br label %106

106:                                              ; preds = %105, %90
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %109 = sext i32 %108 to i64
  %110 = load i8*, i8** %26, align 8
  %111 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 %109, i8* %110)
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %106, %61
  %113 = load i8*, i8** %23, align 8
  %114 = call i32 @strcasecmp(i8* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %134, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  store i32 1, i32* %4, align 4
  %120 = load i32, i32* %19, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %19, align 4
  br label %131

122:                                              ; preds = %116
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %124 = sdiv i32 %123, 1000
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  store i32 1, i32* %5, align 4
  %128 = load i32, i32* %19, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %19, align 4
  br label %130

130:                                              ; preds = %127, %122
  br label %131

131:                                              ; preds = %130, %119
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  %132 = load i32, i32* %19, align 4
  %133 = add nsw i32 %132, 2
  store i32 %133, i32* %19, align 4
  br label %134

134:                                              ; preds = %131, %112
  %135 = load i8*, i8** %23, align 8
  %136 = call i32 @strcasecmp(i8* %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  store i32 1, i32* %8, align 4
  %139 = load i32, i32* %19, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %19, align 4
  br label %141

141:                                              ; preds = %138, %134
  %142 = load i8*, i8** %23, align 8
  %143 = call i32 @strcasecmp(i8* %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  store i32 1, i32* %11, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %9, align 4
  %146 = load i32, i32* %19, align 4
  %147 = add nsw i32 %146, 4
  store i32 %147, i32* %19, align 4
  br label %148

148:                                              ; preds = %145, %141
  %149 = load i8*, i8** %23, align 8
  %150 = call i32 @strcasecmp(i8* %149, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %153, 3
  store i32 %154, i32* %19, align 4
  br label %155

155:                                              ; preds = %152, %148
  %156 = load i8*, i8** %23, align 8
  %157 = call i32 @strcasecmp(i8* %156, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  store i32 1, i32* %11, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %160 = load i32, i32* %19, align 4
  %161 = add nsw i32 %160, 3
  store i32 %161, i32* %19, align 4
  br label %162

162:                                              ; preds = %159, %155
  %163 = load i8*, i8** %23, align 8
  %164 = call i32 @strcasecmp(i8* %163, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  store i32 1, i32* %17, align 4
  %167 = load i32, i32* %19, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %19, align 4
  br label %169

169:                                              ; preds = %166, %162
  %170 = load i8*, i8** %23, align 8
  %171 = call i32 @strcasecmp(i8* %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i8*, i8** %23, align 8
  %175 = call i32 @strcasecmp(i8* %174, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173, %169
  store i32 1, i32* %7, align 4
  store i32 1, i32* %11, align 4
  %178 = load i32, i32* %19, align 4
  %179 = add nsw i32 %178, 2
  store i32 %179, i32* %19, align 4
  br label %180

180:                                              ; preds = %177, %173
  %181 = load i8*, i8** %23, align 8
  %182 = call i32 @strcasecmp(i8* %181, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i8*, i8** %23, align 8
  %186 = call i32 @strcasecmp(i8* %185, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %184, %180
  store i32 1, i32* %13, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  %189 = load i32, i32* %19, align 4
  %190 = add nsw i32 %189, 4
  store i32 %190, i32* %19, align 4
  br label %191

191:                                              ; preds = %188, %184
  %192 = load i8*, i8** %23, align 8
  %193 = call i32 @strcasecmp(i8* %192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %196 = load i32, i32* %19, align 4
  %197 = add nsw i32 %196, 2
  store i32 %197, i32* %19, align 4
  br label %198

198:                                              ; preds = %195, %191
  %199 = load i8*, i8** %23, align 8
  %200 = call i32 @strcasecmp(i8* %199, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  store i32 1, i32* %15, align 4
  %203 = load i32, i32* %19, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %19, align 4
  br label %205

205:                                              ; preds = %202, %198
  %206 = load i8*, i8** %23, align 8
  %207 = call i32 @strcasecmp(i8* %206, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %205
  store i32 1, i32* %16, align 4
  %210 = load i32, i32* %19, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %19, align 4
  br label %212

212:                                              ; preds = %209, %205
  %213 = load i32, i32* %2, align 4
  %214 = call i32 @sdscatlen(i32 %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 1)
  store i32 %214, i32* %2, align 4
  br label %41

215:                                              ; preds = %41
  %216 = load i32*, i32** %20, align 8
  %217 = call i32 @dictReleaseIterator(i32* %216)
  %218 = call i64 (...) @THPGetAnonHugePagesSize()
  %219 = icmp sgt i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %215
  store i32 1, i32* %18, align 4
  %221 = load i32, i32* %19, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %19, align 4
  br label %223

223:                                              ; preds = %220, %215
  %224 = load i32, i32* %22, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = load i32, i32* %19, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32, i32* %2, align 4
  %231 = call i32 @sdscat(i32 %230, i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.23, i64 0, i64 0))
  store i32 %231, i32* %2, align 4
  br label %354

232:                                              ; preds = %226, %223
  %233 = load i32, i32* %22, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load i32, i32* %19, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i32, i32* %2, align 4
  %240 = call i32 @sdscat(i32 %239, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.24, i64 0, i64 0))
  store i32 %240, i32* %2, align 4
  br label %353

241:                                              ; preds = %235, %232
  %242 = load i32, i32* %2, align 4
  %243 = call i32 @sdscat(i32 %242, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0))
  store i32 %243, i32* %2, align 4
  %244 = load i32, i32* %3, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = load i32, i32* %2, align 4
  %248 = call i32 @sdscat(i32 %247, i8* getelementptr inbounds ([303 x i8], [303 x i8]* @.str.26, i64 0, i64 0))
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %246, %241
  %250 = load i32, i32* %4, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = load i32, i32* %2, align 4
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %255 = sext i32 %254 to i64
  %256 = mul i64 %255, 1000
  %257 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %253, i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.27, i64 0, i64 0), i64 %256)
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %252, %249
  %259 = load i32, i32* %5, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %258
  %262 = load i32, i32* %2, align 4
  %263 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %264 = sext i32 %263 to i64
  %265 = mul i64 %264, 1000
  %266 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %262, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.28, i64 0, i64 0), i64 %265)
  store i32 %266, i32* %2, align 4
  br label %267

267:                                              ; preds = %261, %258
  %268 = load i32, i32* %6, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load i32, i32* %2, align 4
  %272 = call i32 @sdscat(i32 %271, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.29, i64 0, i64 0))
  store i32 %272, i32* %2, align 4
  br label %273

273:                                              ; preds = %270, %267
  %274 = load i32, i32* %8, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i32, i32* %2, align 4
  %278 = call i32 @sdscat(i32 %277, i8* getelementptr inbounds ([618 x i8], [618 x i8]* @.str.30, i64 0, i64 0))
  store i32 %278, i32* %2, align 4
  br label %279

279:                                              ; preds = %276, %273
  %280 = load i32, i32* %11, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i32, i32* %2, align 4
  %284 = call i32 @sdscat(i32 %283, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.31, i64 0, i64 0))
  store i32 %284, i32* %2, align 4
  br label %285

285:                                              ; preds = %282, %279
  %286 = load i32, i32* %12, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load i32, i32* %2, align 4
  %290 = call i32 @sdscat(i32 %289, i8* getelementptr inbounds ([362 x i8], [362 x i8]* @.str.32, i64 0, i64 0))
  store i32 %290, i32* %2, align 4
  br label %291

291:                                              ; preds = %288, %285
  %292 = load i32, i32* %9, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i32, i32* %2, align 4
  %296 = call i32 @sdscat(i32 %295, i8* getelementptr inbounds ([331 x i8], [331 x i8]* @.str.33, i64 0, i64 0))
  store i32 %296, i32* %2, align 4
  br label %297

297:                                              ; preds = %294, %291
  %298 = load i32, i32* %7, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load i32, i32* %2, align 4
  %302 = call i32 @sdscat(i32 %301, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.34, i64 0, i64 0))
  store i32 %302, i32* %2, align 4
  br label %303

303:                                              ; preds = %300, %297
  %304 = load i32, i32* %10, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load i32, i32* %2, align 4
  %308 = call i32 @sdscat(i32 %307, i8* getelementptr inbounds ([307 x i8], [307 x i8]* @.str.35, i64 0, i64 0))
  store i32 %308, i32* %2, align 4
  br label %309

309:                                              ; preds = %306, %303
  %310 = load i32, i32* %17, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %319

312:                                              ; preds = %309
  %313 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %314 = load i64, i64* @AOF_FSYNC_ALWAYS, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %312
  %317 = load i32, i32* %2, align 4
  %318 = call i32 @sdscat(i32 %317, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.36, i64 0, i64 0))
  store i32 %318, i32* %2, align 4
  br label %319

319:                                              ; preds = %316, %312, %309
  %320 = load i32, i32* %13, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %319
  %323 = load i32, i32* %2, align 4
  %324 = call i32 @sdscat(i32 %323, i8* getelementptr inbounds ([363 x i8], [363 x i8]* @.str.37, i64 0, i64 0))
  store i32 %324, i32* %2, align 4
  br label %325

325:                                              ; preds = %322, %319
  %326 = load i32, i32* %14, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  %329 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %330 = icmp slt i32 %329, 100
  br i1 %330, label %331, label %334

331:                                              ; preds = %328
  %332 = load i32, i32* %2, align 4
  %333 = call i32 @sdscat(i32 %332, i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.38, i64 0, i64 0))
  store i32 %333, i32* %2, align 4
  br label %334

334:                                              ; preds = %331, %328, %325
  %335 = load i32, i32* %15, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load i32, i32* %2, align 4
  %339 = call i32 @sdscat(i32 %338, i8* getelementptr inbounds ([240 x i8], [240 x i8]* @.str.39, i64 0, i64 0))
  store i32 %339, i32* %2, align 4
  br label %340

340:                                              ; preds = %337, %334
  %341 = load i32, i32* %16, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load i32, i32* %2, align 4
  %345 = call i32 @sdscat(i32 %344, i8* getelementptr inbounds ([295 x i8], [295 x i8]* @.str.40, i64 0, i64 0))
  store i32 %345, i32* %2, align 4
  br label %346

346:                                              ; preds = %343, %340
  %347 = load i32, i32* %18, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load i32, i32* %2, align 4
  %351 = call i32 @sdscat(i32 %350, i8* getelementptr inbounds ([530 x i8], [530 x i8]* @.str.41, i64 0, i64 0))
  store i32 %351, i32* %2, align 4
  br label %352

352:                                              ; preds = %349, %346
  br label %353

353:                                              ; preds = %352, %238
  br label %354

354:                                              ; preds = %353, %229
  %355 = load i32, i32* %2, align 4
  store i32 %355, i32* %1, align 4
  br label %356

356:                                              ; preds = %354, %34
  %357 = load i32, i32* %1, align 4
  ret i32 %357
}

declare dso_local i32 @sdsempty(...) #1

declare dso_local i64 @dictSize(i32) #1

declare dso_local i32 @sdscat(i32, i8*) #1

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i8* @dictGetKey(i32*) #1

declare dso_local %struct.latencyTimeSeries* @dictGetVal(i32*) #1

declare dso_local i32 @analyzeLatencyForEvent(i8*, %struct.latencyStats*) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i64 @THPGetAnonHugePagesSize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

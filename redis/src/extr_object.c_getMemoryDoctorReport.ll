; ModuleID = '/home/carl/AnghaBench/redis/src/extr_object.c_getMemoryDoctorReport.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_object.c_getMemoryDoctorReport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.redisMemOverhead = type { i32, double, i32, double, i32, double, i32, double, i32, i64, i64, i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [106 x i8] c"Hi Sam, I can't find any memory issue in your instance. I can only account for what occurs on this base.\0A\00", align 1
@.str.1 = private unnamed_addr constant [269 x i8] c"Hi Sam, this instance is empty or is using very little memory, my issues detector can't be used in these conditions. Please, leave for your mission on Earth and fill it with some data. The new Sam and I will be back to our programming as soon as I finished rebooting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"Sam, I detected a few issues in this Redis instance memory implants:\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [641 x i8] c" * Peak memory: In the past this instance used more than 150% the memory that is currently using. The allocator is normally not able to release memory after a peak, so you can expect to see a big fragmentation ratio, however this is actually harmless and is only due to the memory peak, and if the Redis instance Resident Set Size (RSS) is currently bigger than expected, the memory will be used as soon as you fill the Redis instance with more data. If the memory peak was only occasional and you want to try to reclaim memory, please try the MEMORY PURGE command, otherwise the only other option is to shutdown and restart the instance.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [627 x i8] c" * High total RSS: This instance has a memory fragmentation and RSS overhead greater than 1.4 (this means that the Resident Set Size of the Redis process is much larger than the sum of the logical allocations Redis performed). This problem is usually due either to a large peak memory (check if there is a peak memory entry above in the report) or may result from a workload that causes the allocator to fragment memory a lot. If the problem is a large peak memory, then there is no issue. Otherwise, make sure you are using the Jemalloc allocator and not the default libc malloc. Note: The currently used allocator is \22%s\22.\0A\0A\00", align 1
@ZMALLOC_LIB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [358 x i8] c" * High allocator fragmentation: This instance has an allocator external fragmentation greater than 1.1. This problem is usually due either to a large peak memory (check if there is a peak memory entry above in the report) or may result from a workload that causes the allocator to fragment memory a lot. You can try enabling 'activedefrag' config option.\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [379 x i8] c" * High allocator RSS overhead: This instance has an RSS memory overhead is greater than 1.1 (this means that the Resident Set Size of the allocator is much larger than the sum what the allocator actually holds). This problem is usually due to a large peak memory (check if there is a peak memory entry above in the report), you can try the MEMORY PURGE command to reclaim it.\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [265 x i8] c" * High process RSS overhead: This instance has non-allocator RSS memory overhead is greater than 1.1 (this means that the Resident Set Size of the Redis process is much larger than the RSS the allocator holds). This problem may be due to Lua scripts or Modules.\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [545 x i8] c" * Big replica buffers: The replica output buffers in this instance are greater than 10MB for each replica (on average). This likely means that there is some replica instance that is struggling receiving data, either because it is too slow or because of networking issues. As a result, data piles on the master output buffers. Please try to identify what replica is not receiving data correctly and why. You can use the INFO output in order to check the replicas delays and the CLIENT LIST command to check the output buffers of each replica.\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [583 x i8] c" * Big client buffers: The clients output buffers in this instance are greater than 200K per client (on average). This may result from different causes, like Pub/Sub clients subscribed to channels bot not receiving data fast enough, so that data piles on the Redis instance output buffer, or clients sending commands with large replies or very large sequences of commands in the same pipeline. Please use the CLIENT LIST command in order to investigate the issue if it causes problems in your instance, or to understand better why certain clients are using a big amount of memory.\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [341 x i8] c" * Many scripts: There seem to be many cached scripts in this instance (more than 1000). This may be because scripts are generated and `EVAL`ed, instead of being parameterized (with KEYS and ARGV), `SCRIPT LOAD`ed and `EVALSHA`ed. Unless `SCRIPT FLUSH` is called periodically, the scripts' caches may end up consuming most of your memory.\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"I'm here to keep you safe, Sam. I want to help you.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getMemoryDoctorReport() #0 {
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
  %11 = alloca %struct.redisMemOverhead*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = call %struct.redisMemOverhead* (...) @getMemoryOverheadData()
  store %struct.redisMemOverhead* %15, %struct.redisMemOverhead** %11, align 8
  %16 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %11, align 8
  %17 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 5242880
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %10, align 4
  br label %127

23:                                               ; preds = %0
  %24 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %11, align 8
  %25 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %24, i32 0, i32 11
  %26 = load i64, i64* %25, align 8
  %27 = sitofp i64 %26 to float
  %28 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %11, align 8
  %29 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %27, %31
  %33 = fpext float %32 to double
  %34 = fcmp ogt double %33, 1.500000e+00
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %35, %23
  %39 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %11, align 8
  %40 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %39, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = fcmp ogt double %41, 1.400000e+00
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %11, align 8
  %45 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 10485760
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %48, %43, %38
  %52 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %11, align 8
  %53 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %52, i32 0, i32 3
  %54 = load double, double* %53, align 8
  %55 = fcmp ogt double %54, 1.100000e+00
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %11, align 8
  %58 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 10485760
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %56, %51
  %65 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %11, align 8
  %66 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %65, i32 0, i32 5
  %67 = load double, double* %66, align 8
  %68 = fcmp ogt double %67, 1.100000e+00
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %11, align 8
  %71 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 10485760
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  store i32 1, i32* %6, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %74, %69, %64
  %78 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %11, align 8
  %79 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %78, i32 0, i32 7
  %80 = load double, double* %79, align 8
  %81 = fcmp ogt double %80, 1.100000e+00
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %11, align 8
  %84 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 10485760
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  store i32 1, i32* %5, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %87, %82, %77
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 4
  %92 = call i64 @listLength(i32 %91)
  store i64 %92, i64* %12, align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %94 = call i64 @listLength(i32 %93)
  %95 = load i64, i64* %12, align 8
  %96 = sub nsw i64 %94, %95
  store i64 %96, i64* %13, align 8
  %97 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %11, align 8
  %98 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %97, i32 0, i32 9
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %13, align 8
  %101 = sdiv i64 %99, %100
  %102 = icmp sgt i64 %101, 204800
  br i1 %102, label %103, label %106

103:                                              ; preds = %90
  store i32 1, i32* %8, align 4
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %103, %90
  %107 = load i64, i64* %12, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %11, align 8
  %111 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %110, i32 0, i32 10
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %12, align 8
  %114 = sdiv i64 %112, %113
  %115 = icmp sgt i64 %114, 10485760
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  store i32 1, i32* %7, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %116, %109, %106
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %121 = call i32 @dictSize(i32 %120)
  %122 = icmp sgt i32 %121, 1000
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  store i32 1, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %123, %119
  br label %127

127:                                              ; preds = %126, %20
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i32 @sdsnew(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0))
  store i32 %131, i32* %14, align 4
  br label %191

132:                                              ; preds = %127
  %133 = load i32, i32* %1, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = call i32 @sdsnew(i8* getelementptr inbounds ([269 x i8], [269 x i8]* @.str.1, i64 0, i64 0))
  store i32 %136, i32* %14, align 4
  br label %190

137:                                              ; preds = %132
  %138 = call i32 @sdsnew(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %2, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @sdscat(i32 %142, i8* getelementptr inbounds ([641 x i8], [641 x i8]* @.str.3, i64 0, i64 0))
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %141, %137
  %145 = load i32, i32* %3, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* @ZMALLOC_LIB, align 4
  %150 = call i32 (i32, i8*, ...) @sdscatprintf(i32 %148, i8* getelementptr inbounds ([627 x i8], [627 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  store i32 %150, i32* %14, align 4
  br label %151

151:                                              ; preds = %147, %144
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %14, align 4
  %156 = call i32 (i32, i8*, ...) @sdscatprintf(i32 %155, i8* getelementptr inbounds ([358 x i8], [358 x i8]* @.str.5, i64 0, i64 0))
  store i32 %156, i32* %14, align 4
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %14, align 4
  %162 = call i32 (i32, i8*, ...) @sdscatprintf(i32 %161, i8* getelementptr inbounds ([379 x i8], [379 x i8]* @.str.6, i64 0, i64 0))
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* %14, align 4
  %168 = call i32 (i32, i8*, ...) @sdscatprintf(i32 %167, i8* getelementptr inbounds ([265 x i8], [265 x i8]* @.str.7, i64 0, i64 0))
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @sdscat(i32 %173, i8* getelementptr inbounds ([545 x i8], [545 x i8]* @.str.8, i64 0, i64 0))
  store i32 %174, i32* %14, align 4
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @sdscat(i32 %179, i8* getelementptr inbounds ([583 x i8], [583 x i8]* @.str.9, i64 0, i64 0))
  store i32 %180, i32* %14, align 4
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @sdscat(i32 %185, i8* getelementptr inbounds ([341 x i8], [341 x i8]* @.str.10, i64 0, i64 0))
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %184, %181
  %188 = load i32, i32* %14, align 4
  %189 = call i32 @sdscat(i32 %188, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  store i32 %189, i32* %14, align 4
  br label %190

190:                                              ; preds = %187, %135
  br label %191

191:                                              ; preds = %190, %130
  %192 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %11, align 8
  %193 = call i32 @freeMemoryOverheadData(%struct.redisMemOverhead* %192)
  %194 = load i32, i32* %14, align 4
  ret i32 %194
}

declare dso_local %struct.redisMemOverhead* @getMemoryOverheadData(...) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @dictSize(i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @sdscat(i32, i8*) #1

declare dso_local i32 @sdscatprintf(i32, i8*, ...) #1

declare dso_local i32 @freeMemoryOverheadData(%struct.redisMemOverhead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

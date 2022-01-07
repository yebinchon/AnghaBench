; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_flushAppendOnlyFile.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_flushAppendOnlyFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i32, i64, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AOF_FSYNC_EVERYSEC = common dso_local global i64 0, align 8
@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [147 x i8] c"Asynchronous AOF fsync is taking too long (disk is busy?). Writing the AOF buffer without waiting for fsync to complete, this may slow down Redis.\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"aof-write-pending-fsync\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"aof-write-active-child\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"aof-write-alone\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"aof-write\00", align 1
@flushAppendOnlyFile.last_write_error_log = internal global i64 0, align 8
@AOF_WRITE_LOG_ERROR_RATE = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Error writing to the AOF file: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [74 x i8] c"Short write while writing to the AOF file: (nwritten=%lld, expected=%lld)\00", align 1
@.str.7 = private unnamed_addr constant [130 x i8] c"Could not remove short write from the append-only file.  Redis may refuse to load the AOF the next time it starts.  ftruncate: %s\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@AOF_FSYNC_ALWAYS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [85 x i8] c"Can't recover from AOF write error when the AOF fsync policy is 'always'. Exiting...\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [53 x i8] c"AOF write error looks solved, Redis can write again.\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"aof-fsync-always\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flushAppendOnlyFile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %8 = call i32 @sdslen(i32 %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %12 = load i64, i64* @AOF_FSYNC_EVERYSEC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = call i32 (...) @aofFsyncInProgress()
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %201

26:                                               ; preds = %22, %18, %14, %10
  br label %241

27:                                               ; preds = %1
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %29 = load i64, i64* @AOF_FSYNC_EVERYSEC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (...) @aofFsyncInProgress()
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %35 = load i64, i64* @AOF_FSYNC_EVERYSEC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  br label %241

48:                                               ; preds = %43
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %51 = sub nsw i64 %49, %50
  %52 = icmp slt i64 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %241

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 12), align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 12), align 8
  %58 = load i32, i32* @LL_NOTICE, align 4
  %59 = call i32 (i32, i8*, ...) @serverLog(i32 %58, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %40
  br label %61

61:                                               ; preds = %60, %37, %33
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 11), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %66 = call i32 @sdslen(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 11), align 8
  %70 = call i32 @usleep(i64 %69)
  br label %71

71:                                               ; preds = %68, %64, %61
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @latencyStartMonitor(i32 %72)
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %77 = call i32 @sdslen(i32 %76)
  %78 = call i32 @aofWrite(i32 %74, i32 %75, i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @latencyEndMonitor(i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %96

86:                                               ; preds = %71
  %87 = call i64 (...) @hasActiveChildProcess()
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %95

92:                                               ; preds = %86
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %83
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %101 = call i32 @sdslen(i32 %100)
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %173

103:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %105 = load i64, i64* @flushAppendOnlyFile.last_write_error_log, align 8
  %106 = sub nsw i64 %104, %105
  %107 = load i64, i64* @AOF_WRITE_LOG_ERROR_RATE, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  store i32 1, i32* %6, align 4
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  store i64 %110, i64* @flushAppendOnlyFile.last_write_error_log, align 8
  br label %111

111:                                              ; preds = %109, %103
  %112 = load i32, i32* %3, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32, i32* @LL_WARNING, align 4
  %119 = load i32, i32* @errno, align 4
  %120 = call i32 @strerror(i32 %119)
  %121 = call i32 (i32, i8*, ...) @serverLog(i32 %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @errno, align 4
  store i32 %122, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 10), align 4
  br label %123

123:                                              ; preds = %117, %114
  br label %152

124:                                              ; preds = %111
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load i32, i32* @LL_WARNING, align 4
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %132 = call i32 @sdslen(i32 %131)
  %133 = sext i32 %132 to i64
  %134 = call i32 (i32, i8*, ...) @serverLog(i32 %128, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i64 %130, i64 %133)
  br label %135

135:                                              ; preds = %127, %124
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %137 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %138 = call i32 @ftruncate(i32 %136, i64 %137)
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32, i32* @LL_WARNING, align 4
  %145 = load i32, i32* @errno, align 4
  %146 = call i32 @strerror(i32 %145)
  %147 = call i32 (i32, i8*, ...) @serverLog(i32 %144, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.7, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %143, %140
  br label %150

149:                                              ; preds = %135
  store i32 -1, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %148
  %151 = load i32, i32* @ENOSPC, align 4
  store i32 %151, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 10), align 4
  br label %152

152:                                              ; preds = %150, %123
  %153 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %154 = load i64, i64* @AOF_FSYNC_ALWAYS, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i32, i32* @LL_WARNING, align 4
  %158 = call i32 (i32, i8*, ...) @serverLog(i32 %157, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.8, i64 0, i64 0))
  %159 = call i32 @exit(i32 1) #3
  unreachable

160:                                              ; preds = %152
  %161 = load i64, i64* @C_ERR, align 8
  store i64 %161, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %162 = load i32, i32* %3, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %160
  %165 = load i32, i32* %3, align 4
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %168 = add nsw i64 %167, %166
  store i64 %168, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @sdsrange(i32 %169, i32 %170, i32 -1)
  br label %172

172:                                              ; preds = %164, %160
  br label %241

173:                                              ; preds = %96
  %174 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %175 = load i64, i64* @C_ERR, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load i32, i32* @LL_WARNING, align 4
  %179 = call i32 (i32, i8*, ...) @serverLog(i32 %178, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0))
  %180 = load i64, i64* @C_OK, align 8
  store i64 %180, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  br label %181

181:                                              ; preds = %177, %173
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %3, align 4
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %186 = add nsw i64 %185, %184
  store i64 %186, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %188 = call i32 @sdslen(i32 %187)
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %190 = call i32 @sdsavail(i32 %189)
  %191 = add nsw i32 %188, %190
  %192 = icmp slt i32 %191, 4000
  br i1 %192, label %193, label %196

193:                                              ; preds = %182
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %195 = call i32 @sdsclear(i32 %194)
  br label %200

196:                                              ; preds = %182
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %198 = call i32 @sdsfree(i32 %197)
  %199 = call i32 (...) @sdsempty()
  store i32 %199, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  br label %200

200:                                              ; preds = %196, %193
  br label %201

201:                                              ; preds = %200, %25
  %202 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8), align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = call i64 (...) @hasActiveChildProcess()
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %241

208:                                              ; preds = %204, %201
  %209 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %210 = load i64, i64* @AOF_FSYNC_ALWAYS, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %223

212:                                              ; preds = %208
  %213 = load i32, i32* %5, align 4
  %214 = call i32 @latencyStartMonitor(i32 %213)
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %216 = call i32 @redis_fsync(i32 %215)
  %217 = load i32, i32* %5, align 4
  %218 = call i32 @latencyEndMonitor(i32 %217)
  %219 = load i32, i32* %5, align 4
  %220 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %219)
  %221 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  store i64 %221, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %222 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  store i64 %222, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  br label %241

223:                                              ; preds = %208
  %224 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %225 = load i64, i64* @AOF_FSYNC_EVERYSEC, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %240

227:                                              ; preds = %223
  %228 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %229 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %230 = icmp sgt i64 %228, %229
  br i1 %230, label %231, label %240

231:                                              ; preds = %227
  %232 = load i32, i32* %4, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %236 = call i32 @aof_background_fsync(i32 %235)
  %237 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  store i64 %237, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  br label %238

238:                                              ; preds = %234, %231
  %239 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  store i64 %239, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  br label %240

240:                                              ; preds = %238, %227, %223
  br label %241

241:                                              ; preds = %26, %46, %53, %172, %207, %240, %212
  ret void
}

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @aofFsyncInProgress(...) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @usleep(i64) #1

declare dso_local i32 @latencyStartMonitor(i32) #1

declare dso_local i32 @aofWrite(i32, i32, i32) #1

declare dso_local i32 @latencyEndMonitor(i32) #1

declare dso_local i32 @latencyAddSampleIfNeeded(i8*, i32) #1

declare dso_local i64 @hasActiveChildProcess(...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @ftruncate(i32, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sdsrange(i32, i32, i32) #1

declare dso_local i32 @sdsavail(i32) #1

declare dso_local i32 @sdsclear(i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @redis_fsync(i32) #1

declare dso_local i32 @aof_background_fsync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

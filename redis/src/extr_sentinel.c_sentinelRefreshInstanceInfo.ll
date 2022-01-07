; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelRefreshInstanceInfo.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelRefreshInstanceInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_21__ = type { i8*, i32, i8*, i32, i8*, i64, i32, i64, i32, i64, i64, i64, %struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_17__*, i64, i32, i32, i64, i32, i8*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_17__ = type { i8*, i64 }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"run_id:\00", align 1
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"+reboot\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%@\00", align 1
@SRI_MASTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ip=\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"port=\00", align 1
@SRI_SLAVE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"+slave\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"master_link_down_since_seconds\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"role:master\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"role:slave\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"master_host:\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"master_port:\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"master_link_status:\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@SENTINEL_MASTER_LINK_STATUS_UP = common dso_local global i64 0, align 8
@SENTINEL_MASTER_LINK_STATUS_DOWN = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"slave_priority:\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"slave_repl_offset:\00", align 1
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"+role-change\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"-role-change\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"%@ new reported role is %s\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@sentinel = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@SRI_PROMOTED = common dso_local global i32 0, align 4
@SRI_FAILOVER_IN_PROGRESS = common dso_local global i32 0, align 4
@SENTINEL_FAILOVER_STATE_WAIT_PROMOTION = common dso_local global i64 0, align 8
@SENTINEL_FAILOVER_STATE_RECONF_SLAVES = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"+promoted-slave\00", align 1
@SENTINEL_SIMFAILURE_CRASH_AFTER_PROMOTION = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [30 x i8] c"+failover-state-reconf-slaves\00", align 1
@SENTINEL_LEADER = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@SENTINEL_PUBLISH_PERIOD = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [18 x i8] c"+convert-to-slave\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"+fix-slave-config\00", align 1
@SRI_RECONF_SENT = common dso_local global i32 0, align 4
@SRI_RECONF_INPROG = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [21 x i8] c"+slave-reconf-inprog\00", align 1
@SRI_RECONF_DONE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [19 x i8] c"+slave-reconf-done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelRefreshInstanceInfo(%struct.TYPE_21__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @sdsfree(i8* %21)
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @sdsnew(i8* %23)
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = call i8** @sdssplitlen(i8* %29, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32* %6)
  store i8** %32, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %334, %2
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %337

37:                                               ; preds = %33
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @sdslen(i8* %43)
  %45 = icmp sge i32 %44, 47
  br i1 %45, label %46, label %84

46:                                               ; preds = %37
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @memcmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %84, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 7
  %58 = call i8* @sdsnewlen(i8* %57, i32 40)
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  br label %83

61:                                               ; preds = %50
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 7
  %67 = call i64 @strncmp(i8* %64, i8* %66, i32 40)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %61
  %70 = load i32, i32* @LL_NOTICE, align 4
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %72 = call i32 (i32, i8*, %struct.TYPE_21__*, i8*, ...) @sentinelEvent(i32 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_21__* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @sdsfree(i8* %75)
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 7
  %79 = call i8* @sdsnewlen(i8* %78, i32 40)
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %69, %61
  br label %83

83:                                               ; preds = %82, %55
  br label %84

84:                                               ; preds = %83, %46, %37
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SRI_MASTER, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %190

91:                                               ; preds = %84
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @sdslen(i8* %92)
  %94 = icmp sge i32 %93, 7
  br i1 %94, label %95, label %190

95:                                               ; preds = %91
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @memcmp(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %190, label %99

99:                                               ; preds = %95
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 5
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @isdigit(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %190

105:                                              ; preds = %99
  %106 = load i8*, i8** %10, align 8
  %107 = call i8* @strstr(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %134

109:                                              ; preds = %105
  %110 = load i8*, i8** %10, align 8
  %111 = call i8* @strchr(i8* %110, i8 signext 58)
  store i8* %111, i8** %11, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  br label %334

115:                                              ; preds = %109
  %116 = load i8*, i8** %11, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %11, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = call i8* @strchr(i8* %118, i8 signext 44)
  store i8* %119, i8** %12, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %115
  br label %334

123:                                              ; preds = %115
  %124 = load i8*, i8** %12, align 8
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** %12, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %12, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = call i8* @strchr(i8* %127, i8 signext 44)
  store i8* %128, i8** %13, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %123
  br label %334

132:                                              ; preds = %123
  %133 = load i8*, i8** %13, align 8
  store i8 0, i8* %133, align 1
  br label %165

134:                                              ; preds = %105
  %135 = load i8*, i8** %10, align 8
  %136 = call i8* @strstr(i8* %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %136, i8** %11, align 8
  %137 = load i8*, i8** %11, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  br label %334

140:                                              ; preds = %134
  %141 = load i8*, i8** %11, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 3
  store i8* %142, i8** %11, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = call i8* @strstr(i8* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i8* %144, i8** %12, align 8
  %145 = load i8*, i8** %12, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %140
  br label %334

148:                                              ; preds = %140
  %149 = load i8*, i8** %12, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 5
  store i8* %150, i8** %12, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = call i8* @strchr(i8* %151, i8 signext 44)
  store i8* %152, i8** %13, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i8*, i8** %13, align 8
  store i8 0, i8* %156, align 1
  br label %157

157:                                              ; preds = %155, %148
  %158 = load i8*, i8** %12, align 8
  %159 = call i8* @strchr(i8* %158, i8 signext 44)
  store i8* %159, i8** %13, align 8
  %160 = load i8*, i8** %13, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i8*, i8** %13, align 8
  store i8 0, i8* %163, align 1
  br label %164

164:                                              ; preds = %162, %157
  br label %165

165:                                              ; preds = %164, %132
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %167 = load i8*, i8** %11, align 8
  %168 = load i8*, i8** %12, align 8
  %169 = call i8* @atoi(i8* %168)
  %170 = call i32* @sentinelRedisInstanceLookupSlave(%struct.TYPE_21__* %166, i8* %167, i8* %169)
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %189

172:                                              ; preds = %165
  %173 = load i32, i32* @SRI_SLAVE, align 4
  %174 = load i8*, i8** %11, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = call i8* @atoi(i8* %175)
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 21
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %181 = call %struct.TYPE_21__* @createSentinelRedisInstance(i32* null, i32 %173, i8* %174, i8* %176, i32 %179, %struct.TYPE_21__* %180)
  store %struct.TYPE_21__* %181, %struct.TYPE_21__** %9, align 8
  %182 = icmp ne %struct.TYPE_21__* %181, null
  br i1 %182, label %183, label %188

183:                                              ; preds = %172
  %184 = load i32, i32* @LL_NOTICE, align 4
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %186 = call i32 (i32, i8*, %struct.TYPE_21__*, i8*, ...) @sentinelEvent(i32 %184, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_21__* %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %187 = call i32 (...) @sentinelFlushConfig()
  br label %188

188:                                              ; preds = %183, %172
  br label %189

189:                                              ; preds = %188, %165
  br label %190

190:                                              ; preds = %189, %99, %95, %91, %84
  %191 = load i8*, i8** %10, align 8
  %192 = call i32 @sdslen(i8* %191)
  %193 = icmp sge i32 %192, 32
  br i1 %193, label %194, label %205

194:                                              ; preds = %190
  %195 = load i8*, i8** %10, align 8
  %196 = call i32 @memcmp(i8* %195, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 30)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %194
  %199 = load i8*, i8** %10, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 31
  %201 = call i32 @strtoll(i8* %200, i32* null, i32 10)
  %202 = mul nsw i32 %201, 1000
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 8
  br label %205

205:                                              ; preds = %198, %194, %190
  %206 = load i8*, i8** %10, align 8
  %207 = call i32 @memcmp(i8* %206, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 11)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = load i32, i32* @SRI_MASTER, align 4
  store i32 %210, i32* %8, align 4
  br label %218

211:                                              ; preds = %205
  %212 = load i8*, i8** %10, align 8
  %213 = call i32 @memcmp(i8* %212, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 10)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* @SRI_SLAVE, align 4
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %215, %211
  br label %218

218:                                              ; preds = %217, %209
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* @SRI_SLAVE, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %333

222:                                              ; preds = %218
  %223 = load i8*, i8** %10, align 8
  %224 = call i32 @sdslen(i8* %223)
  %225 = icmp sge i32 %224, 12
  br i1 %225, label %226, label %257

226:                                              ; preds = %222
  %227 = load i8*, i8** %10, align 8
  %228 = call i32 @memcmp(i8* %227, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 12)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %257, label %230

230:                                              ; preds = %226
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 4
  %233 = load i8*, i8** %232, align 8
  %234 = icmp eq i8* %233, null
  br i1 %234, label %243, label %235

235:                                              ; preds = %230
  %236 = load i8*, i8** %10, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 12
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 4
  %240 = load i8*, i8** %239, align 8
  %241 = call i64 @strcasecmp(i8* %237, i8* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %256

243:                                              ; preds = %235, %230
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 4
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @sdsfree(i8* %246)
  %248 = load i8*, i8** %10, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 12
  %250 = call i8* @sdsnew(i8* %249)
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 4
  store i8* %250, i8** %252, align 8
  %253 = call i64 (...) @mstime()
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 5
  store i64 %253, i64* %255, align 8
  br label %256

256:                                              ; preds = %243, %235
  br label %257

257:                                              ; preds = %256, %226, %222
  %258 = load i8*, i8** %10, align 8
  %259 = call i32 @sdslen(i8* %258)
  %260 = icmp sge i32 %259, 12
  br i1 %260, label %261, label %283

261:                                              ; preds = %257
  %262 = load i8*, i8** %10, align 8
  %263 = call i32 @memcmp(i8* %262, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 12)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %283, label %265

265:                                              ; preds = %261
  %266 = load i8*, i8** %10, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 12
  %268 = call i8* @atoi(i8* %267)
  %269 = ptrtoint i8* %268 to i32
  store i32 %269, i32* %14, align 4
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %14, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %282

275:                                              ; preds = %265
  %276 = load i32, i32* %14, align 4
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 6
  store i32 %276, i32* %278, align 8
  %279 = call i64 (...) @mstime()
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 5
  store i64 %279, i64* %281, align 8
  br label %282

282:                                              ; preds = %275, %265
  br label %283

283:                                              ; preds = %282, %261, %257
  %284 = load i8*, i8** %10, align 8
  %285 = call i32 @sdslen(i8* %284)
  %286 = icmp sge i32 %285, 19
  br i1 %286, label %287, label %304

287:                                              ; preds = %283
  %288 = load i8*, i8** %10, align 8
  %289 = call i32 @memcmp(i8* %288, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 19)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %304, label %291

291:                                              ; preds = %287
  %292 = load i8*, i8** %10, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 19
  %294 = call i64 @strcasecmp(i8* %293, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %291
  %297 = load i64, i64* @SENTINEL_MASTER_LINK_STATUS_UP, align 8
  br label %300

298:                                              ; preds = %291
  %299 = load i64, i64* @SENTINEL_MASTER_LINK_STATUS_DOWN, align 8
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi i64 [ %297, %296 ], [ %299, %298 ]
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 7
  store i64 %301, i64* %303, align 8
  br label %304

304:                                              ; preds = %300, %287, %283
  %305 = load i8*, i8** %10, align 8
  %306 = call i32 @sdslen(i8* %305)
  %307 = icmp sge i32 %306, 15
  br i1 %307, label %308, label %318

308:                                              ; preds = %304
  %309 = load i8*, i8** %10, align 8
  %310 = call i32 @memcmp(i8* %309, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 15)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %318, label %312

312:                                              ; preds = %308
  %313 = load i8*, i8** %10, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 15
  %315 = call i8* @atoi(i8* %314)
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 20
  store i8* %315, i8** %317, align 8
  br label %318

318:                                              ; preds = %312, %308, %304
  %319 = load i8*, i8** %10, align 8
  %320 = call i32 @sdslen(i8* %319)
  %321 = icmp sge i32 %320, 18
  br i1 %321, label %322, label %332

322:                                              ; preds = %318
  %323 = load i8*, i8** %10, align 8
  %324 = call i32 @memcmp(i8* %323, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 18)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %332, label %326

326:                                              ; preds = %322
  %327 = load i8*, i8** %10, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 18
  %329 = call i32 @strtoull(i8* %328, i32* null, i32 10)
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %330, i32 0, i32 19
  store i32 %329, i32* %331, align 8
  br label %332

332:                                              ; preds = %326, %322, %318
  br label %333

333:                                              ; preds = %332, %218
  br label %334

334:                                              ; preds = %333, %147, %139, %131, %122, %114
  %335 = load i32, i32* %7, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %7, align 4
  br label %33

337:                                              ; preds = %33
  %338 = call i64 (...) @mstime()
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 18
  store i64 %338, i64* %340, align 8
  %341 = load i8**, i8*** %5, align 8
  %342 = load i32, i32* %6, align 4
  %343 = call i32 @sdsfreesplitres(i8** %341, i32 %342)
  %344 = load i32, i32* %8, align 4
  %345 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %345, i32 0, i32 8
  %347 = load i32, i32* %346, align 8
  %348 = icmp ne i32 %344, %347
  br i1 %348, label %349, label %391

349:                                              ; preds = %337
  %350 = call i64 (...) @mstime()
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %351, i32 0, i32 9
  store i64 %350, i64* %352, align 8
  %353 = load i32, i32* %8, align 4
  %354 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 8
  store i32 %353, i32* %355, align 8
  %356 = load i32, i32* %8, align 4
  %357 = load i32, i32* @SRI_SLAVE, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %363

359:                                              ; preds = %349
  %360 = call i64 (...) @mstime()
  %361 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %361, i32 0, i32 5
  store i64 %360, i64* %362, align 8
  br label %363

363:                                              ; preds = %359, %349
  %364 = load i32, i32* @LL_VERBOSE, align 4
  %365 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @SRI_MASTER, align 4
  %369 = load i32, i32* @SRI_SLAVE, align 4
  %370 = or i32 %368, %369
  %371 = and i32 %367, %370
  %372 = load i32, i32* %8, align 4
  %373 = icmp eq i32 %371, %372
  %374 = zext i1 %373 to i64
  %375 = select i1 %373, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0)
  %376 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %377 = load i32, i32* %8, align 4
  %378 = load i32, i32* @SRI_MASTER, align 4
  %379 = icmp eq i32 %377, %378
  %380 = zext i1 %379 to i64
  %381 = select i1 %379, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %382 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @SRI_MASTER, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  %388 = zext i1 %387 to i64
  %389 = select i1 %387, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %390 = call i32 (i32, i8*, %struct.TYPE_21__*, i8*, ...) @sentinelEvent(i32 %364, i8* %375, %struct.TYPE_21__* %376, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i8* %381, i8* %389)
  br label %391

391:                                              ; preds = %363, %337
  %392 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sentinel, i32 0, i32 1), align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %391
  br label %744

395:                                              ; preds = %391
  %396 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %396, i32 0, i32 3
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* @SRI_MASTER, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %407

402:                                              ; preds = %395
  %403 = load i32, i32* %8, align 4
  %404 = load i32, i32* @SRI_SLAVE, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %407

406:                                              ; preds = %402
  br label %407

407:                                              ; preds = %406, %402, %395
  %408 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @SRI_SLAVE, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %551

414:                                              ; preds = %407
  %415 = load i32, i32* %8, align 4
  %416 = load i32, i32* @SRI_MASTER, align 4
  %417 = icmp eq i32 %415, %416
  br i1 %417, label %418, label %551

418:                                              ; preds = %414
  %419 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* @SRI_PROMOTED, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %495

425:                                              ; preds = %418
  %426 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %427 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %426, i32 0, i32 13
  %428 = load %struct.TYPE_21__*, %struct.TYPE_21__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @SRI_FAILOVER_IN_PROGRESS, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %495

434:                                              ; preds = %425
  %435 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %436 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %435, i32 0, i32 13
  %437 = load %struct.TYPE_21__*, %struct.TYPE_21__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %437, i32 0, i32 10
  %439 = load i64, i64* %438, align 8
  %440 = load i64, i64* @SENTINEL_FAILOVER_STATE_WAIT_PROMOTION, align 8
  %441 = icmp eq i64 %439, %440
  br i1 %441, label %442, label %495

442:                                              ; preds = %434
  %443 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %443, i32 0, i32 13
  %445 = load %struct.TYPE_21__*, %struct.TYPE_21__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %445, i32 0, i32 16
  %447 = load i32, i32* %446, align 8
  %448 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %448, i32 0, i32 13
  %450 = load %struct.TYPE_21__*, %struct.TYPE_21__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %450, i32 0, i32 17
  store i32 %447, i32* %451, align 4
  %452 = load i64, i64* @SENTINEL_FAILOVER_STATE_RECONF_SLAVES, align 8
  %453 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %453, i32 0, i32 13
  %455 = load %struct.TYPE_21__*, %struct.TYPE_21__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %455, i32 0, i32 10
  store i64 %452, i64* %456, align 8
  %457 = call i64 (...) @mstime()
  %458 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %459 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %458, i32 0, i32 13
  %460 = load %struct.TYPE_21__*, %struct.TYPE_21__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %460, i32 0, i32 15
  store i64 %457, i64* %461, align 8
  %462 = call i32 (...) @sentinelFlushConfig()
  %463 = load i32, i32* @LL_WARNING, align 4
  %464 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %465 = call i32 (i32, i8*, %struct.TYPE_21__*, i8*, ...) @sentinelEvent(i32 %463, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), %struct.TYPE_21__* %464, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %466 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sentinel, i32 0, i32 0), align 8
  %467 = load i32, i32* @SENTINEL_SIMFAILURE_CRASH_AFTER_PROMOTION, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %472

470:                                              ; preds = %442
  %471 = call i32 (...) @sentinelSimFailureCrash()
  br label %472

472:                                              ; preds = %470, %442
  %473 = load i32, i32* @LL_WARNING, align 4
  %474 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %474, i32 0, i32 13
  %476 = load %struct.TYPE_21__*, %struct.TYPE_21__** %475, align 8
  %477 = call i32 (i32, i8*, %struct.TYPE_21__*, i8*, ...) @sentinelEvent(i32 %473, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0), %struct.TYPE_21__* %476, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %478 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %478, i32 0, i32 13
  %480 = load %struct.TYPE_21__*, %struct.TYPE_21__** %479, align 8
  %481 = load i32, i32* @SENTINEL_LEADER, align 4
  %482 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %482, i32 0, i32 13
  %484 = load %struct.TYPE_21__*, %struct.TYPE_21__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %484, i32 0, i32 14
  %486 = load %struct.TYPE_17__*, %struct.TYPE_17__** %485, align 8
  %487 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %487, i32 0, i32 14
  %489 = load %struct.TYPE_17__*, %struct.TYPE_17__** %488, align 8
  %490 = call i32 @sentinelCallClientReconfScript(%struct.TYPE_21__* %480, i32 %481, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %struct.TYPE_17__* %486, %struct.TYPE_17__* %489)
  %491 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %492 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %491, i32 0, i32 13
  %493 = load %struct.TYPE_21__*, %struct.TYPE_21__** %492, align 8
  %494 = call i32 @sentinelForceHelloUpdateForMaster(%struct.TYPE_21__* %493)
  br label %550

495:                                              ; preds = %434, %425, %418
  %496 = load i32, i32* @SENTINEL_PUBLISH_PERIOD, align 4
  %497 = mul nsw i32 %496, 4
  %498 = sext i32 %497 to i64
  store i64 %498, i64* %15, align 8
  %499 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %500 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %499, i32 0, i32 3
  %501 = load i32, i32* %500, align 8
  %502 = load i32, i32* @SRI_PROMOTED, align 4
  %503 = and i32 %501, %502
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %549, label %505

505:                                              ; preds = %495
  %506 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %507 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %506, i32 0, i32 13
  %508 = load %struct.TYPE_21__*, %struct.TYPE_21__** %507, align 8
  %509 = call i64 @sentinelMasterLooksSane(%struct.TYPE_21__* %508)
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %549

511:                                              ; preds = %505
  %512 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %513 = load i64, i64* %15, align 8
  %514 = call i64 @sentinelRedisInstanceNoDownFor(%struct.TYPE_21__* %512, i64 %513)
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %549

516:                                              ; preds = %511
  %517 = call i64 (...) @mstime()
  %518 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %519 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %518, i32 0, i32 9
  %520 = load i64, i64* %519, align 8
  %521 = sub nsw i64 %517, %520
  %522 = load i64, i64* %15, align 8
  %523 = icmp sgt i64 %521, %522
  br i1 %523, label %524, label %549

524:                                              ; preds = %516
  %525 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %526 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %527 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %526, i32 0, i32 13
  %528 = load %struct.TYPE_21__*, %struct.TYPE_21__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %528, i32 0, i32 14
  %530 = load %struct.TYPE_17__*, %struct.TYPE_17__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %530, i32 0, i32 0
  %532 = load i8*, i8** %531, align 8
  %533 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %534 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %533, i32 0, i32 13
  %535 = load %struct.TYPE_21__*, %struct.TYPE_21__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %535, i32 0, i32 14
  %537 = load %struct.TYPE_17__*, %struct.TYPE_17__** %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %537, i32 0, i32 1
  %539 = load i64, i64* %538, align 8
  %540 = call i32 @sentinelSendSlaveOf(%struct.TYPE_21__* %525, i8* %532, i64 %539)
  store i32 %540, i32* %16, align 4
  %541 = load i32, i32* %16, align 4
  %542 = load i32, i32* @C_OK, align 4
  %543 = icmp eq i32 %541, %542
  br i1 %543, label %544, label %548

544:                                              ; preds = %524
  %545 = load i32, i32* @LL_NOTICE, align 4
  %546 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %547 = call i32 (i32, i8*, %struct.TYPE_21__*, i8*, ...) @sentinelEvent(i32 %545, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), %struct.TYPE_21__* %546, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %548

548:                                              ; preds = %544, %524
  br label %549

549:                                              ; preds = %548, %516, %511, %505, %495
  br label %550

550:                                              ; preds = %549, %472
  br label %551

551:                                              ; preds = %550, %414, %407
  %552 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %553 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %552, i32 0, i32 3
  %554 = load i32, i32* %553, align 8
  %555 = load i32, i32* @SRI_SLAVE, align 4
  %556 = and i32 %554, %555
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %638

558:                                              ; preds = %551
  %559 = load i32, i32* %8, align 4
  %560 = load i32, i32* @SRI_SLAVE, align 4
  %561 = icmp eq i32 %559, %560
  br i1 %561, label %562, label %638

562:                                              ; preds = %558
  %563 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %564 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %563, i32 0, i32 6
  %565 = load i32, i32* %564, align 8
  %566 = sext i32 %565 to i64
  %567 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %568 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %567, i32 0, i32 13
  %569 = load %struct.TYPE_21__*, %struct.TYPE_21__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %569, i32 0, i32 14
  %571 = load %struct.TYPE_17__*, %struct.TYPE_17__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %571, i32 0, i32 1
  %573 = load i64, i64* %572, align 8
  %574 = icmp ne i64 %566, %573
  br i1 %574, label %588, label %575

575:                                              ; preds = %562
  %576 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %577 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %576, i32 0, i32 4
  %578 = load i8*, i8** %577, align 8
  %579 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %580 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %579, i32 0, i32 13
  %581 = load %struct.TYPE_21__*, %struct.TYPE_21__** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %581, i32 0, i32 14
  %583 = load %struct.TYPE_17__*, %struct.TYPE_17__** %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %583, i32 0, i32 0
  %585 = load i8*, i8** %584, align 8
  %586 = call i64 @strcasecmp(i8* %578, i8* %585)
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %638

588:                                              ; preds = %575, %562
  %589 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %590 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %589, i32 0, i32 13
  %591 = load %struct.TYPE_21__*, %struct.TYPE_21__** %590, align 8
  %592 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %591, i32 0, i32 11
  %593 = load i64, i64* %592, align 8
  store i64 %593, i64* %17, align 8
  %594 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %595 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %594, i32 0, i32 13
  %596 = load %struct.TYPE_21__*, %struct.TYPE_21__** %595, align 8
  %597 = call i64 @sentinelMasterLooksSane(%struct.TYPE_21__* %596)
  %598 = icmp ne i64 %597, 0
  br i1 %598, label %599, label %637

599:                                              ; preds = %588
  %600 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %601 = load i64, i64* %17, align 8
  %602 = call i64 @sentinelRedisInstanceNoDownFor(%struct.TYPE_21__* %600, i64 %601)
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %604, label %637

604:                                              ; preds = %599
  %605 = call i64 (...) @mstime()
  %606 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %607 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %606, i32 0, i32 5
  %608 = load i64, i64* %607, align 8
  %609 = sub nsw i64 %605, %608
  %610 = load i64, i64* %17, align 8
  %611 = icmp sgt i64 %609, %610
  br i1 %611, label %612, label %637

612:                                              ; preds = %604
  %613 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %614 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %615 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %614, i32 0, i32 13
  %616 = load %struct.TYPE_21__*, %struct.TYPE_21__** %615, align 8
  %617 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %616, i32 0, i32 14
  %618 = load %struct.TYPE_17__*, %struct.TYPE_17__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %618, i32 0, i32 0
  %620 = load i8*, i8** %619, align 8
  %621 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %622 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %621, i32 0, i32 13
  %623 = load %struct.TYPE_21__*, %struct.TYPE_21__** %622, align 8
  %624 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %623, i32 0, i32 14
  %625 = load %struct.TYPE_17__*, %struct.TYPE_17__** %624, align 8
  %626 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %625, i32 0, i32 1
  %627 = load i64, i64* %626, align 8
  %628 = call i32 @sentinelSendSlaveOf(%struct.TYPE_21__* %613, i8* %620, i64 %627)
  store i32 %628, i32* %18, align 4
  %629 = load i32, i32* %18, align 4
  %630 = load i32, i32* @C_OK, align 4
  %631 = icmp eq i32 %629, %630
  br i1 %631, label %632, label %636

632:                                              ; preds = %612
  %633 = load i32, i32* @LL_NOTICE, align 4
  %634 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %635 = call i32 (i32, i8*, %struct.TYPE_21__*, i8*, ...) @sentinelEvent(i32 %633, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), %struct.TYPE_21__* %634, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %636

636:                                              ; preds = %632, %612
  br label %637

637:                                              ; preds = %636, %604, %599, %588
  br label %638

638:                                              ; preds = %637, %575, %558, %551
  %639 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %640 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %639, i32 0, i32 3
  %641 = load i32, i32* %640, align 8
  %642 = load i32, i32* @SRI_SLAVE, align 4
  %643 = and i32 %641, %642
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %744

645:                                              ; preds = %638
  %646 = load i32, i32* %8, align 4
  %647 = load i32, i32* @SRI_SLAVE, align 4
  %648 = icmp eq i32 %646, %647
  br i1 %648, label %649, label %744

649:                                              ; preds = %645
  %650 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %651 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %650, i32 0, i32 3
  %652 = load i32, i32* %651, align 8
  %653 = load i32, i32* @SRI_RECONF_SENT, align 4
  %654 = load i32, i32* @SRI_RECONF_INPROG, align 4
  %655 = or i32 %653, %654
  %656 = and i32 %652, %655
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %744

658:                                              ; preds = %649
  %659 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %660 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %659, i32 0, i32 3
  %661 = load i32, i32* %660, align 8
  %662 = load i32, i32* @SRI_RECONF_SENT, align 4
  %663 = and i32 %661, %662
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %665, label %715

665:                                              ; preds = %658
  %666 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %667 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %666, i32 0, i32 4
  %668 = load i8*, i8** %667, align 8
  %669 = icmp ne i8* %668, null
  br i1 %669, label %670, label %715

670:                                              ; preds = %665
  %671 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %672 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %671, i32 0, i32 4
  %673 = load i8*, i8** %672, align 8
  %674 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %675 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %674, i32 0, i32 13
  %676 = load %struct.TYPE_21__*, %struct.TYPE_21__** %675, align 8
  %677 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %676, i32 0, i32 12
  %678 = load %struct.TYPE_20__*, %struct.TYPE_20__** %677, align 8
  %679 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %678, i32 0, i32 0
  %680 = load %struct.TYPE_19__*, %struct.TYPE_19__** %679, align 8
  %681 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %680, i32 0, i32 1
  %682 = load i32, i32* %681, align 8
  %683 = call i64 @strcmp(i8* %673, i32 %682)
  %684 = icmp eq i64 %683, 0
  br i1 %684, label %685, label %715

685:                                              ; preds = %670
  %686 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %687 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %686, i32 0, i32 6
  %688 = load i32, i32* %687, align 8
  %689 = sext i32 %688 to i64
  %690 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %691 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %690, i32 0, i32 13
  %692 = load %struct.TYPE_21__*, %struct.TYPE_21__** %691, align 8
  %693 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %692, i32 0, i32 12
  %694 = load %struct.TYPE_20__*, %struct.TYPE_20__** %693, align 8
  %695 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %694, i32 0, i32 0
  %696 = load %struct.TYPE_19__*, %struct.TYPE_19__** %695, align 8
  %697 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %696, i32 0, i32 0
  %698 = load i64, i64* %697, align 8
  %699 = icmp eq i64 %689, %698
  br i1 %699, label %700, label %715

700:                                              ; preds = %685
  %701 = load i32, i32* @SRI_RECONF_SENT, align 4
  %702 = xor i32 %701, -1
  %703 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %704 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %703, i32 0, i32 3
  %705 = load i32, i32* %704, align 8
  %706 = and i32 %705, %702
  store i32 %706, i32* %704, align 8
  %707 = load i32, i32* @SRI_RECONF_INPROG, align 4
  %708 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %709 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %708, i32 0, i32 3
  %710 = load i32, i32* %709, align 8
  %711 = or i32 %710, %707
  store i32 %711, i32* %709, align 8
  %712 = load i32, i32* @LL_NOTICE, align 4
  %713 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %714 = call i32 (i32, i8*, %struct.TYPE_21__*, i8*, ...) @sentinelEvent(i32 %712, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), %struct.TYPE_21__* %713, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %715

715:                                              ; preds = %700, %685, %670, %665, %658
  %716 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %717 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %716, i32 0, i32 3
  %718 = load i32, i32* %717, align 8
  %719 = load i32, i32* @SRI_RECONF_INPROG, align 4
  %720 = and i32 %718, %719
  %721 = icmp ne i32 %720, 0
  br i1 %721, label %722, label %743

722:                                              ; preds = %715
  %723 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %724 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %723, i32 0, i32 7
  %725 = load i64, i64* %724, align 8
  %726 = load i64, i64* @SENTINEL_MASTER_LINK_STATUS_UP, align 8
  %727 = icmp eq i64 %725, %726
  br i1 %727, label %728, label %743

728:                                              ; preds = %722
  %729 = load i32, i32* @SRI_RECONF_INPROG, align 4
  %730 = xor i32 %729, -1
  %731 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %732 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %731, i32 0, i32 3
  %733 = load i32, i32* %732, align 8
  %734 = and i32 %733, %730
  store i32 %734, i32* %732, align 8
  %735 = load i32, i32* @SRI_RECONF_DONE, align 4
  %736 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %737 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %736, i32 0, i32 3
  %738 = load i32, i32* %737, align 8
  %739 = or i32 %738, %735
  store i32 %739, i32* %737, align 8
  %740 = load i32, i32* @LL_NOTICE, align 4
  %741 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %742 = call i32 (i32, i8*, %struct.TYPE_21__*, i8*, ...) @sentinelEvent(i32 %740, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), %struct.TYPE_21__* %741, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %743

743:                                              ; preds = %728, %722, %715
  br label %744

744:                                              ; preds = %394, %743, %649, %645, %638
  ret void
}

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i8** @sdssplitlen(i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @sdsnewlen(i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sentinelEvent(i32, i8*, %struct.TYPE_21__*, i8*, ...) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @sentinelRedisInstanceLookupSlave(%struct.TYPE_21__*, i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local %struct.TYPE_21__* @createSentinelRedisInstance(i32*, i32, i8*, i8*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @sentinelFlushConfig(...) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @sdsfreesplitres(i8**, i32) #1

declare dso_local i32 @sentinelSimFailureCrash(...) #1

declare dso_local i32 @sentinelCallClientReconfScript(%struct.TYPE_21__*, i32, i8*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @sentinelForceHelloUpdateForMaster(%struct.TYPE_21__*) #1

declare dso_local i64 @sentinelMasterLooksSane(%struct.TYPE_21__*) #1

declare dso_local i64 @sentinelRedisInstanceNoDownFor(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @sentinelSendSlaveOf(%struct.TYPE_21__*, i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

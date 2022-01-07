; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_call.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_14__, i64, i32 }
%struct.TYPE_16__ = type { i32, %struct.redisCommand*, i32, i32, %struct.TYPE_13__* }
%struct.redisCommand = type { i32, i32, i32, i32 (%struct.TYPE_16__*)* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.redisCommand* }

@server = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@CMD_SKIP_MONITOR = common dso_local global i32 0, align 4
@CMD_ADMIN = common dso_local global i32 0, align 4
@CLIENT_FORCE_AOF = common dso_local global i32 0, align 4
@CLIENT_FORCE_REPL = common dso_local global i32 0, align 4
@CLIENT_PREVENT_PROP = common dso_local global i32 0, align 4
@CLIENT_LUA = common dso_local global i32 0, align 4
@CMD_CALL_SLOWLOG = common dso_local global i32 0, align 4
@CMD_CALL_STATS = common dso_local global i32 0, align 4
@CMD_SKIP_SLOWLOG = common dso_local global i32 0, align 4
@CMD_FAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fast-command\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@CMD_CALL_PROPAGATE = common dso_local global i32 0, align 4
@PROPAGATE_NONE = common dso_local global i32 0, align 4
@PROPAGATE_AOF = common dso_local global i32 0, align 4
@PROPAGATE_REPL = common dso_local global i32 0, align 4
@CLIENT_PREVENT_REPL_PROP = common dso_local global i32 0, align 4
@CMD_CALL_PROPAGATE_REPL = common dso_local global i32 0, align 4
@CLIENT_PREVENT_AOF_PROP = common dso_local global i32 0, align 4
@CMD_CALL_PROPAGATE_AOF = common dso_local global i32 0, align 4
@CMD_MODULE = common dso_local global i32 0, align 4
@CMD_READONLY = common dso_local global i32 0, align 4
@CLIENT_TRACKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @call(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.redisCommand*, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load %struct.redisCommand*, %struct.redisCommand** %21, align 8
  store %struct.redisCommand* %22, %struct.redisCommand** %9, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 3), align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 3), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 7), align 8
  %26 = call i64 @listLength(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %2
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 6), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.redisCommand*, %struct.redisCommand** %33, align 8
  %35 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CMD_SKIP_MONITOR, align 4
  %38 = load i32, i32* @CMD_ADMIN, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %31
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 7), align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @replicationFeedMonitors(%struct.TYPE_16__* %43, i32 %44, i32 %49, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %42, %31, %28, %2
  %58 = load i32, i32* @CLIENT_FORCE_AOF, align 4
  %59 = load i32, i32* @CLIENT_FORCE_REPL, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @CLIENT_PREVENT_PROP, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = bitcast %struct.TYPE_14__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 bitcast (%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 5) to i8*), i64 16, i1 false)
  %69 = call i32 @redisOpArrayInit(%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 5))
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 8
  store i64 %70, i64* %5, align 8
  %71 = call i32 @updateCachedTime(i32 0)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  store i32 %72, i32* %6, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load %struct.redisCommand*, %struct.redisCommand** %74, align 8
  %76 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %75, i32 0, i32 3
  %77 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = call i32 %77(%struct.TYPE_16__* %78)
  %80 = call i32 (...) @ustime()
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %7, align 4
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 8
  %84 = load i64, i64* %5, align 8
  %85 = sub nsw i64 %83, %84
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %5, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %57
  store i64 0, i64* %5, align 8
  br label %89

89:                                               ; preds = %88, %57
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 6), align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @CLIENT_LUA, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load i32, i32* @CMD_CALL_SLOWLOG, align 4
  %101 = load i32, i32* @CMD_CALL_STATS, align 4
  %102 = or i32 %100, %101
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %99, %92, %89
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @CLIENT_LUA, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %143

113:                                              ; preds = %106
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 4), align 8
  %115 = icmp ne %struct.TYPE_16__* %114, null
  br i1 %115, label %116, label %143

116:                                              ; preds = %113
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @CLIENT_FORCE_REPL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load i32, i32* @CLIENT_FORCE_REPL, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 4), align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %123, %116
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CLIENT_FORCE_AOF, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load i32, i32* @CLIENT_FORCE_AOF, align 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 4), align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %129
  br label %143

143:                                              ; preds = %142, %113, %106
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @CMD_CALL_SLOWLOG, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %181

148:                                              ; preds = %143
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load %struct.redisCommand*, %struct.redisCommand** %150, align 8
  %152 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @CMD_SKIP_SLOWLOG, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %181, label %157

157:                                              ; preds = %148
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  %160 = load %struct.redisCommand*, %struct.redisCommand** %159, align 8
  %161 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @CMD_FAST, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %167, i8** %11, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sdiv i32 %169, 1000
  %171 = call i32 @latencyAddSampleIfNeeded(i8* %168, i32 %170)
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @slowlogPushEntryIfNeeded(%struct.TYPE_16__* %172, i32 %175, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %157, %148, %143
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* @CMD_CALL_STATS, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %181
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.redisCommand*, %struct.redisCommand** %9, align 8
  %189 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load %struct.redisCommand*, %struct.redisCommand** %9, align 8
  %193 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %186, %181
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* @CMD_CALL_PROPAGATE, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %306

201:                                              ; preds = %196
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @CLIENT_PREVENT_PROP, align 4
  %206 = and i32 %204, %205
  %207 = load i32, i32* @CLIENT_PREVENT_PROP, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %306

209:                                              ; preds = %201
  %210 = load i32, i32* @PROPAGATE_NONE, align 4
  store i32 %210, i32* %12, align 4
  %211 = load i64, i64* %5, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %209
  %214 = load i32, i32* @PROPAGATE_AOF, align 4
  %215 = load i32, i32* @PROPAGATE_REPL, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* %12, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %12, align 4
  br label %219

219:                                              ; preds = %213, %209
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @CLIENT_FORCE_REPL, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %219
  %227 = load i32, i32* @PROPAGATE_REPL, align 4
  %228 = load i32, i32* %12, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %12, align 4
  br label %230

230:                                              ; preds = %226, %219
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @CLIENT_FORCE_AOF, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %230
  %238 = load i32, i32* @PROPAGATE_AOF, align 4
  %239 = load i32, i32* %12, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %12, align 4
  br label %241

241:                                              ; preds = %237, %230
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @CLIENT_PREVENT_REPL_PROP, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %241
  %249 = load i32, i32* %4, align 4
  %250 = load i32, i32* @CMD_CALL_PROPAGATE_REPL, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %248, %241
  %254 = load i32, i32* @PROPAGATE_REPL, align 4
  %255 = xor i32 %254, -1
  %256 = load i32, i32* %12, align 4
  %257 = and i32 %256, %255
  store i32 %257, i32* %12, align 4
  br label %258

258:                                              ; preds = %253, %248
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @CLIENT_PREVENT_AOF_PROP, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %270, label %265

265:                                              ; preds = %258
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* @CMD_CALL_PROPAGATE_AOF, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %275, label %270

270:                                              ; preds = %265, %258
  %271 = load i32, i32* @PROPAGATE_AOF, align 4
  %272 = xor i32 %271, -1
  %273 = load i32, i32* %12, align 4
  %274 = and i32 %273, %272
  store i32 %274, i32* %12, align 4
  br label %275

275:                                              ; preds = %270, %265
  %276 = load i32, i32* %12, align 4
  %277 = load i32, i32* @PROPAGATE_NONE, align 4
  %278 = icmp ne i32 %276, %277
  br i1 %278, label %279, label %305

279:                                              ; preds = %275
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 1
  %282 = load %struct.redisCommand*, %struct.redisCommand** %281, align 8
  %283 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @CMD_MODULE, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %305, label %288

288:                                              ; preds = %279
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 1
  %291 = load %struct.redisCommand*, %struct.redisCommand** %290, align 8
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 4
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* %12, align 4
  %304 = call i32 @propagate(%struct.redisCommand* %291, i32 %296, i32 %299, i32 %302, i32 %303)
  br label %305

305:                                              ; preds = %288, %279, %275
  br label %306

306:                                              ; preds = %305, %201, %196
  %307 = load i32, i32* @CLIENT_FORCE_AOF, align 4
  %308 = load i32, i32* @CLIENT_FORCE_REPL, align 4
  %309 = or i32 %307, %308
  %310 = load i32, i32* @CLIENT_PREVENT_PROP, align 4
  %311 = or i32 %309, %310
  %312 = xor i32 %311, -1
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = and i32 %315, %312
  store i32 %316, i32* %314, align 8
  %317 = load i32, i32* %8, align 4
  %318 = load i32, i32* @CLIENT_FORCE_AOF, align 4
  %319 = load i32, i32* @CLIENT_FORCE_REPL, align 4
  %320 = or i32 %318, %319
  %321 = load i32, i32* @CLIENT_PREVENT_PROP, align 4
  %322 = or i32 %320, %321
  %323 = and i32 %317, %322
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 8
  %328 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 5, i32 0), align 8
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %392

330:                                              ; preds = %306
  %331 = load i32, i32* %4, align 4
  %332 = load i32, i32* @CMD_CALL_PROPAGATE, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %390

335:                                              ; preds = %330
  store i32 0, i32* %13, align 4
  br label %336

336:                                              ; preds = %386, %335
  %337 = load i32, i32* %13, align 4
  %338 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 5, i32 0), align 8
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %389

340:                                              ; preds = %336
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 5, i32 1), align 8
  %342 = load i32, i32* %13, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i64 %343
  store %struct.TYPE_15__* %344, %struct.TYPE_15__** %14, align 8
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  store i32 %347, i32* %15, align 4
  %348 = load i32, i32* %4, align 4
  %349 = load i32, i32* @CMD_CALL_PROPAGATE_AOF, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %357, label %352

352:                                              ; preds = %340
  %353 = load i32, i32* @PROPAGATE_AOF, align 4
  %354 = xor i32 %353, -1
  %355 = load i32, i32* %15, align 4
  %356 = and i32 %355, %354
  store i32 %356, i32* %15, align 4
  br label %357

357:                                              ; preds = %352, %340
  %358 = load i32, i32* %4, align 4
  %359 = load i32, i32* @CMD_CALL_PROPAGATE_REPL, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %367, label %362

362:                                              ; preds = %357
  %363 = load i32, i32* @PROPAGATE_REPL, align 4
  %364 = xor i32 %363, -1
  %365 = load i32, i32* %15, align 4
  %366 = and i32 %365, %364
  store i32 %366, i32* %15, align 4
  br label %367

367:                                              ; preds = %362, %357
  %368 = load i32, i32* %15, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %385

370:                                              ; preds = %367
  %371 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 4
  %373 = load %struct.redisCommand*, %struct.redisCommand** %372, align 8
  %374 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %378 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %15, align 4
  %384 = call i32 @propagate(%struct.redisCommand* %373, i32 %376, i32 %379, i32 %382, i32 %383)
  br label %385

385:                                              ; preds = %370, %367
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %13, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %13, align 4
  br label %336

389:                                              ; preds = %336
  br label %390

390:                                              ; preds = %389, %330
  %391 = call i32 @redisOpArrayFree(%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 5))
  br label %392

392:                                              ; preds = %390, %306
  %393 = bitcast %struct.TYPE_14__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 5) to i8*), i8* align 8 %393, i64 16, i1 false)
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 1
  %396 = load %struct.redisCommand*, %struct.redisCommand** %395, align 8
  %397 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* @CMD_READONLY, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %428

402:                                              ; preds = %392
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @CLIENT_LUA, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %414

409:                                              ; preds = %402
  %410 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 4), align 8
  %411 = icmp ne %struct.TYPE_16__* %410, null
  br i1 %411, label %412, label %414

412:                                              ; preds = %409
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 4), align 8
  br label %416

414:                                              ; preds = %409, %402
  %415 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  br label %416

416:                                              ; preds = %414, %412
  %417 = phi %struct.TYPE_16__* [ %413, %412 ], [ %415, %414 ]
  store %struct.TYPE_16__* %417, %struct.TYPE_16__** %16, align 8
  %418 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @CLIENT_TRACKING, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %427

424:                                              ; preds = %416
  %425 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %426 = call i32 @trackingRememberKeys(%struct.TYPE_16__* %425)
  br label %427

427:                                              ; preds = %424, %416
  br label %428

428:                                              ; preds = %427, %392
  %429 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 3), align 8
  %430 = add nsw i32 %429, -1
  store i32 %430, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 3), align 8
  %431 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 2), align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 2), align 4
  ret void
}

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @replicationFeedMonitors(%struct.TYPE_16__*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @redisOpArrayInit(%struct.TYPE_14__*) #1

declare dso_local i32 @updateCachedTime(i32) #1

declare dso_local i32 @ustime(...) #1

declare dso_local i32 @latencyAddSampleIfNeeded(i8*, i32) #1

declare dso_local i32 @slowlogPushEntryIfNeeded(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @propagate(%struct.redisCommand*, i32, i32, i32, i32) #1

declare dso_local i32 @redisOpArrayFree(%struct.TYPE_14__*) #1

declare dso_local i32 @trackingRememberKeys(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

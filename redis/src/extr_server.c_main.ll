; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_main.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i64, i32, i32**, i8* }
%struct.timeval = type { i32 }

@LC_COLLATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@redisOutOfMemoryHandler = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"redis-check-rdb\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"redis-check-aof\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"--test-memory\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [59 x i8] c"Please specify the amount of memory to test in megabytes.\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Example: ./redis-server --test-memory 4096\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"--check-rdb\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [40 x i8] c"Sentinel config from STDIN not allowed.\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"Sentinel needs config file on disk to save state.  Exiting...\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo\00", align 1
@.str.16 = private unnamed_addr constant [72 x i8] c"Redis version=%s, bits=%d, commit=%s, modified=%d, pid=%d, just started\00", align 1
@REDIS_VERSION = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [119 x i8] c"Warning: no config file specified, using the default config. In order to specify a config file use %s /path/to/%s.conf\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"sentinel\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"redis\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Configuration loaded\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Server initialized\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [79 x i8] c"You can't have keys in a DB different than DB 0 when in Cluster mode. Exiting.\00", align 1
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [28 x i8] c"Ready to accept connections\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"The server is now ready to accept connections at %s\00", align 1
@.str.25 = private unnamed_addr constant [137 x i8] c"WARNING: You specified a maxmemory value that is less than 1MB (current value is %llu bytes). Are you sure this is what you really want?\00", align 1
@beforeSleep = common dso_local global i32 0, align 4
@afterSleep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @LC_COLLATE, align 4
  %13 = call i32 @setlocale(i32 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @tzset()
  %15 = load i32, i32* @redisOutOfMemoryHandler, align 4
  %16 = call i32 @zmalloc_set_oom_handler(i32 %15)
  %17 = call i32 @time(i32* null)
  %18 = call i32 (...) @getpid()
  %19 = xor i32 %17, %18
  %20 = call i32 @srand(i32 %19)
  %21 = call i32 @gettimeofday(%struct.timeval* %6, i32* null)
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %23 = call i32 @getRandomBytes(i32* %22, i32 64)
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %25 = call i32 @dictSetHashFunctionSeed(i32* %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i64 @checkForSentinelMode(i32 %26, i8** %27)
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8), align 8
  %29 = call i32 (...) @initServerConfig()
  %30 = call i32 (...) @ACLInit()
  %31 = call i32 (...) @moduleInitModulesSystem()
  %32 = call i32 (...) @tlsInit()
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @getAbsolutePath(i8* %35)
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 14), align 8
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 8, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32** @zmalloc(i32 %41)
  store i32** %42, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 13), align 8
  %43 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 13), align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* null, i32** %46, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %63, %2
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @zstrdup(i8* %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 13), align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* %58, i32** %62, align 8
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %47

66:                                               ; preds = %47
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8), align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = call i32 (...) @initSentinelConfig()
  %71 = call i32 (...) @initSentinel()
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32* @strstr(i8* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* %4, align 4
  %80 = load i8**, i8*** %5, align 8
  %81 = call i32 @redis_check_rdb_main(i32 %79, i8** %80, i32* null)
  br label %93

82:                                               ; preds = %72
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32* @strstr(i8* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* %4, align 4
  %90 = load i8**, i8*** %5, align 8
  %91 = call i32 @redis_check_aof_main(i32 %89, i8** %90)
  br label %92

92:                                               ; preds = %88, %82
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i32, i32* %4, align 4
  %95 = icmp sge i32 %94, 2
  br i1 %95, label %96, label %287

96:                                               ; preds = %93
  store i32 1, i32* %7, align 4
  %97 = call i32 (...) @sdsempty()
  store i32 %97, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %96
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103, %96
  %110 = call i32 (...) @version()
  br label %111

111:                                              ; preds = %109, %103
  %112 = load i8**, i8*** %5, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117, %111
  %124 = call i32 (...) @usage()
  br label %125

125:                                              ; preds = %123, %117
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %125
  %132 = load i32, i32* %4, align 4
  %133 = icmp eq i32 %132, 3
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 2
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @atoi(i8* %137)
  %139 = call i32 @memtest(i32 %138, i32 50)
  %140 = call i32 @exit(i32 0) #3
  unreachable

141:                                              ; preds = %131
  %142 = load i32, i32* @stderr, align 4
  %143 = call i32 @fprintf(i32 %142, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0))
  %144 = load i32, i32* @stderr, align 4
  %145 = call i32 @fprintf(i32 %144, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %146 = call i32 @exit(i32 1) #3
  unreachable

147:                                              ; preds = %125
  %148 = load i8**, i8*** %5, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 45
  br i1 %156, label %167, label %157

157:                                              ; preds = %147
  %158 = load i8**, i8*** %5, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 1
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 45
  br i1 %166, label %167, label %190

167:                                              ; preds = %157, %147
  %168 = load i8**, i8*** %5, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** %10, align 8
  %173 = load i8*, i8** %10, align 8
  %174 = call i8* @getAbsolutePath(i8* %173)
  store i8* %174, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %175 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 13), align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @zfree(i32* %179)
  %181 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %182 = call i8* @zstrdup(i8* %181)
  %183 = bitcast i8* %182 to i32*
  %184 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 13), align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32*, i32** %184, i64 %186
  store i32* %183, i32** %187, align 8
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %167, %157
  br label %191

191:                                              ; preds = %260, %223, %190
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %4, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %263

195:                                              ; preds = %191
  %196 = load i8**, i8*** %5, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %196, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 45
  br i1 %204, label %205, label %244

205:                                              ; preds = %195
  %206 = load i8**, i8*** %5, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 1
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 45
  br i1 %214, label %215, label %244

215:                                              ; preds = %205
  %216 = load i8**, i8*** %5, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = call i64 @strcmp(i8* %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %215
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %7, align 4
  br label %191

226:                                              ; preds = %215
  %227 = load i32, i32* %9, align 4
  %228 = call i64 @sdslen(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @sdscat(i32 %231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32 %232, i32* %9, align 4
  br label %233

233:                                              ; preds = %230, %226
  %234 = load i32, i32* %9, align 4
  %235 = load i8**, i8*** %5, align 8
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %235, i64 %237
  %239 = load i8*, i8** %238, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 2
  %241 = call i32 @sdscat(i32 %234, i8* %240)
  store i32 %241, i32* %9, align 4
  %242 = load i32, i32* %9, align 4
  %243 = call i32 @sdscat(i32 %242, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32 %243, i32* %9, align 4
  br label %260

244:                                              ; preds = %205, %195
  %245 = load i32, i32* %9, align 4
  %246 = load i8**, i8*** %5, align 8
  %247 = load i32, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %246, i64 %248
  %250 = load i8*, i8** %249, align 8
  %251 = load i8**, i8*** %5, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %251, i64 %253
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @strlen(i8* %255)
  %257 = call i32 @sdscatrepr(i32 %245, i8* %250, i32 %256)
  store i32 %257, i32* %9, align 4
  %258 = load i32, i32* %9, align 4
  %259 = call i32 @sdscat(i32 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32 %259, i32* %9, align 4
  br label %260

260:                                              ; preds = %244, %233
  %261 = load i32, i32* %7, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %7, align 4
  br label %191

263:                                              ; preds = %191
  %264 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8), align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %280

266:                                              ; preds = %263
  %267 = load i8*, i8** %10, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %280

269:                                              ; preds = %266
  %270 = load i8*, i8** %10, align 8
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 45
  br i1 %273, label %274, label %280

274:                                              ; preds = %269
  %275 = load i32, i32* @LL_WARNING, align 4
  %276 = call i32 (i32, i8*, ...) @serverLog(i32 %275, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  %277 = load i32, i32* @LL_WARNING, align 4
  %278 = call i32 (i32, i8*, ...) @serverLog(i32 %277, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0))
  %279 = call i32 @exit(i32 1) #3
  unreachable

280:                                              ; preds = %269, %266, %263
  %281 = call i32 (...) @resetServerSaveParams()
  %282 = load i8*, i8** %10, align 8
  %283 = load i32, i32* %9, align 4
  %284 = call i32 @loadServerConfig(i8* %282, i32 %283)
  %285 = load i32, i32* %9, align 4
  %286 = call i32 @sdsfree(i32 %285)
  br label %287

287:                                              ; preds = %280, %93
  %288 = load i32, i32* @LL_WARNING, align 4
  %289 = call i32 (i32, i8*, ...) @serverLog(i32 %288, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0))
  %290 = load i32, i32* @LL_WARNING, align 4
  %291 = load i32, i32* @REDIS_VERSION, align 4
  %292 = call i32 (...) @redisGitSHA1()
  %293 = call i32 (...) @redisGitDirty()
  %294 = call i64 @strtol(i32 %293, i32* null, i32 10)
  %295 = icmp sgt i64 %294, 0
  %296 = zext i1 %295 to i32
  %297 = call i32 (...) @getpid()
  %298 = call i32 (i32, i8*, ...) @serverLog(i32 %290, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.16, i64 0, i64 0), i32 %291, i32 64, i32 %292, i32 %296, i32 %297)
  %299 = load i32, i32* %4, align 4
  %300 = icmp eq i32 %299, 1
  br i1 %300, label %301, label %311

301:                                              ; preds = %287
  %302 = load i32, i32* @LL_WARNING, align 4
  %303 = load i8**, i8*** %5, align 8
  %304 = getelementptr inbounds i8*, i8** %303, i64 0
  %305 = load i8*, i8** %304, align 8
  %306 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8), align 8
  %307 = icmp ne i64 %306, 0
  %308 = zext i1 %307 to i64
  %309 = select i1 %307, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)
  %310 = call i32 (i32, i8*, ...) @serverLog(i32 %302, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.17, i64 0, i64 0), i8* %305, i8* %309)
  br label %314

311:                                              ; preds = %287
  %312 = load i32, i32* @LL_WARNING, align 4
  %313 = call i32 (i32, i8*, ...) @serverLog(i32 %312, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  br label %314

314:                                              ; preds = %311, %301
  %315 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 12), align 8
  %316 = call i32 @redisIsSupervised(i32 %315)
  store i32 %316, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 10), align 8
  %317 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 11), align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %314
  %320 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 10), align 8
  %321 = icmp ne i32 %320, 0
  %322 = xor i1 %321, true
  br label %323

323:                                              ; preds = %319, %314
  %324 = phi i1 [ false, %314 ], [ %322, %319 ]
  %325 = zext i1 %324 to i32
  store i32 %325, i32* %11, align 4
  %326 = load i32, i32* %11, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %323
  %329 = call i32 (...) @daemonize()
  br label %330

330:                                              ; preds = %328, %323
  %331 = call i32 (...) @initServer()
  %332 = load i32, i32* %11, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %330
  %335 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %334, %330
  %338 = call i32 (...) @createPidFile()
  br label %339

339:                                              ; preds = %337, %334
  %340 = load i8**, i8*** %5, align 8
  %341 = getelementptr inbounds i8*, i8** %340, i64 0
  %342 = load i8*, i8** %341, align 8
  %343 = call i32 @redisSetProcTitle(i8* %342)
  %344 = call i32 (...) @redisAsciiArt()
  %345 = call i32 (...) @checkTcpBacklogSettings()
  %346 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8), align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %384, label %348

348:                                              ; preds = %339
  %349 = load i32, i32* @LL_WARNING, align 4
  %350 = call i32 (i32, i8*, ...) @serverLog(i32 %349, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %351 = call i32 (...) @linuxMemoryWarnings()
  %352 = call i32 (...) @moduleLoadFromQueue()
  %353 = call i32 (...) @ACLLoadUsersAtStartup()
  %354 = call i32 (...) @InitServerLast()
  %355 = call i32 (...) @loadDataFromDisk()
  %356 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %367

358:                                              ; preds = %348
  %359 = call i64 (...) @verifyClusterConfigWithData()
  %360 = load i64, i64* @C_ERR, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %366

362:                                              ; preds = %358
  %363 = load i32, i32* @LL_WARNING, align 4
  %364 = call i32 (i32, i8*, ...) @serverLog(i32 %363, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.22, i64 0, i64 0))
  %365 = call i32 @exit(i32 1) #3
  unreachable

366:                                              ; preds = %358
  br label %367

367:                                              ; preds = %366, %348
  %368 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %369 = icmp sgt i64 %368, 0
  br i1 %369, label %373, label %370

370:                                              ; preds = %367
  %371 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %372 = icmp sgt i64 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %370, %367
  %374 = load i32, i32* @LL_NOTICE, align 4
  %375 = call i32 (i32, i8*, ...) @serverLog(i32 %374, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0))
  br label %376

376:                                              ; preds = %373, %370
  %377 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %378 = icmp sgt i64 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %376
  %380 = load i32, i32* @LL_NOTICE, align 4
  %381 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %382 = call i32 (i32, i8*, ...) @serverLog(i32 %380, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.24, i64 0, i64 0), i32 %381)
  br label %383

383:                                              ; preds = %379, %376
  br label %387

384:                                              ; preds = %339
  %385 = call i32 (...) @InitServerLast()
  %386 = call i32 (...) @sentinelIsRunning()
  br label %387

387:                                              ; preds = %384, %383
  %388 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 4
  %389 = icmp sgt i32 %388, 0
  br i1 %389, label %390, label %397

390:                                              ; preds = %387
  %391 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 4
  %392 = icmp slt i32 %391, 1048576
  br i1 %392, label %393, label %397

393:                                              ; preds = %390
  %394 = load i32, i32* @LL_WARNING, align 4
  %395 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 4
  %396 = call i32 (i32, i8*, ...) @serverLog(i32 %394, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.25, i64 0, i64 0), i32 %395)
  br label %397

397:                                              ; preds = %393, %390, %387
  %398 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %399 = load i32, i32* @beforeSleep, align 4
  %400 = call i32 @aeSetBeforeSleepProc(i32 %398, i32 %399)
  %401 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %402 = load i32, i32* @afterSleep, align 4
  %403 = call i32 @aeSetAfterSleepProc(i32 %401, i32 %402)
  %404 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %405 = call i32 @aeMain(i32 %404)
  %406 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %407 = call i32 @aeDeleteEventLoop(i32 %406)
  ret i32 0
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @tzset(...) #1

declare dso_local i32 @zmalloc_set_oom_handler(i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @getRandomBytes(i32*, i32) #1

declare dso_local i32 @dictSetHashFunctionSeed(i32*) #1

declare dso_local i64 @checkForSentinelMode(i32, i8**) #1

declare dso_local i32 @initServerConfig(...) #1

declare dso_local i32 @ACLInit(...) #1

declare dso_local i32 @moduleInitModulesSystem(...) #1

declare dso_local i32 @tlsInit(...) #1

declare dso_local i8* @getAbsolutePath(i8*) #1

declare dso_local i32** @zmalloc(i32) #1

declare dso_local i8* @zstrdup(i8*) #1

declare dso_local i32 @initSentinelConfig(...) #1

declare dso_local i32 @initSentinel(...) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @redis_check_rdb_main(i32, i8**, i32*) #1

declare dso_local i32 @redis_check_aof_main(i32, i8**) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @version(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @memtest(i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i64 @sdslen(i32) #1

declare dso_local i32 @sdscat(i32, i8*) #1

declare dso_local i32 @sdscatrepr(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @resetServerSaveParams(...) #1

declare dso_local i32 @loadServerConfig(i8*, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @redisGitSHA1(...) #1

declare dso_local i64 @strtol(i32, i32*, i32) #1

declare dso_local i32 @redisGitDirty(...) #1

declare dso_local i32 @redisIsSupervised(i32) #1

declare dso_local i32 @daemonize(...) #1

declare dso_local i32 @initServer(...) #1

declare dso_local i32 @createPidFile(...) #1

declare dso_local i32 @redisSetProcTitle(i8*) #1

declare dso_local i32 @redisAsciiArt(...) #1

declare dso_local i32 @checkTcpBacklogSettings(...) #1

declare dso_local i32 @linuxMemoryWarnings(...) #1

declare dso_local i32 @moduleLoadFromQueue(...) #1

declare dso_local i32 @ACLLoadUsersAtStartup(...) #1

declare dso_local i32 @InitServerLast(...) #1

declare dso_local i32 @loadDataFromDisk(...) #1

declare dso_local i64 @verifyClusterConfigWithData(...) #1

declare dso_local i32 @sentinelIsRunning(...) #1

declare dso_local i32 @aeSetBeforeSleepProc(i32, i32) #1

declare dso_local i32 @aeSetAfterSleepProc(i32, i32) #1

declare dso_local i32 @aeMain(i32) #1

declare dso_local i32 @aeDeleteEventLoop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

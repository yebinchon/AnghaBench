; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbLoadRio.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbLoadRio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i64, i64, i32*, i32, %struct.TYPE_39__*, i64, i32 }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32, i32, i32 }
%struct.TYPE_40__ = type { i32, i8*, i32, i8* }
%struct.TYPE_37__ = type { i8* }
%struct.TYPE_41__ = type { i64 (%struct.TYPE_42__*, i32, i32)* }
%struct.TYPE_42__ = type { i32, i64, i64 }

@server = common dso_local global %struct.TYPE_36__ zeroinitializer, align 8
@rdbLoadProgressCallback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"REDIS\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Wrong signature trying to load DB from file\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@RDB_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Can't handle RDB format version %d\00", align 1
@RDB_OPCODE_EXPIRETIME = common dso_local global i32 0, align 4
@RDB_OPCODE_EXPIRETIME_MS = common dso_local global i32 0, align 4
@RDB_OPCODE_FREQ = common dso_local global i32 0, align 4
@RDB_OPCODE_IDLE = common dso_local global i32 0, align 4
@RDB_LENERR = common dso_local global i32 0, align 4
@RDB_OPCODE_EOF = common dso_local global i32 0, align 4
@RDB_OPCODE_SELECTDB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [103 x i8] c"FATAL: Data file was created with a Redis server configured to handle more than %d databases. Exiting\0A\00", align 1
@RDB_OPCODE_RESIZEDB = common dso_local global i32 0, align 4
@RDB_OPCODE_AUX = common dso_local global i32 0, align 4
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"RDB '%s': %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"repl-stream-db\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"repl-id\00", align 1
@CONFIG_RUN_ID_SIZE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"repl-offset\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"lua\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Can't load Lua script from RDB file! BODY: %s\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"redis-ver\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Loading RDB produced by version %s\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"RDB age %ld seconds\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"used-mem\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"RDB memory usage when created %.2f Mb\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"aof-preamble\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"RDB has an AOF tail\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"redis-bits\00", align 1
@LL_DEBUG = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [33 x i8] c"Unrecognized RDB AUX field: '%s'\00", align 1
@RDB_OPCODE_MODULE_AUX = common dso_local global i32 0, align 4
@RDB_MODULE_OPCODE_UINT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"bad when_opcode\00", align 1
@rdbCheckMode = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [76 x i8] c"The RDB file contains AUX module data I can't load: no matching module '%s'\00", align 1
@.str.22 = private unnamed_addr constant [87 x i8] c"The RDB file contains module AUX data, but the module '%s' doesn't seem to support it.\00", align 1
@.str.23 = private unnamed_addr constant [163 x i8] c"The RDB file contains module AUX data for the module type '%s', that the responsible module is not able to load. Check for modules log above for additional clues.\00", align 1
@RDB_MODULE_OPCODE_EOF = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [119 x i8] c"The RDB file contains module AUX data for the module '%s' that is not terminated by the proper module value EOF marker\00", align 1
@RDBFLAGS_AOF_PREAMBLE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [63 x i8] c"RDB file was saved with checksum disabled: no check performed.\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"Wrong RDB checksum. Aborting now.\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"RDB CRC error\00", align 1
@C_OK = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [65 x i8] c"Short read or OOM loading DB. Unrecoverable error, aborting now.\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Unexpected EOF reading RDB file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbLoadRio(%struct.TYPE_38__* %0, i32 %1, %struct.TYPE_40__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_39__*, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_37__*, align 8
  %19 = alloca %struct.TYPE_37__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_37__*, align 8
  %25 = alloca %struct.TYPE_37__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_41__*, align 8
  %33 = alloca [10 x i8], align 1
  %34 = alloca %struct.TYPE_42__, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_37__*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_40__* %2, %struct.TYPE_40__** %7, align 8
  %39 = load %struct.TYPE_39__*, %struct.TYPE_39__** getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @server, i32 0, i32 4), align 8
  %40 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %39, i64 0
  store %struct.TYPE_39__* %40, %struct.TYPE_39__** %11, align 8
  %41 = load i32, i32* @rdbLoadProgressCallback, align 4
  %42 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @server, i32 0, i32 6), align 8
  %45 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %49 = call i64 (%struct.TYPE_38__*, ...) @rioRead(%struct.TYPE_38__* %47, i8* %48, i32 9)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %3
  br label %619

52:                                               ; preds = %3
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 9
  store i8 0, i8* %53, align 1
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %55 = call i64 @memcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* @LL_WARNING, align 4
  %59 = call i32 (i32, i8*, ...) @serverLog(i32 %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* @errno, align 4
  %61 = load i32, i32* @C_ERR, align 4
  store i32 %61, i32* %4, align 4
  br label %624

62:                                               ; preds = %52
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %64 = getelementptr inbounds i8, i8* %63, i64 5
  %65 = call i8* @atoi(i8* %64)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @RDB_VERSION, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69, %62
  %74 = load i32, i32* @LL_WARNING, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (i32, i8*, ...) @serverLog(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* @errno, align 4
  %78 = load i32, i32* @C_ERR, align 4
  store i32 %78, i32* %4, align 4
  br label %624

79:                                               ; preds = %69
  store i64 -1, i64* %13, align 8
  store i64 -1, i64* %14, align 8
  store i64 -1, i64* %15, align 8
  %80 = call i64 (...) @mstime()
  store i64 %80, i64* %16, align 8
  %81 = call i64 (...) @LRU_CLOCK()
  store i64 %81, i64* %17, align 8
  br label %82

82:                                               ; preds = %79, %100, %113, %123, %137, %166, %189, %400, %509, %510, %584
  %83 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %84 = call i32 @rdbLoadType(%struct.TYPE_38__* %83)
  store i32 %84, i32* %9, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %619

87:                                               ; preds = %82
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @RDB_OPCODE_EXPIRETIME, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %93 = call i64 @rdbLoadTime(%struct.TYPE_38__* %92)
  store i64 %93, i64* %15, align 8
  %94 = load i64, i64* %15, align 8
  %95 = mul nsw i64 %94, 1000
  store i64 %95, i64* %15, align 8
  %96 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %97 = call i64 @rioGetReadError(%struct.TYPE_38__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %619

100:                                              ; preds = %91
  br label %82

101:                                              ; preds = %87
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @RDB_OPCODE_EXPIRETIME_MS, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i64 @rdbLoadMillisecondTime(%struct.TYPE_38__* %106, i32 %107)
  store i64 %108, i64* %15, align 8
  %109 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %110 = call i64 @rioGetReadError(%struct.TYPE_38__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %619

113:                                              ; preds = %105
  br label %82

114:                                              ; preds = %101
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @RDB_OPCODE_FREQ, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %120 = call i64 (%struct.TYPE_38__*, ...) @rioRead(%struct.TYPE_38__* %119, i32* %20, i32 1)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %619

123:                                              ; preds = %118
  %124 = load i32, i32* %20, align 4
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %14, align 8
  br label %82

126:                                              ; preds = %114
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @RDB_OPCODE_IDLE, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %132 = call i8* @rdbLoadLen(%struct.TYPE_38__* %131, i32* null)
  %133 = ptrtoint i8* %132 to i32
  store i32 %133, i32* %21, align 4
  %134 = load i32, i32* @RDB_LENERR, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %619

137:                                              ; preds = %130
  %138 = load i32, i32* %21, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %13, align 8
  br label %82

140:                                              ; preds = %126
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @RDB_OPCODE_EOF, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %585

145:                                              ; preds = %140
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @RDB_OPCODE_SELECTDB, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %171

149:                                              ; preds = %145
  %150 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %151 = call i8* @rdbLoadLen(%struct.TYPE_38__* %150, i32* null)
  %152 = ptrtoint i8* %151 to i32
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* @RDB_LENERR, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  br label %619

156:                                              ; preds = %149
  %157 = load i32, i32* %8, align 4
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @server, i32 0, i32 5), align 8
  %159 = trunc i64 %158 to i32
  %160 = icmp uge i32 %157, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load i32, i32* @LL_WARNING, align 4
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @server, i32 0, i32 5), align 8
  %164 = call i32 (i32, i8*, ...) @serverLog(i32 %162, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i64 %163)
  %165 = call i32 @exit(i32 1) #3
  unreachable

166:                                              ; preds = %156
  %167 = load %struct.TYPE_39__*, %struct.TYPE_39__** getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @server, i32 0, i32 4), align 8
  %168 = load i32, i32* %8, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %167, i64 %169
  store %struct.TYPE_39__* %170, %struct.TYPE_39__** %11, align 8
  br label %82

171:                                              ; preds = %145
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @RDB_OPCODE_RESIZEDB, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %200

175:                                              ; preds = %171
  %176 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %177 = call i8* @rdbLoadLen(%struct.TYPE_38__* %176, i32* null)
  %178 = ptrtoint i8* %177 to i32
  store i32 %178, i32* %22, align 4
  %179 = load i32, i32* @RDB_LENERR, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %619

182:                                              ; preds = %175
  %183 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %184 = call i8* @rdbLoadLen(%struct.TYPE_38__* %183, i32* null)
  %185 = ptrtoint i8* %184 to i32
  store i32 %185, i32* %23, align 4
  %186 = load i32, i32* @RDB_LENERR, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  br label %619

189:                                              ; preds = %182
  %190 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %22, align 4
  %194 = call i32 @dictExpand(i32 %192, i32 %193)
  %195 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %23, align 4
  %199 = call i32 @dictExpand(i32 %197, i32 %198)
  br label %82

200:                                              ; preds = %171
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @RDB_OPCODE_AUX, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %405

204:                                              ; preds = %200
  %205 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %206 = call %struct.TYPE_37__* @rdbLoadStringObject(%struct.TYPE_38__* %205)
  store %struct.TYPE_37__* %206, %struct.TYPE_37__** %24, align 8
  %207 = icmp eq %struct.TYPE_37__* %206, null
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %619

209:                                              ; preds = %204
  %210 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %211 = call %struct.TYPE_37__* @rdbLoadStringObject(%struct.TYPE_38__* %210)
  store %struct.TYPE_37__* %211, %struct.TYPE_37__** %25, align 8
  %212 = icmp eq %struct.TYPE_37__* %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  br label %619

214:                                              ; preds = %209
  %215 = load %struct.TYPE_37__*, %struct.TYPE_37__** %24, align 8
  %216 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 37
  br i1 %221, label %222, label %231

222:                                              ; preds = %214
  %223 = load i32, i32* @LL_NOTICE, align 4
  %224 = load %struct.TYPE_37__*, %struct.TYPE_37__** %24, align 8
  %225 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %228 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 (i32, i8*, ...) @serverLog(i32 %223, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %226, i8* %229)
  br label %400

231:                                              ; preds = %214
  %232 = load %struct.TYPE_37__*, %struct.TYPE_37__** %24, align 8
  %233 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @strcasecmp(i8* %234, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %248, label %237

237:                                              ; preds = %231
  %238 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %239 = icmp ne %struct.TYPE_40__* %238, null
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %242 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = call i8* @atoi(i8* %243)
  %245 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %245, i32 0, i32 3
  store i8* %244, i8** %246, align 8
  br label %247

247:                                              ; preds = %240, %237
  br label %399

248:                                              ; preds = %231
  %249 = load %struct.TYPE_37__*, %struct.TYPE_37__** %24, align 8
  %250 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @strcasecmp(i8* %251, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %277, label %254

254:                                              ; preds = %248
  %255 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %256 = icmp ne %struct.TYPE_40__* %255, null
  br i1 %256, label %257, label %276

257:                                              ; preds = %254
  %258 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %259 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = call i64 @sdslen(i8* %260)
  %262 = load i64, i64* @CONFIG_RUN_ID_SIZE, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %276

264:                                              ; preds = %257
  %265 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %269 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %268, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = load i64, i64* @CONFIG_RUN_ID_SIZE, align 8
  %272 = add nsw i64 %271, 1
  %273 = call i32 @memcpy(i32 %267, i8* %270, i64 %272)
  %274 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %274, i32 0, i32 0
  store i32 1, i32* %275, align 8
  br label %276

276:                                              ; preds = %264, %257, %254
  br label %398

277:                                              ; preds = %248
  %278 = load %struct.TYPE_37__*, %struct.TYPE_37__** %24, align 8
  %279 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @strcasecmp(i8* %280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %294, label %283

283:                                              ; preds = %277
  %284 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %285 = icmp ne %struct.TYPE_40__* %284, null
  br i1 %285, label %286, label %293

286:                                              ; preds = %283
  %287 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %288 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = call i8* @strtoll(i8* %289, i32* null, i32 10)
  %291 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %291, i32 0, i32 1
  store i8* %290, i8** %292, align 8
  br label %293

293:                                              ; preds = %286, %283
  br label %397

294:                                              ; preds = %277
  %295 = load %struct.TYPE_37__*, %struct.TYPE_37__** %24, align 8
  %296 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @strcasecmp(i8* %297, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %311, label %300

300:                                              ; preds = %294
  %301 = load i32, i32* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @server, i32 0, i32 3), align 8
  %302 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %303 = call i32* @luaCreateFunction(i32* null, i32 %301, %struct.TYPE_37__* %302)
  %304 = icmp eq i32* %303, null
  br i1 %304, label %305, label %310

305:                                              ; preds = %300
  %306 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %307 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = call i32 (i8*, ...) @rdbExitReportCorruptRDB(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* %308)
  br label %310

310:                                              ; preds = %305, %300
  br label %396

311:                                              ; preds = %294
  %312 = load %struct.TYPE_37__*, %struct.TYPE_37__** %24, align 8
  %313 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 @strcasecmp(i8* %314, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %323, label %317

317:                                              ; preds = %311
  %318 = load i32, i32* @LL_NOTICE, align 4
  %319 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %320 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %319, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8
  %322 = call i32 (i32, i8*, ...) @serverLog(i32 %318, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* %321)
  br label %395

323:                                              ; preds = %311
  %324 = load %struct.TYPE_37__*, %struct.TYPE_37__** %24, align 8
  %325 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 @strcasecmp(i8* %326, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %343, label %329

329:                                              ; preds = %323
  %330 = call i64 @time(i32* null)
  %331 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %332 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %331, i32 0, i32 0
  %333 = load i8*, i8** %332, align 8
  %334 = call i64 @strtol(i8* %333, i32* null, i32 10)
  %335 = sub nsw i64 %330, %334
  store i64 %335, i64* %26, align 8
  %336 = load i64, i64* %26, align 8
  %337 = icmp slt i64 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %329
  store i64 0, i64* %26, align 8
  br label %339

339:                                              ; preds = %338, %329
  %340 = load i32, i32* @LL_NOTICE, align 4
  %341 = load i64, i64* %26, align 8
  %342 = call i32 (i32, i8*, ...) @serverLog(i32 %340, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i64 %341)
  br label %394

343:                                              ; preds = %323
  %344 = load %struct.TYPE_37__*, %struct.TYPE_37__** %24, align 8
  %345 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %344, i32 0, i32 0
  %346 = load i8*, i8** %345, align 8
  %347 = call i32 @strcasecmp(i8* %346, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %360, label %349

349:                                              ; preds = %343
  %350 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %351 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %350, i32 0, i32 0
  %352 = load i8*, i8** %351, align 8
  %353 = call i8* @strtoll(i8* %352, i32* null, i32 10)
  %354 = ptrtoint i8* %353 to i64
  store i64 %354, i64* %27, align 8
  %355 = load i32, i32* @LL_NOTICE, align 4
  %356 = load i64, i64* %27, align 8
  %357 = sitofp i64 %356 to double
  %358 = fdiv double %357, 0x4130000000000000
  %359 = call i32 (i32, i8*, ...) @serverLog(i32 %355, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), double %358)
  br label %393

360:                                              ; preds = %343
  %361 = load %struct.TYPE_37__*, %struct.TYPE_37__** %24, align 8
  %362 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %361, i32 0, i32 0
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 @strcasecmp(i8* %363, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %378, label %366

366:                                              ; preds = %360
  %367 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %368 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %367, i32 0, i32 0
  %369 = load i8*, i8** %368, align 8
  %370 = call i8* @strtoll(i8* %369, i32* null, i32 10)
  %371 = ptrtoint i8* %370 to i64
  store i64 %371, i64* %28, align 8
  %372 = load i64, i64* %28, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %366
  %375 = load i32, i32* @LL_NOTICE, align 4
  %376 = call i32 (i32, i8*, ...) @serverLog(i32 %375, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  br label %377

377:                                              ; preds = %374, %366
  br label %392

378:                                              ; preds = %360
  %379 = load %struct.TYPE_37__*, %struct.TYPE_37__** %24, align 8
  %380 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %379, i32 0, i32 0
  %381 = load i8*, i8** %380, align 8
  %382 = call i32 @strcasecmp(i8* %381, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %385, label %384

384:                                              ; preds = %378
  br label %391

385:                                              ; preds = %378
  %386 = load i32, i32* @LL_DEBUG, align 4
  %387 = load %struct.TYPE_37__*, %struct.TYPE_37__** %24, align 8
  %388 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %387, i32 0, i32 0
  %389 = load i8*, i8** %388, align 8
  %390 = call i32 (i32, i8*, ...) @serverLog(i32 %386, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i8* %389)
  br label %391

391:                                              ; preds = %385, %384
  br label %392

392:                                              ; preds = %391, %377
  br label %393

393:                                              ; preds = %392, %349
  br label %394

394:                                              ; preds = %393, %339
  br label %395

395:                                              ; preds = %394, %317
  br label %396

396:                                              ; preds = %395, %310
  br label %397

397:                                              ; preds = %396, %293
  br label %398

398:                                              ; preds = %397, %276
  br label %399

399:                                              ; preds = %398, %247
  br label %400

400:                                              ; preds = %399, %222
  %401 = load %struct.TYPE_37__*, %struct.TYPE_37__** %24, align 8
  %402 = call i32 @decrRefCount(%struct.TYPE_37__* %401)
  %403 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %404 = call i32 @decrRefCount(%struct.TYPE_37__* %403)
  br label %82

405:                                              ; preds = %200
  %406 = load i32, i32* %9, align 4
  %407 = load i32, i32* @RDB_OPCODE_MODULE_AUX, align 4
  %408 = icmp eq i32 %406, %407
  br i1 %408, label %409, label %516

409:                                              ; preds = %405
  %410 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %411 = call i8* @rdbLoadLen(%struct.TYPE_38__* %410, i32* null)
  %412 = ptrtoint i8* %411 to i32
  store i32 %412, i32* %29, align 4
  %413 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %414 = call i8* @rdbLoadLen(%struct.TYPE_38__* %413, i32* null)
  %415 = ptrtoint i8* %414 to i32
  store i32 %415, i32* %30, align 4
  %416 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %417 = call i8* @rdbLoadLen(%struct.TYPE_38__* %416, i32* null)
  %418 = ptrtoint i8* %417 to i32
  store i32 %418, i32* %31, align 4
  %419 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %420 = call i64 @rioGetReadError(%struct.TYPE_38__* %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %409
  br label %619

423:                                              ; preds = %409
  %424 = load i32, i32* %30, align 4
  %425 = load i32, i32* @RDB_MODULE_OPCODE_UINT, align 4
  %426 = icmp ne i32 %424, %425
  br i1 %426, label %427, label %429

427:                                              ; preds = %423
  %428 = call i32 @rdbReportReadError(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  br label %429

429:                                              ; preds = %427, %423
  %430 = load i32, i32* %29, align 4
  %431 = call %struct.TYPE_41__* @moduleTypeLookupModuleByID(i32 %430)
  store %struct.TYPE_41__* %431, %struct.TYPE_41__** %32, align 8
  %432 = getelementptr inbounds [10 x i8], [10 x i8]* %33, i64 0, i64 0
  %433 = load i32, i32* %29, align 4
  %434 = call i32 @moduleTypeNameByID(i8* %432, i32 %433)
  %435 = load i32, i32* @rdbCheckMode, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %445, label %437

437:                                              ; preds = %429
  %438 = load %struct.TYPE_41__*, %struct.TYPE_41__** %32, align 8
  %439 = icmp eq %struct.TYPE_41__* %438, null
  br i1 %439, label %440, label %445

440:                                              ; preds = %437
  %441 = load i32, i32* @LL_WARNING, align 4
  %442 = getelementptr inbounds [10 x i8], [10 x i8]* %33, i64 0, i64 0
  %443 = call i32 (i32, i8*, ...) @serverLog(i32 %441, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.21, i64 0, i64 0), i8* %442)
  %444 = call i32 @exit(i32 1) #3
  unreachable

445:                                              ; preds = %437, %429
  %446 = load i32, i32* @rdbCheckMode, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %510, label %448

448:                                              ; preds = %445
  %449 = load %struct.TYPE_41__*, %struct.TYPE_41__** %32, align 8
  %450 = icmp ne %struct.TYPE_41__* %449, null
  br i1 %450, label %451, label %510

451:                                              ; preds = %448
  %452 = load %struct.TYPE_41__*, %struct.TYPE_41__** %32, align 8
  %453 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %452, i32 0, i32 0
  %454 = load i64 (%struct.TYPE_42__*, i32, i32)*, i64 (%struct.TYPE_42__*, i32, i32)** %453, align 8
  %455 = icmp ne i64 (%struct.TYPE_42__*, i32, i32)* %454, null
  br i1 %455, label %461, label %456

456:                                              ; preds = %451
  %457 = load i32, i32* @LL_WARNING, align 4
  %458 = getelementptr inbounds [10 x i8], [10 x i8]* %33, i64 0, i64 0
  %459 = call i32 (i32, i8*, ...) @serverLog(i32 %457, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.22, i64 0, i64 0), i8* %458)
  %460 = call i32 @exit(i32 1) #3
  unreachable

461:                                              ; preds = %451
  %462 = load %struct.TYPE_41__*, %struct.TYPE_41__** %32, align 8
  %463 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %464 = call i32 @moduleInitIOContext(%struct.TYPE_42__* byval(%struct.TYPE_42__) align 8 %34, %struct.TYPE_41__* %462, %struct.TYPE_38__* %463, i32* null)
  %465 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %34, i32 0, i32 0
  store i32 2, i32* %465, align 8
  %466 = load %struct.TYPE_41__*, %struct.TYPE_41__** %32, align 8
  %467 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %466, i32 0, i32 0
  %468 = load i64 (%struct.TYPE_42__*, i32, i32)*, i64 (%struct.TYPE_42__*, i32, i32)** %467, align 8
  %469 = load i32, i32* %29, align 4
  %470 = and i32 %469, 1023
  %471 = load i32, i32* %31, align 4
  %472 = call i64 %468(%struct.TYPE_42__* %34, i32 %470, i32 %471)
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %478, label %474

474:                                              ; preds = %461
  %475 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %34, i32 0, i32 2
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %486

478:                                              ; preds = %474, %461
  %479 = getelementptr inbounds [10 x i8], [10 x i8]* %33, i64 0, i64 0
  %480 = load i32, i32* %29, align 4
  %481 = call i32 @moduleTypeNameByID(i8* %479, i32 %480)
  %482 = load i32, i32* @LL_WARNING, align 4
  %483 = getelementptr inbounds [10 x i8], [10 x i8]* %33, i64 0, i64 0
  %484 = call i32 (i32, i8*, ...) @serverLog(i32 %482, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.23, i64 0, i64 0), i8* %483)
  %485 = call i32 @exit(i32 1) #3
  unreachable

486:                                              ; preds = %474
  %487 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %34, i32 0, i32 1
  %488 = load i64, i64* %487, align 8
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %497

490:                                              ; preds = %486
  %491 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %34, i32 0, i32 1
  %492 = load i64, i64* %491, align 8
  %493 = call i32 @moduleFreeContext(i64 %492)
  %494 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %34, i32 0, i32 1
  %495 = load i64, i64* %494, align 8
  %496 = call i32 @zfree(i64 %495)
  br label %497

497:                                              ; preds = %490, %486
  %498 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %499 = call i8* @rdbLoadLen(%struct.TYPE_38__* %498, i32* null)
  %500 = ptrtoint i8* %499 to i32
  store i32 %500, i32* %35, align 4
  %501 = load i32, i32* %35, align 4
  %502 = load i32, i32* @RDB_MODULE_OPCODE_EOF, align 4
  %503 = icmp ne i32 %501, %502
  br i1 %503, label %504, label %509

504:                                              ; preds = %497
  %505 = load i32, i32* @LL_WARNING, align 4
  %506 = getelementptr inbounds [10 x i8], [10 x i8]* %33, i64 0, i64 0
  %507 = call i32 (i32, i8*, ...) @serverLog(i32 %505, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.24, i64 0, i64 0), i8* %506)
  %508 = call i32 @exit(i32 1) #3
  unreachable

509:                                              ; preds = %497
  br label %82

510:                                              ; preds = %448, %445
  %511 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %512 = getelementptr inbounds [10 x i8], [10 x i8]* %33, i64 0, i64 0
  %513 = call %struct.TYPE_37__* @rdbLoadCheckModuleValue(%struct.TYPE_38__* %511, i8* %512)
  store %struct.TYPE_37__* %513, %struct.TYPE_37__** %36, align 8
  %514 = load %struct.TYPE_37__*, %struct.TYPE_37__** %36, align 8
  %515 = call i32 @decrRefCount(%struct.TYPE_37__* %514)
  br label %82

516:                                              ; preds = %405
  br label %517

517:                                              ; preds = %516
  br label %518

518:                                              ; preds = %517
  br label %519

519:                                              ; preds = %518
  br label %520

520:                                              ; preds = %519
  br label %521

521:                                              ; preds = %520
  br label %522

522:                                              ; preds = %521
  br label %523

523:                                              ; preds = %522
  br label %524

524:                                              ; preds = %523
  %525 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %526 = call %struct.TYPE_37__* @rdbLoadStringObject(%struct.TYPE_38__* %525)
  store %struct.TYPE_37__* %526, %struct.TYPE_37__** %18, align 8
  %527 = icmp eq %struct.TYPE_37__* %526, null
  br i1 %527, label %528, label %529

528:                                              ; preds = %524
  br label %619

529:                                              ; preds = %524
  %530 = load i32, i32* %9, align 4
  %531 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %532 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %533 = call %struct.TYPE_37__* @rdbLoadObject(i32 %530, %struct.TYPE_38__* %531, %struct.TYPE_37__* %532)
  store %struct.TYPE_37__* %533, %struct.TYPE_37__** %19, align 8
  %534 = icmp eq %struct.TYPE_37__* %533, null
  br i1 %534, label %535, label %538

535:                                              ; preds = %529
  %536 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %537 = call i32 @decrRefCount(%struct.TYPE_37__* %536)
  br label %619

538:                                              ; preds = %529
  %539 = load i32*, i32** getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @server, i32 0, i32 2), align 8
  %540 = icmp eq i32* %539, null
  br i1 %540, label %541, label %558

541:                                              ; preds = %538
  %542 = load i32, i32* %6, align 4
  %543 = load i32, i32* @RDBFLAGS_AOF_PREAMBLE, align 4
  %544 = and i32 %542, %543
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %558, label %546

546:                                              ; preds = %541
  %547 = load i64, i64* %15, align 8
  %548 = icmp ne i64 %547, -1
  br i1 %548, label %549, label %558

549:                                              ; preds = %546
  %550 = load i64, i64* %15, align 8
  %551 = load i64, i64* %16, align 8
  %552 = icmp slt i64 %550, %551
  br i1 %552, label %553, label %558

553:                                              ; preds = %549
  %554 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %555 = call i32 @decrRefCount(%struct.TYPE_37__* %554)
  %556 = load %struct.TYPE_37__*, %struct.TYPE_37__** %19, align 8
  %557 = call i32 @decrRefCount(%struct.TYPE_37__* %556)
  br label %578

558:                                              ; preds = %549, %546, %541, %538
  %559 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %560 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %561 = load %struct.TYPE_37__*, %struct.TYPE_37__** %19, align 8
  %562 = call i32 @dbAdd(%struct.TYPE_39__* %559, %struct.TYPE_37__* %560, %struct.TYPE_37__* %561)
  %563 = load i64, i64* %15, align 8
  %564 = icmp ne i64 %563, -1
  br i1 %564, label %565, label %570

565:                                              ; preds = %558
  %566 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %567 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %568 = load i64, i64* %15, align 8
  %569 = call i32 @setExpire(i32* null, %struct.TYPE_39__* %566, %struct.TYPE_37__* %567, i64 %568)
  br label %570

570:                                              ; preds = %565, %558
  %571 = load %struct.TYPE_37__*, %struct.TYPE_37__** %19, align 8
  %572 = load i64, i64* %14, align 8
  %573 = load i64, i64* %13, align 8
  %574 = load i64, i64* %17, align 8
  %575 = call i32 @objectSetLRUOrLFU(%struct.TYPE_37__* %571, i64 %572, i64 %573, i64 %574)
  %576 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %577 = call i32 @decrRefCount(%struct.TYPE_37__* %576)
  br label %578

578:                                              ; preds = %570, %553
  %579 = load i64, i64* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @server, i32 0, i32 1), align 8
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %581, label %584

581:                                              ; preds = %578
  %582 = load i64, i64* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @server, i32 0, i32 1), align 8
  %583 = call i32 @usleep(i64 %582)
  br label %584

584:                                              ; preds = %581, %578
  store i64 -1, i64* %15, align 8
  store i64 -1, i64* %14, align 8
  store i64 -1, i64* %13, align 8
  br label %82

585:                                              ; preds = %144
  %586 = load i32, i32* %10, align 4
  %587 = icmp sge i32 %586, 5
  br i1 %587, label %588, label %617

588:                                              ; preds = %585
  %589 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %590 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 4
  store i32 %591, i32* %38, align 4
  %592 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %593 = call i64 (%struct.TYPE_38__*, ...) @rioRead(%struct.TYPE_38__* %592, i32* %37, i32 8)
  %594 = icmp eq i64 %593, 0
  br i1 %594, label %595, label %596

595:                                              ; preds = %588
  br label %619

596:                                              ; preds = %588
  %597 = load i64, i64* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @server, i32 0, i32 0), align 8
  %598 = icmp ne i64 %597, 0
  br i1 %598, label %599, label %616

599:                                              ; preds = %596
  %600 = call i32 @memrev64ifbe(i32* %37)
  %601 = load i32, i32* %37, align 4
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %606

603:                                              ; preds = %599
  %604 = load i32, i32* @LL_WARNING, align 4
  %605 = call i32 (i32, i8*, ...) @serverLog(i32 %604, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.25, i64 0, i64 0))
  br label %615

606:                                              ; preds = %599
  %607 = load i32, i32* %37, align 4
  %608 = load i32, i32* %38, align 4
  %609 = icmp ne i32 %607, %608
  br i1 %609, label %610, label %614

610:                                              ; preds = %606
  %611 = load i32, i32* @LL_WARNING, align 4
  %612 = call i32 (i32, i8*, ...) @serverLog(i32 %611, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0))
  %613 = call i32 (i8*, ...) @rdbExitReportCorruptRDB(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  br label %614

614:                                              ; preds = %610, %606
  br label %615

615:                                              ; preds = %614, %603
  br label %616

616:                                              ; preds = %615, %596
  br label %617

617:                                              ; preds = %616, %585
  %618 = load i32, i32* @C_OK, align 4
  store i32 %618, i32* %4, align 4
  br label %624

619:                                              ; preds = %595, %535, %528, %422, %213, %208, %188, %181, %155, %136, %122, %112, %99, %86, %51
  %620 = load i32, i32* @LL_WARNING, align 4
  %621 = call i32 (i32, i8*, ...) @serverLog(i32 %620, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i64 0, i64 0))
  %622 = call i32 @rdbReportReadError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0))
  %623 = load i32, i32* @C_ERR, align 4
  store i32 %623, i32* %4, align 4
  br label %624

624:                                              ; preds = %619, %617, %73, %57
  %625 = load i32, i32* %4, align 4
  ret i32 %625
}

declare dso_local i64 @rioRead(%struct.TYPE_38__*, ...) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i64 @LRU_CLOCK(...) #1

declare dso_local i32 @rdbLoadType(%struct.TYPE_38__*) #1

declare dso_local i64 @rdbLoadTime(%struct.TYPE_38__*) #1

declare dso_local i64 @rioGetReadError(%struct.TYPE_38__*) #1

declare dso_local i64 @rdbLoadMillisecondTime(%struct.TYPE_38__*, i32) #1

declare dso_local i8* @rdbLoadLen(%struct.TYPE_38__*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @dictExpand(i32, i32) #1

declare dso_local %struct.TYPE_37__* @rdbLoadStringObject(%struct.TYPE_38__*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i8* @strtoll(i8*, i32*, i32) #1

declare dso_local i32* @luaCreateFunction(i32*, i32, %struct.TYPE_37__*) #1

declare dso_local i32 @rdbExitReportCorruptRDB(i8*, ...) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_37__*) #1

declare dso_local i32 @rdbReportReadError(i8*) #1

declare dso_local %struct.TYPE_41__* @moduleTypeLookupModuleByID(i32) #1

declare dso_local i32 @moduleTypeNameByID(i8*, i32) #1

declare dso_local i32 @moduleInitIOContext(%struct.TYPE_42__* byval(%struct.TYPE_42__) align 8, %struct.TYPE_41__*, %struct.TYPE_38__*, i32*) #1

declare dso_local i32 @moduleFreeContext(i64) #1

declare dso_local i32 @zfree(i64) #1

declare dso_local %struct.TYPE_37__* @rdbLoadCheckModuleValue(%struct.TYPE_38__*, i8*) #1

declare dso_local %struct.TYPE_37__* @rdbLoadObject(i32, %struct.TYPE_38__*, %struct.TYPE_37__*) #1

declare dso_local i32 @dbAdd(%struct.TYPE_39__*, %struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local i32 @setExpire(i32*, %struct.TYPE_39__*, %struct.TYPE_37__*, i64) #1

declare dso_local i32 @objectSetLRUOrLFU(%struct.TYPE_37__*, i64, i64, i64) #1

declare dso_local i32 @usleep(i64) #1

declare dso_local i32 @memrev64ifbe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

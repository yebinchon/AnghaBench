; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-check-rdb.c_redis_check_rdb.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-check-rdb.c_redis_check_rdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32, i8*, i64, i8*, %struct.TYPE_18__*, i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i64 }

@redis_check_rdb.rdb = internal global %struct.TYPE_19__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@rdbstate = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@rdbLoadProgressCallback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"REDIS\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Wrong signature trying to load DB from file\00", align 1
@RDB_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Can't handle RDB format version %d\00", align 1
@RDBFLAGS_NONE = common dso_local global i32 0, align 4
@RDB_CHECK_DOING_READ_TYPE = common dso_local global i8* null, align 8
@RDB_OPCODE_EXPIRETIME = common dso_local global i32 0, align 4
@RDB_CHECK_DOING_READ_EXPIRE = common dso_local global i8* null, align 8
@RDB_OPCODE_EXPIRETIME_MS = common dso_local global i32 0, align 4
@RDB_OPCODE_FREQ = common dso_local global i32 0, align 4
@RDB_OPCODE_IDLE = common dso_local global i32 0, align 4
@RDB_LENERR = common dso_local global i64 0, align 8
@RDB_OPCODE_EOF = common dso_local global i32 0, align 4
@RDB_OPCODE_SELECTDB = common dso_local global i32 0, align 4
@RDB_CHECK_DOING_READ_LEN = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Selecting DB ID %d\00", align 1
@RDB_OPCODE_RESIZEDB = common dso_local global i32 0, align 4
@RDB_OPCODE_AUX = common dso_local global i32 0, align 4
@RDB_CHECK_DOING_READ_AUX = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"AUX FIELD %s = '%s'\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Invalid object type: %d\00", align 1
@RDB_CHECK_DOING_READ_KEY = common dso_local global i8* null, align 8
@RDB_CHECK_DOING_READ_OBJECT_VALUE = common dso_local global i8* null, align 8
@server = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@RDB_CHECK_DOING_CHECK_SUM = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [63 x i8] c"RDB file was saved with checksum disabled: no check performed.\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"RDB CRC error\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Checksum OK\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Unexpected EOF reading RDB file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_check_rdb(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %22 = call i64 (...) @mstime()
  store i64 %22, i64* %11, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = call i32* @fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %30, i32** %5, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %281

33:                                               ; preds = %28, %2
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @rioInitWithFile(%struct.TYPE_19__* @redis_check_rdb.rdb, i32* %34)
  store %struct.TYPE_19__* @redis_check_rdb.rdb, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 8), align 8
  %36 = load i32, i32* @rdbLoadProgressCallback, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @redis_check_rdb.rdb, i32 0, i32 1), align 8
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %38 = call i64 (%struct.TYPE_19__*, ...) @rioRead(%struct.TYPE_19__* @redis_check_rdb.rdb, i8* %37, i32 9)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %264

41:                                               ; preds = %33
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 9
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %44 = call i64 @memcmp(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %273

48:                                               ; preds = %41
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %50 = getelementptr inbounds i8, i8* %49, i64 5
  %51 = call i32 @atoi(i8* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @RDB_VERSION, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %48
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %273

61:                                               ; preds = %54
  store i64 -1, i64* %10, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* @RDBFLAGS_NONE, align 4
  %65 = call i32 @startLoadingFile(i32* %62, i8* %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %83, %95, %104, %114, %130, %148, %162, %223
  %67 = load i8*, i8** @RDB_CHECK_DOING_READ_TYPE, align 8
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 3), align 8
  %68 = call i32 @rdbLoadType(%struct.TYPE_19__* @redis_check_rdb.rdb)
  store i32 %68, i32* %7, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %264

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @RDB_OPCODE_EXPIRETIME, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i8*, i8** @RDB_CHECK_DOING_READ_EXPIRE, align 8
  store i8* %76, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 3), align 8
  %77 = call i64 @rdbLoadTime(%struct.TYPE_19__* @redis_check_rdb.rdb)
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = mul nsw i64 %78, 1000
  store i64 %79, i64* %10, align 8
  %80 = call i64 @rioGetReadError(%struct.TYPE_19__* @redis_check_rdb.rdb)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %264

83:                                               ; preds = %75
  br label %66

84:                                               ; preds = %71
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @RDB_OPCODE_EXPIRETIME_MS, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i8*, i8** @RDB_CHECK_DOING_READ_EXPIRE, align 8
  store i8* %89, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 3), align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i64 @rdbLoadMillisecondTime(%struct.TYPE_19__* @redis_check_rdb.rdb, i32 %90)
  store i64 %91, i64* %10, align 8
  %92 = call i64 @rioGetReadError(%struct.TYPE_19__* @redis_check_rdb.rdb)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %264

95:                                               ; preds = %88
  br label %66

96:                                               ; preds = %84
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @RDB_OPCODE_FREQ, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = call i64 (%struct.TYPE_19__*, ...) @rioRead(%struct.TYPE_19__* @redis_check_rdb.rdb, i64* %15, i32 1)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %264

104:                                              ; preds = %100
  br label %66

105:                                              ; preds = %96
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @RDB_OPCODE_IDLE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = call i64 @rdbLoadLen(%struct.TYPE_19__* @redis_check_rdb.rdb, i32* null)
  %111 = load i64, i64* @RDB_LENERR, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %264

114:                                              ; preds = %109
  br label %66

115:                                              ; preds = %105
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @RDB_OPCODE_EOF, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %228

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @RDB_OPCODE_SELECTDB, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load i8*, i8** @RDB_CHECK_DOING_READ_LEN, align 8
  store i8* %125, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 3), align 8
  %126 = call i64 @rdbLoadLen(%struct.TYPE_19__* @redis_check_rdb.rdb, i32* null)
  store i64 %126, i64* %6, align 8
  %127 = load i64, i64* @RDB_LENERR, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %264

130:                                              ; preds = %124
  %131 = load i64, i64* %6, align 8
  %132 = call i32 (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %131)
  br label %66

133:                                              ; preds = %120
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @RDB_OPCODE_RESIZEDB, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %133
  %138 = load i8*, i8** @RDB_CHECK_DOING_READ_LEN, align 8
  store i8* %138, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 3), align 8
  %139 = call i64 @rdbLoadLen(%struct.TYPE_19__* @redis_check_rdb.rdb, i32* null)
  store i64 %139, i64* %16, align 8
  %140 = load i64, i64* @RDB_LENERR, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %264

143:                                              ; preds = %137
  %144 = call i64 @rdbLoadLen(%struct.TYPE_19__* @redis_check_rdb.rdb, i32* null)
  store i64 %144, i64* %17, align 8
  %145 = load i64, i64* @RDB_LENERR, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %264

148:                                              ; preds = %143
  br label %66

149:                                              ; preds = %133
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @RDB_OPCODE_AUX, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %176

153:                                              ; preds = %149
  %154 = load i8*, i8** @RDB_CHECK_DOING_READ_AUX, align 8
  store i8* %154, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 3), align 8
  %155 = call %struct.TYPE_18__* @rdbLoadStringObject(%struct.TYPE_19__* @redis_check_rdb.rdb)
  store %struct.TYPE_18__* %155, %struct.TYPE_18__** %18, align 8
  %156 = icmp eq %struct.TYPE_18__* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %264

158:                                              ; preds = %153
  %159 = call %struct.TYPE_18__* @rdbLoadStringObject(%struct.TYPE_19__* @redis_check_rdb.rdb)
  store %struct.TYPE_18__* %159, %struct.TYPE_18__** %19, align 8
  %160 = icmp eq %struct.TYPE_18__* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %264

162:                                              ; preds = %158
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to i8*
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i8*
  %171 = call i32 (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %166, i8* %170)
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %173 = call i32 @decrRefCount(%struct.TYPE_18__* %172)
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %175 = call i32 @decrRefCount(%struct.TYPE_18__* %174)
  br label %66

176:                                              ; preds = %149
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @rdbIsObjectType(i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* %7, align 4
  %182 = call i32 (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %181)
  br label %273

183:                                              ; preds = %176
  %184 = load i32, i32* %7, align 4
  store i32 %184, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 0), align 8
  br label %185

185:                                              ; preds = %183
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191
  %193 = load i8*, i8** @RDB_CHECK_DOING_READ_KEY, align 8
  store i8* %193, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 3), align 8
  %194 = call %struct.TYPE_18__* @rdbLoadStringObject(%struct.TYPE_19__* @redis_check_rdb.rdb)
  store %struct.TYPE_18__* %194, %struct.TYPE_18__** %13, align 8
  %195 = icmp eq %struct.TYPE_18__* %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %264

197:                                              ; preds = %192
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %198, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 4), align 8
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 7), align 8
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 7), align 8
  %201 = load i8*, i8** @RDB_CHECK_DOING_READ_OBJECT_VALUE, align 8
  store i8* %201, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 3), align 8
  %202 = load i32, i32* %7, align 4
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %204 = call %struct.TYPE_18__* @rdbLoadObject(i32 %202, %struct.TYPE_19__* @redis_check_rdb.rdb, %struct.TYPE_18__* %203)
  store %struct.TYPE_18__* %204, %struct.TYPE_18__** %14, align 8
  %205 = icmp eq %struct.TYPE_18__* %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %197
  br label %264

207:                                              ; preds = %197
  %208 = load i64, i64* %10, align 8
  %209 = icmp ne i64 %208, -1
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = load i64, i64* %10, align 8
  %212 = load i64, i64* %11, align 8
  %213 = icmp slt i64 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 6), align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 6), align 4
  br label %217

217:                                              ; preds = %214, %210, %207
  %218 = load i64, i64* %10, align 8
  %219 = icmp ne i64 %218, -1
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 5), align 8
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 5), align 8
  br label %223

223:                                              ; preds = %220, %217
  store %struct.TYPE_18__* null, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 4), align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %225 = call i32 @decrRefCount(%struct.TYPE_18__* %224)
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %227 = call i32 @decrRefCount(%struct.TYPE_18__* %226)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 0), align 8
  store i64 -1, i64* %10, align 8
  br label %66

228:                                              ; preds = %119
  %229 = load i32, i32* %8, align 4
  %230 = icmp sge i32 %229, 5
  br i1 %230, label %231, label %256

231:                                              ; preds = %228
  %232 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %256

234:                                              ; preds = %231
  %235 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @redis_check_rdb.rdb, i32 0, i32 0), align 8
  store i64 %235, i64* %21, align 8
  %236 = load i8*, i8** @RDB_CHECK_DOING_CHECK_SUM, align 8
  store i8* %236, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 3), align 8
  %237 = call i64 (%struct.TYPE_19__*, ...) @rioRead(%struct.TYPE_19__* @redis_check_rdb.rdb, i64* %20, i32 8)
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %264

240:                                              ; preds = %234
  %241 = call i32 @memrev64ifbe(i64* %20)
  %242 = load i64, i64* %20, align 8
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %240
  %245 = call i32 (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0))
  br label %255

246:                                              ; preds = %240
  %247 = load i64, i64* %20, align 8
  %248 = load i64, i64* %21, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = call i32 (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %273

252:                                              ; preds = %246
  %253 = call i32 (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %254

254:                                              ; preds = %252
  br label %255

255:                                              ; preds = %254, %244
  br label %256

256:                                              ; preds = %255, %231, %228
  %257 = load i32, i32* %12, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i32*, i32** %5, align 8
  %261 = call i32 @fclose(i32* %260)
  br label %262

262:                                              ; preds = %259, %256
  %263 = call i32 @stopLoading(i32 1)
  store i32 0, i32* %3, align 4
  br label %281

264:                                              ; preds = %239, %206, %196, %161, %157, %147, %142, %129, %113, %103, %94, %82, %70, %40
  %265 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 2), align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i8*, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rdbstate, i32 0, i32 1), align 8
  %269 = call i32 (i8*, ...) @rdbCheckError(i8* %268)
  br label %272

270:                                              ; preds = %264
  %271 = call i32 (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %272

272:                                              ; preds = %270, %267
  br label %273

273:                                              ; preds = %272, %250, %180, %58, %46
  %274 = load i32, i32* %12, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i32*, i32** %5, align 8
  %278 = call i32 @fclose(i32* %277)
  br label %279

279:                                              ; preds = %276, %273
  %280 = call i32 @stopLoading(i32 0)
  store i32 1, i32* %3, align 4
  br label %281

281:                                              ; preds = %279, %262, %32
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i64 @mstime(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @rioInitWithFile(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @rioRead(%struct.TYPE_19__*, ...) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @rdbCheckError(i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @startLoadingFile(i32*, i8*, i32) #1

declare dso_local i32 @rdbLoadType(%struct.TYPE_19__*) #1

declare dso_local i64 @rdbLoadTime(%struct.TYPE_19__*) #1

declare dso_local i64 @rioGetReadError(%struct.TYPE_19__*) #1

declare dso_local i64 @rdbLoadMillisecondTime(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @rdbLoadLen(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @rdbCheckInfo(i8*, ...) #1

declare dso_local %struct.TYPE_18__* @rdbLoadStringObject(%struct.TYPE_19__*) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_18__*) #1

declare dso_local i32 @rdbIsObjectType(i32) #1

declare dso_local %struct.TYPE_18__* @rdbLoadObject(i32, %struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @memrev64ifbe(i64*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @stopLoading(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

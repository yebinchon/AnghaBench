; ModuleID = '/home/carl/AnghaBench/redis/src/extr_evict.c_freeMemoryIfNeeded.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_evict.c_freeMemoryIfNeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32, %struct.TYPE_6__*, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32*, i32* }
%struct.evictionPoolEntry = type { i32, i64, i32*, i32* }

@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@C_OK = common dso_local global i32 0, align 4
@MAXMEMORY_NO_EVICTION = common dso_local global i32 0, align 4
@freeMemoryIfNeeded.next_db = internal global i32 0, align 4
@MAXMEMORY_FLAG_LRU = common dso_local global i32 0, align 4
@MAXMEMORY_FLAG_LFU = common dso_local global i32 0, align 4
@MAXMEMORY_VOLATILE_TTL = common dso_local global i32 0, align 4
@EvictionPoolLRU = common dso_local global %struct.evictionPoolEntry* null, align 8
@MAXMEMORY_FLAG_ALLKEYS = common dso_local global i32 0, align 4
@EVPOOL_SIZE = common dso_local global i32 0, align 4
@MAXMEMORY_ALLKEYS_RANDOM = common dso_local global i32 0, align 4
@MAXMEMORY_VOLATILE_RANDOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"eviction-del\00", align 1
@NOTIFY_EVICTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"evicted\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"eviction-cycle\00", align 1
@BIO_LAZY_FREE = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freeMemoryIfNeeded() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.evictionPoolEntry*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 7), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %0
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 6), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @C_OK, align 4
  store i32 %28, i32* %1, align 4
  br label %379

29:                                               ; preds = %24, %0
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %31 = call i32 @listLength(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = call i64 (...) @clientsArePaused()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @C_OK, align 4
  store i32 %35, i32* %1, align 4
  br label %379

36:                                               ; preds = %29
  %37 = call i32 @getMaxmemoryState(i64* %3, i32* null, i64* %4, i32* null)
  %38 = load i32, i32* @C_OK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @C_OK, align 4
  store i32 %41, i32* %1, align 4
  br label %379

42:                                               ; preds = %36
  store i64 0, i64* %5, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %44 = load i32, i32* @MAXMEMORY_NO_EVICTION, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %361

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @latencyStartMonitor(i32 %48)
  br label %50

50:                                               ; preds = %354, %47
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %355

54:                                               ; preds = %50
  store i32* null, i32** %13, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %56 = load i32, i32* @MAXMEMORY_FLAG_LRU, align 4
  %57 = load i32, i32* @MAXMEMORY_FLAG_LFU, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %63 = load i32, i32* @MAXMEMORY_VOLATILE_TTL, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %225

65:                                               ; preds = %61, %54
  %66 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** @EvictionPoolLRU, align 8
  store %struct.evictionPoolEntry* %66, %struct.evictionPoolEntry** %18, align 8
  br label %67

67:                                               ; preds = %223, %65
  %68 = load i32*, i32** %13, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %224

70:                                               ; preds = %67
  store i64 0, i64* %19, align 8
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %109, %70
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %112

75:                                               ; preds = %71
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %15, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %81 = load i32, i32* @MAXMEMORY_FLAG_ALLKEYS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  br label %92

88:                                               ; preds = %75
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi i32* [ %87, %84 ], [ %91, %88 ]
  store i32* %93, i32** %16, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = call i64 @dictSize(i32* %94)
  store i64 %95, i64* %20, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load i32, i32* %12, align 4
  %99 = load i32*, i32** %16, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %18, align 8
  %104 = call i32 @evictionPoolPopulate(i32 %98, i32* %99, i32* %102, %struct.evictionPoolEntry* %103)
  %105 = load i64, i64* %20, align 8
  %106 = load i64, i64* %19, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %19, align 8
  br label %108

108:                                              ; preds = %97, %92
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %71

112:                                              ; preds = %71
  %113 = load i64, i64* %19, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  br label %224

116:                                              ; preds = %112
  %117 = load i32, i32* @EVPOOL_SIZE, align 4
  %118 = sub nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %220, %116
  %120 = load i32, i32* %11, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %223

122:                                              ; preds = %119
  %123 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %18, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %123, i64 %125
  %127 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %220

131:                                              ; preds = %122
  %132 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %18, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %132, i64 %134
  %136 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %139 = load i32, i32* @MAXMEMORY_FLAG_ALLKEYS, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %131
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %144 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %18, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %144, i64 %146
  %148 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %18, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %154, i64 %156
  %158 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = call i32* @dictFind(i32* %153, i32* %159)
  store i32* %160, i32** %17, align 8
  br label %180

161:                                              ; preds = %131
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %163 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %18, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %163, i64 %165
  %167 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %18, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %173, i64 %175
  %177 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = call i32* @dictFind(i32* %172, i32* %178)
  store i32* %179, i32** %17, align 8
  br label %180

180:                                              ; preds = %161, %142
  %181 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %18, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %181, i64 %183
  %185 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %18, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %187, i64 %189
  %191 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %186, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %180
  %195 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %18, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %195, i64 %197
  %199 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @sdsfree(i32* %200)
  br label %202

202:                                              ; preds = %194, %180
  %203 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %18, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %203, i64 %205
  %207 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %206, i32 0, i32 2
  store i32* null, i32** %207, align 8
  %208 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %18, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %208, i64 %210
  %212 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %211, i32 0, i32 1
  store i64 0, i64* %212, align 8
  %213 = load i32*, i32** %17, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %202
  %216 = load i32*, i32** %17, align 8
  %217 = call i32* @dictGetKey(i32* %216)
  store i32* %217, i32** %13, align 8
  br label %223

218:                                              ; preds = %202
  br label %219

219:                                              ; preds = %218
  br label %220

220:                                              ; preds = %219, %130
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %11, align 4
  br label %119

223:                                              ; preds = %215, %119
  br label %67

224:                                              ; preds = %115, %67
  br label %275

225:                                              ; preds = %61
  %226 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %227 = load i32, i32* @MAXMEMORY_ALLKEYS_RANDOM, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %231 = load i32, i32* @MAXMEMORY_VOLATILE_RANDOM, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %274

233:                                              ; preds = %229, %225
  store i32 0, i32* %12, align 4
  br label %234

234:                                              ; preds = %270, %233
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %273

238:                                              ; preds = %234
  %239 = load i32, i32* @freeMemoryIfNeeded.next_db, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* @freeMemoryIfNeeded.next_db, align 4
  %241 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 4
  %242 = urem i32 %240, %241
  store i32 %242, i32* %10, align 4
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i64 %245
  store %struct.TYPE_6__* %246, %struct.TYPE_6__** %15, align 8
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %248 = load i32, i32* @MAXMEMORY_ALLKEYS_RANDOM, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %238
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  br label %258

254:                                              ; preds = %238
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  br label %258

258:                                              ; preds = %254, %250
  %259 = phi i32* [ %253, %250 ], [ %257, %254 ]
  store i32* %259, i32** %16, align 8
  %260 = load i32*, i32** %16, align 8
  %261 = call i64 @dictSize(i32* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %258
  %264 = load i32*, i32** %16, align 8
  %265 = call i32* @dictGetRandomKey(i32* %264)
  store i32* %265, i32** %17, align 8
  %266 = load i32*, i32** %17, align 8
  %267 = call i32* @dictGetKey(i32* %266)
  store i32* %267, i32** %13, align 8
  %268 = load i32, i32* %10, align 4
  store i32 %268, i32* %14, align 4
  br label %273

269:                                              ; preds = %258
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %12, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %12, align 4
  br label %234

273:                                              ; preds = %263, %234
  br label %274

274:                                              ; preds = %273, %229
  br label %275

275:                                              ; preds = %274, %224
  %276 = load i32*, i32** %13, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %349

278:                                              ; preds = %275
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %280 = load i32, i32* %14, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i64 %281
  store %struct.TYPE_6__* %282, %struct.TYPE_6__** %15, align 8
  %283 = load i32*, i32** %13, align 8
  %284 = load i32*, i32** %13, align 8
  %285 = call i32 @sdslen(i32* %284)
  %286 = call i32* @createStringObject(i32* %283, i32 %285)
  store i32* %286, i32** %21, align 8
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %288 = load i32*, i32** %21, align 8
  %289 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 2), align 8
  %290 = call i32 @propagateExpire(%struct.TYPE_6__* %287, i32* %288, i64 %289)
  %291 = call i64 (...) @zmalloc_used_memory()
  store i64 %291, i64* %8, align 8
  %292 = load i32, i32* %7, align 4
  %293 = call i32 @latencyStartMonitor(i32 %292)
  %294 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 2), align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %278
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %298 = load i32*, i32** %21, align 8
  %299 = call i32 @dbAsyncDelete(%struct.TYPE_6__* %297, i32* %298)
  br label %304

300:                                              ; preds = %278
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %302 = load i32*, i32** %21, align 8
  %303 = call i32 @dbSyncDelete(%struct.TYPE_6__* %301, i32* %302)
  br label %304

304:                                              ; preds = %300, %296
  %305 = load i32, i32* %7, align 4
  %306 = call i32 @latencyEndMonitor(i32 %305)
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %307)
  %309 = load i32, i32* %6, align 4
  %310 = load i32, i32* %7, align 4
  %311 = call i32 @latencyRemoveNestedEvent(i32 %309, i32 %310)
  %312 = call i64 (...) @zmalloc_used_memory()
  %313 = load i64, i64* %8, align 8
  %314 = sub nsw i64 %313, %312
  store i64 %314, i64* %8, align 8
  %315 = load i64, i64* %8, align 8
  %316 = load i64, i64* %5, align 8
  %317 = add i64 %316, %315
  store i64 %317, i64* %5, align 8
  %318 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 3), align 8
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 3), align 8
  %320 = load i32, i32* @NOTIFY_EVICTED, align 4
  %321 = load i32*, i32** %21, align 8
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @notifyKeyspaceEvent(i32 %320, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %321, i32 %324)
  %326 = load i32*, i32** %21, align 8
  %327 = call i32 @decrRefCount(i32* %326)
  %328 = load i32, i32* %2, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %2, align 4
  %330 = load i32, i32* %9, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %304
  %333 = call i32 (...) @flushSlavesOutputBuffers()
  br label %334

334:                                              ; preds = %332, %304
  %335 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 2), align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %348

337:                                              ; preds = %334
  %338 = load i32, i32* %2, align 4
  %339 = srem i32 %338, 16
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %348, label %341

341:                                              ; preds = %337
  %342 = call i32 @getMaxmemoryState(i64* null, i32* null, i64* null, i32* null)
  %343 = load i32, i32* @C_OK, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %347

345:                                              ; preds = %341
  %346 = load i64, i64* %4, align 8
  store i64 %346, i64* %5, align 8
  br label %347

347:                                              ; preds = %345, %341
  br label %348

348:                                              ; preds = %347, %337, %334
  br label %354

349:                                              ; preds = %275
  %350 = load i32, i32* %6, align 4
  %351 = call i32 @latencyEndMonitor(i32 %350)
  %352 = load i32, i32* %6, align 4
  %353 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %352)
  br label %361

354:                                              ; preds = %348
  br label %50

355:                                              ; preds = %50
  %356 = load i32, i32* %6, align 4
  %357 = call i32 @latencyEndMonitor(i32 %356)
  %358 = load i32, i32* %6, align 4
  %359 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %358)
  %360 = load i32, i32* @C_OK, align 4
  store i32 %360, i32* %1, align 4
  br label %379

361:                                              ; preds = %349, %46
  br label %362

362:                                              ; preds = %375, %361
  %363 = load i32, i32* @BIO_LAZY_FREE, align 4
  %364 = call i64 @bioPendingJobsOfType(i32 %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %377

366:                                              ; preds = %362
  %367 = load i64, i64* %3, align 8
  %368 = call i64 (...) @zmalloc_used_memory()
  %369 = sub i64 %367, %368
  %370 = load i64, i64* %5, align 8
  %371 = add i64 %369, %370
  %372 = load i64, i64* %4, align 8
  %373 = icmp uge i64 %371, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %366
  br label %377

375:                                              ; preds = %366
  %376 = call i32 @usleep(i32 1000)
  br label %362

377:                                              ; preds = %374, %362
  %378 = load i32, i32* @C_ERR, align 4
  store i32 %378, i32* %1, align 4
  br label %379

379:                                              ; preds = %377, %355, %40, %34, %27
  %380 = load i32, i32* %1, align 4
  ret i32 %380
}

declare dso_local i32 @listLength(i32) #1

declare dso_local i64 @clientsArePaused(...) #1

declare dso_local i32 @getMaxmemoryState(i64*, i32*, i64*, i32*) #1

declare dso_local i32 @latencyStartMonitor(i32) #1

declare dso_local i64 @dictSize(i32*) #1

declare dso_local i32 @evictionPoolPopulate(i32, i32*, i32*, %struct.evictionPoolEntry*) #1

declare dso_local i32* @dictFind(i32*, i32*) #1

declare dso_local i32 @sdsfree(i32*) #1

declare dso_local i32* @dictGetKey(i32*) #1

declare dso_local i32* @dictGetRandomKey(i32*) #1

declare dso_local i32* @createStringObject(i32*, i32) #1

declare dso_local i32 @sdslen(i32*) #1

declare dso_local i32 @propagateExpire(%struct.TYPE_6__*, i32*, i64) #1

declare dso_local i64 @zmalloc_used_memory(...) #1

declare dso_local i32 @dbAsyncDelete(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @dbSyncDelete(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @latencyEndMonitor(i32) #1

declare dso_local i32 @latencyAddSampleIfNeeded(i8*, i32) #1

declare dso_local i32 @latencyRemoveNestedEvent(i32, i32) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32*, i32) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i32 @flushSlavesOutputBuffers(...) #1

declare dso_local i64 @bioPendingJobsOfType(i32) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

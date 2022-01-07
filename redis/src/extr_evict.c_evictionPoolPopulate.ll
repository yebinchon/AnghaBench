; ModuleID = '/home/carl/AnghaBench/redis/src/extr_evict.c_evictionPoolPopulate.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_evict.c_evictionPoolPopulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.evictionPoolEntry = type { i64, i32, i32*, i32* }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MAXMEMORY_VOLATILE_TTL = common dso_local global i32 0, align 4
@MAXMEMORY_FLAG_LRU = common dso_local global i32 0, align 4
@MAXMEMORY_FLAG_LFU = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Unknown eviction policy in evictionPoolPopulate()\00", align 1
@EVPOOL_SIZE = common dso_local global i32 0, align 4
@EVPOOL_CACHED_SDS_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evictionPoolPopulate(i32 %0, i32* %1, i32* %2, %struct.evictionPoolEntry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.evictionPoolEntry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.evictionPoolEntry* %3, %struct.evictionPoolEntry** %8, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i32*, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %27 = call i32 @dictGetSomeKeys(i32* %25, i32** %24, i32 %26)
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %278, %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %281

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %24, i64 %34
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %17, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = call i8* @dictGetKey(i32* %37)
  store i8* %38, i8** %15, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %40 = load i32, i32* @MAXMEMORY_VOLATILE_TTL, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = call i32* @dictFind(i32* %47, i8* %48)
  store i32* %49, i32** %17, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32*, i32** %17, align 8
  %52 = call i32* @dictGetVal(i32* %51)
  store i32* %52, i32** %16, align 8
  br label %53

53:                                               ; preds = %50, %32
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %55 = load i32, i32* @MAXMEMORY_FLAG_LRU, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** %16, align 8
  %60 = call i64 @estimateObjectIdleTime(i32* %59)
  store i64 %60, i64* %14, align 8
  br label %85

61:                                               ; preds = %53
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %63 = load i32, i32* @MAXMEMORY_FLAG_LFU, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 @LFUDecrAndReturn(i32* %67)
  %69 = sub nsw i32 255, %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %14, align 8
  br label %84

71:                                               ; preds = %61
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %73 = load i32, i32* @MAXMEMORY_VOLATILE_TTL, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i64, i64* @ULLONG_MAX, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = call i32* @dictGetVal(i32* %77)
  %79 = ptrtoint i32* %78 to i64
  %80 = sub nsw i64 %76, %79
  store i64 %80, i64* %14, align 8
  br label %83

81:                                               ; preds = %71
  %82 = call i32 @serverPanic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %75
  br label %84

84:                                               ; preds = %83, %66
  br label %85

85:                                               ; preds = %84, %58
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %109, %85
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @EVPOOL_SIZE, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %86
  %91 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %91, i64 %93
  %95 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %99, i64 %101
  %103 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %14, align 8
  %106 = icmp ult i64 %104, %105
  br label %107

107:                                              ; preds = %98, %90, %86
  %108 = phi i1 [ false, %90 ], [ false, %86 ], [ %106, %98 ]
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %86

112:                                              ; preds = %107
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %117 = load i32, i32* @EVPOOL_SIZE, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %116, i64 %119
  %121 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %278

125:                                              ; preds = %115, %112
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @EVPOOL_SIZE, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %130, i64 %132
  %134 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %220

138:                                              ; preds = %129, %125
  %139 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %140 = load i32, i32* @EVPOOL_SIZE, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %139, i64 %142
  %144 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %180

147:                                              ; preds = %138
  %148 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %149 = load i32, i32* @EVPOOL_SIZE, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %148, i64 %151
  %153 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = bitcast i32* %154 to i8*
  store i8* %155, i8** %18, align 8
  %156 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %156, i64 %158
  %160 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %159, i64 1
  %161 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %161, i64 %163
  %165 = load i32, i32* @EVPOOL_SIZE, align 4
  %166 = load i32, i32* %10, align 4
  %167 = sub nsw i32 %165, %166
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = mul i64 32, %169
  %171 = trunc i64 %170 to i32
  %172 = call i32 @memmove(%struct.evictionPoolEntry* %160, %struct.evictionPoolEntry* %164, i32 %171)
  %173 = load i8*, i8** %18, align 8
  %174 = bitcast i8* %173 to i32*
  %175 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %175, i64 %177
  %179 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %178, i32 0, i32 2
  store i32* %174, i32** %179, align 8
  br label %219

180:                                              ; preds = %138
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %10, align 4
  %183 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %184 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %183, i64 0
  %185 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = bitcast i32* %186 to i8*
  store i8* %187, i8** %19, align 8
  %188 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %189 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %188, i64 0
  %190 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %193 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %192, i64 0
  %194 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %191, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %180
  %198 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %199 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %198, i64 0
  %200 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @sdsfree(i32* %201)
  br label %203

203:                                              ; preds = %197, %180
  %204 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %205 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %206 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %205, i64 1
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = mul i64 32, %208
  %210 = trunc i64 %209 to i32
  %211 = call i32 @memmove(%struct.evictionPoolEntry* %204, %struct.evictionPoolEntry* %206, i32 %210)
  %212 = load i8*, i8** %19, align 8
  %213 = bitcast i8* %212 to i32*
  %214 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %214, i64 %216
  %218 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %217, i32 0, i32 2
  store i32* %213, i32** %218, align 8
  br label %219

219:                                              ; preds = %203, %147
  br label %220

220:                                              ; preds = %219, %137
  br label %221

221:                                              ; preds = %220
  %222 = load i8*, i8** %15, align 8
  %223 = call i32 @sdslen(i8* %222)
  store i32 %223, i32* %20, align 4
  %224 = load i32, i32* %20, align 4
  %225 = load i32, i32* @EVPOOL_CACHED_SDS_SIZE, align 4
  %226 = icmp sgt i32 %224, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %221
  %228 = load i8*, i8** %15, align 8
  %229 = call i32* @sdsdup(i8* %228)
  %230 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %230, i64 %232
  %234 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %233, i32 0, i32 3
  store i32* %229, i32** %234, align 8
  br label %265

235:                                              ; preds = %221
  %236 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %236, i64 %238
  %240 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = load i8*, i8** %15, align 8
  %243 = load i32, i32* %20, align 4
  %244 = add nsw i32 %243, 1
  %245 = call i32 @memcpy(i32* %241, i8* %242, i32 %244)
  %246 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %246, i64 %248
  %250 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %20, align 4
  %253 = call i32 @sdssetlen(i32* %251, i32 %252)
  %254 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %254, i64 %256
  %258 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  %260 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %260, i64 %262
  %264 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %263, i32 0, i32 3
  store i32* %259, i32** %264, align 8
  br label %265

265:                                              ; preds = %235, %227
  %266 = load i64, i64* %14, align 8
  %267 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %268 = load i32, i32* %10, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %267, i64 %269
  %271 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %270, i32 0, i32 0
  store i64 %266, i64* %271, align 8
  %272 = load i32, i32* %5, align 4
  %273 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %8, align 8
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %273, i64 %275
  %277 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %276, i32 0, i32 1
  store i32 %272, i32* %277, align 8
  br label %278

278:                                              ; preds = %265, %124
  %279 = load i32, i32* %9, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %9, align 4
  br label %28

281:                                              ; preds = %28
  %282 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %282)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dictGetSomeKeys(i32*, i32**, i32) #2

declare dso_local i8* @dictGetKey(i32*) #2

declare dso_local i32* @dictFind(i32*, i8*) #2

declare dso_local i32* @dictGetVal(i32*) #2

declare dso_local i64 @estimateObjectIdleTime(i32*) #2

declare dso_local i32 @LFUDecrAndReturn(i32*) #2

declare dso_local i32 @serverPanic(i8*) #2

declare dso_local i32 @memmove(%struct.evictionPoolEntry*, %struct.evictionPoolEntry*, i32) #2

declare dso_local i32 @sdsfree(i32*) #2

declare dso_local i32 @sdslen(i8*) #2

declare dso_local i32* @sdsdup(i8*) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @sdssetlen(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

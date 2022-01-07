; ModuleID = '/home/carl/AnghaBench/redis/src/extr_object.c_getMemoryOverheadData.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_object.c_getMemoryOverheadData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, float, i64, i64, i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { float, float, float, float, i64 }
%struct.redisMemOverhead = type { i64, i64, float, float, float, float, float, float, float, i64, i64, i64, i64, i64, i64, i32, i64, i64, float, float, i64, %struct.TYPE_13__*, i64, i64 }
%struct.TYPE_13__ = type { i32, i64, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@CLIENT_SLAVE = common dso_local global i32 0, align 4
@CLIENT_MONITOR = common dso_local global i32 0, align 4
@AOF_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.redisMemOverhead* @getMemoryOverheadData() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.redisMemOverhead*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %15 = call i64 (...) @zmalloc_used_memory()
  store i64 %15, i64* %4, align 8
  %16 = call %struct.redisMemOverhead* @zcalloc(i32 160)
  store %struct.redisMemOverhead* %16, %struct.redisMemOverhead** %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %19 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 8
  %21 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %22 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 1), align 8
  %24 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %25 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %24, i32 0, i32 2
  store float %23, float* %25, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 4), align 8
  %27 = sitofp i64 %26 to float
  %28 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 0), align 8
  %29 = fdiv float %27, %28
  %30 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %31 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %30, i32 0, i32 3
  store float %29, float* %31, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 4), align 8
  %33 = sitofp i64 %32 to float
  %34 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 0), align 8
  %35 = fsub float %33, %34
  %36 = fptosi float %35 to i64
  %37 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %38 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %37, i32 0, i32 23
  store i64 %36, i64* %38, align 8
  %39 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 1), align 4
  %40 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 2), align 8
  %41 = fdiv float %39, %40
  %42 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %43 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %42, i32 0, i32 4
  store float %41, float* %43, align 8
  %44 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 1), align 4
  %45 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 2), align 8
  %46 = fsub float %44, %45
  %47 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %48 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %47, i32 0, i32 5
  store float %46, float* %48, align 4
  %49 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 3), align 4
  %50 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 1), align 4
  %51 = fdiv float %49, %50
  %52 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %53 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %52, i32 0, i32 6
  store float %51, float* %53, align 8
  %54 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 3), align 4
  %55 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 1), align 4
  %56 = fsub float %54, %55
  %57 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %58 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %57, i32 0, i32 7
  store float %56, float* %58, align 4
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 4), align 8
  %60 = sitofp i64 %59 to float
  %61 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 3), align 4
  %62 = fdiv float %60, %61
  %63 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %64 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %63, i32 0, i32 8
  store float %62, float* %64, align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 4), align 8
  %66 = sitofp i64 %65 to float
  %67 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 13, i32 3), align 4
  %68 = fsub float %66, %67
  %69 = fptosi float %68 to i64
  %70 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %71 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %70, i32 0, i32 22
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 8
  %73 = load i64, i64* %2, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 12), align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %0
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 12), align 8
  %79 = call i64 @zmalloc_size(i64 %78)
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %77, %0
  %83 = load i64, i64* %3, align 8
  %84 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %85 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %84, i32 0, i32 9
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %3, align 8
  %87 = load i64, i64* %2, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 11), align 4
  %90 = call i32 @listLength(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %82
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 11), align 4
  %94 = call i32 @listRewind(i32 %93, i32* %6)
  br label %95

95:                                               ; preds = %98, %92
  %96 = call i32* @listNext(i32* %6)
  store i32* %96, i32** %7, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load i32*, i32** %7, align 8
  %100 = call %struct.TYPE_12__* @listNodeValue(i32* %99)
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %8, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %102 = call i64 @getClientOutputBufferMemoryUsage(%struct.TYPE_12__* %101)
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %3, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @sdsAllocSize(i32 %107)
  %109 = load i64, i64* %3, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %3, align 8
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 8
  store i64 %112, i64* %3, align 8
  br label %95

113:                                              ; preds = %95
  br label %114

114:                                              ; preds = %113, %82
  %115 = load i64, i64* %3, align 8
  %116 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %117 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %116, i32 0, i32 10
  store i64 %115, i64* %117, align 8
  %118 = load i64, i64* %3, align 8
  %119 = load i64, i64* %2, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 10), align 8
  %122 = call i32 @listLength(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %161

124:                                              ; preds = %114
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 10), align 8
  %126 = call i32 @listRewind(i32 %125, i32* %9)
  br label %127

127:                                              ; preds = %147, %146, %124
  %128 = call i32* @listNext(i32* %9)
  store i32* %128, i32** %10, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %160

130:                                              ; preds = %127
  %131 = load i32*, i32** %10, align 8
  %132 = call %struct.TYPE_12__* @listNodeValue(i32* %131)
  store %struct.TYPE_12__* %132, %struct.TYPE_12__** %11, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @CLIENT_SLAVE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %130
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @CLIENT_MONITOR, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %139
  br label %127

147:                                              ; preds = %139, %130
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %149 = call i64 @getClientOutputBufferMemoryUsage(%struct.TYPE_12__* %148)
  %150 = load i64, i64* %3, align 8
  %151 = add i64 %150, %149
  store i64 %151, i64* %3, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @sdsAllocSize(i32 %154)
  %156 = load i64, i64* %3, align 8
  %157 = add i64 %156, %155
  store i64 %157, i64* %3, align 8
  %158 = load i64, i64* %3, align 8
  %159 = add i64 %158, 8
  store i64 %159, i64* %3, align 8
  br label %127

160:                                              ; preds = %127
  br label %161

161:                                              ; preds = %160, %114
  %162 = load i64, i64* %3, align 8
  %163 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %164 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %163, i32 0, i32 11
  store i64 %162, i64* %164, align 8
  %165 = load i64, i64* %3, align 8
  %166 = load i64, i64* %2, align 8
  %167 = add i64 %166, %165
  store i64 %167, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 2), align 8
  %169 = load i64, i64* @AOF_OFF, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %161
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 9), align 4
  %173 = call i64 @sdsalloc(i32 %172)
  %174 = load i64, i64* %3, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %3, align 8
  %176 = call i64 (...) @aofRewriteBufferSize()
  %177 = load i64, i64* %3, align 8
  %178 = add i64 %177, %176
  store i64 %178, i64* %3, align 8
  br label %179

179:                                              ; preds = %171, %161
  %180 = load i64, i64* %3, align 8
  %181 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %182 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %181, i32 0, i32 12
  store i64 %180, i64* %182, align 8
  %183 = load i64, i64* %3, align 8
  %184 = load i64, i64* %2, align 8
  %185 = add i64 %184, %183
  store i64 %185, i64* %2, align 8
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 3), align 8
  store i64 %186, i64* %3, align 8
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 8), align 8
  %188 = call i32 @dictSize(i32 %187)
  %189 = sext i32 %188 to i64
  %190 = mul i64 %189, 4
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 8), align 8
  %192 = call i32 @dictSlots(i32 %191)
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 8
  %195 = add i64 %190, %194
  %196 = load i64, i64* %3, align 8
  %197 = add i64 %196, %195
  store i64 %197, i64* %3, align 8
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 7), align 4
  %199 = call i32 @dictSize(i32 %198)
  %200 = sext i32 %199 to i64
  %201 = mul i64 %200, 4
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 7), align 4
  %203 = call i32 @dictSlots(i32 %202)
  %204 = sext i32 %203 to i64
  %205 = mul i64 %204, 8
  %206 = add i64 %201, %205
  %207 = load i64, i64* %3, align 8
  %208 = add i64 %207, %206
  store i64 %208, i64* %3, align 8
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 6), align 8
  %210 = call i32 @listLength(i32 %209)
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %179
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 6), align 8
  %214 = call i32 @listLength(i32 %213)
  %215 = sext i32 %214 to i64
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 6), align 8
  %217 = call i32* @listFirst(i32 %216)
  %218 = call %struct.TYPE_12__* @listNodeValue(i32* %217)
  %219 = call i32 @sdsZmallocSize(%struct.TYPE_12__* %218)
  %220 = sext i32 %219 to i64
  %221 = add i64 4, %220
  %222 = mul i64 %215, %221
  %223 = load i64, i64* %3, align 8
  %224 = add i64 %223, %222
  store i64 %224, i64* %3, align 8
  br label %225

225:                                              ; preds = %212, %179
  %226 = load i64, i64* %3, align 8
  %227 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %228 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %227, i32 0, i32 13
  store i64 %226, i64* %228, align 8
  %229 = load i64, i64* %3, align 8
  %230 = load i64, i64* %2, align 8
  %231 = add i64 %230, %229
  store i64 %231, i64* %2, align 8
  store i32 0, i32* %1, align 4
  br label %232

232:                                              ; preds = %341, %225
  %233 = load i32, i32* %1, align 4
  %234 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 4), align 8
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %344

236:                                              ; preds = %232
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 5), align 8
  %238 = load i32, i32* %1, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i64 %239
  store %struct.TYPE_11__* %240, %struct.TYPE_11__** %12, align 8
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @dictSize(i32 %243)
  %245 = sext i32 %244 to i64
  store i64 %245, i64* %13, align 8
  %246 = load i64, i64* %13, align 8
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %236
  br label %341

249:                                              ; preds = %236
  %250 = load i64, i64* %13, align 8
  %251 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %252 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %251, i32 0, i32 14
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %253, %250
  store i64 %254, i64* %252, align 8
  %255 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %256 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %255, i32 0, i32 21
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %259 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %258, i32 0, i32 15
  %260 = load i32, i32* %259, align 8
  %261 = add nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = mul i64 24, %262
  %264 = trunc i64 %263 to i32
  %265 = call %struct.TYPE_13__* @zrealloc(%struct.TYPE_13__* %257, i32 %264)
  %266 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %267 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %266, i32 0, i32 21
  store %struct.TYPE_13__* %265, %struct.TYPE_13__** %267, align 8
  %268 = load i32, i32* %1, align 4
  %269 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %270 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %269, i32 0, i32 21
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %270, align 8
  %272 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %273 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %272, i32 0, i32 15
  %274 = load i32, i32* %273, align 8
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  store i32 %268, i32* %277, align 8
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @dictSize(i32 %280)
  %282 = sext i32 %281 to i64
  %283 = mul i64 %282, 4
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @dictSlots(i32 %286)
  %288 = sext i32 %287 to i64
  %289 = mul i64 %288, 8
  %290 = add i64 %283, %289
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @dictSize(i32 %293)
  %295 = sext i32 %294 to i64
  %296 = mul i64 %295, 4
  %297 = add i64 %290, %296
  store i64 %297, i64* %3, align 8
  %298 = load i64, i64* %3, align 8
  %299 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %300 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %299, i32 0, i32 21
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %300, align 8
  %302 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %303 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %302, i32 0, i32 15
  %304 = load i32, i32* %303, align 8
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 1
  store i64 %298, i64* %307, align 8
  %308 = load i64, i64* %3, align 8
  %309 = load i64, i64* %2, align 8
  %310 = add i64 %309, %308
  store i64 %310, i64* %2, align 8
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @dictSize(i32 %313)
  %315 = sext i32 %314 to i64
  %316 = mul i64 %315, 4
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @dictSlots(i32 %319)
  %321 = sext i32 %320 to i64
  %322 = mul i64 %321, 8
  %323 = add i64 %316, %322
  store i64 %323, i64* %3, align 8
  %324 = load i64, i64* %3, align 8
  %325 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %326 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %325, i32 0, i32 21
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %326, align 8
  %328 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %329 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %328, i32 0, i32 15
  %330 = load i32, i32* %329, align 8
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 2
  store i64 %324, i64* %333, align 8
  %334 = load i64, i64* %3, align 8
  %335 = load i64, i64* %2, align 8
  %336 = add i64 %335, %334
  store i64 %336, i64* %2, align 8
  %337 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %338 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %337, i32 0, i32 15
  %339 = load i32, i32* %338, align 8
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %338, align 8
  br label %341

341:                                              ; preds = %249, %248
  %342 = load i32, i32* %1, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %1, align 4
  br label %232

344:                                              ; preds = %232
  %345 = load i64, i64* %2, align 8
  %346 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %347 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %346, i32 0, i32 16
  store i64 %345, i64* %347, align 8
  %348 = load i64, i64* %4, align 8
  %349 = load i64, i64* %2, align 8
  %350 = sub i64 %348, %349
  %351 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %352 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %351, i32 0, i32 17
  store i64 %350, i64* %352, align 8
  %353 = load i64, i64* %4, align 8
  %354 = uitofp i64 %353 to float
  %355 = fmul float %354, 1.000000e+02
  %356 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %357 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %356, i32 0, i32 2
  %358 = load float, float* %357, align 8
  %359 = fdiv float %355, %358
  %360 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %361 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %360, i32 0, i32 18
  store float %359, float* %361, align 8
  store i64 1, i64* %14, align 8
  %362 = load i64, i64* %4, align 8
  %363 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %364 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = icmp ugt i64 %362, %365
  br i1 %366, label %367, label %373

367:                                              ; preds = %344
  %368 = load i64, i64* %4, align 8
  %369 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %370 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = sub i64 %368, %371
  store i64 %372, i64* %14, align 8
  br label %373

373:                                              ; preds = %367, %344
  %374 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %375 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %374, i32 0, i32 17
  %376 = load i64, i64* %375, align 8
  %377 = uitofp i64 %376 to float
  %378 = fmul float %377, 1.000000e+02
  %379 = load i64, i64* %14, align 8
  %380 = uitofp i64 %379 to float
  %381 = fdiv float %378, %380
  %382 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %383 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %382, i32 0, i32 19
  store float %381, float* %383, align 4
  %384 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %385 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %384, i32 0, i32 14
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %373
  %389 = load i64, i64* %14, align 8
  %390 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %391 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %390, i32 0, i32 14
  %392 = load i64, i64* %391, align 8
  %393 = udiv i64 %389, %392
  br label %395

394:                                              ; preds = %373
  br label %395

395:                                              ; preds = %394, %388
  %396 = phi i64 [ %393, %388 ], [ 0, %394 ]
  %397 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  %398 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %397, i32 0, i32 20
  store i64 %396, i64* %398, align 8
  %399 = load %struct.redisMemOverhead*, %struct.redisMemOverhead** %5, align 8
  ret %struct.redisMemOverhead* %399
}

declare dso_local i64 @zmalloc_used_memory(...) #1

declare dso_local %struct.redisMemOverhead* @zcalloc(i32) #1

declare dso_local i64 @zmalloc_size(i64) #1

declare dso_local i32 @listLength(i32) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local %struct.TYPE_12__* @listNodeValue(i32*) #1

declare dso_local i64 @getClientOutputBufferMemoryUsage(%struct.TYPE_12__*) #1

declare dso_local i64 @sdsAllocSize(i32) #1

declare dso_local i64 @sdsalloc(i32) #1

declare dso_local i64 @aofRewriteBufferSize(...) #1

declare dso_local i32 @dictSize(i32) #1

declare dso_local i32 @dictSlots(i32) #1

declare dso_local i32 @sdsZmallocSize(%struct.TYPE_12__*) #1

declare dso_local i32* @listFirst(i32) #1

declare dso_local %struct.TYPE_13__* @zrealloc(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

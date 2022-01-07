; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_hash.c_xmlHashAddEntry3.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_hash.c_xmlHashAddEntry3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, i8*, i32*, i32*, i32* }

@MAX_HASH_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlHashAddEntry3(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = icmp eq %struct.TYPE_7__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %5
  store i32 -1, i32* %6, align 4
  br label %303

22:                                               ; preds = %18
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %85

27:                                               ; preds = %22
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @xmlDictOwns(i32* %30, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @xmlDictLookup(i32* %37, i32* %38, i32 -1)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 -1, i32* %6, align 4
  br label %303

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @xmlDictOwns(i32* %50, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32* @xmlDictLookup(i32* %57, i32* %58, i32 -1)
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 -1, i32* %6, align 4
  br label %303

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %47, %44
  %65 = load i32*, i32** %10, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @xmlDictOwns(i32* %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %67
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32* @xmlDictLookup(i32* %77, i32* %78, i32 -1)
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 -1, i32* %6, align 4
  br label %303

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %67, %64
  br label %85

85:                                               ; preds = %84, %22
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = call i64 @xmlHashComputeKey(%struct.TYPE_7__* %86, i32* %87, i32* %88, i32* %89)
  store i64 %90, i64* %12, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %15, align 8
  br label %226

100:                                              ; preds = %85
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %162

105:                                              ; preds = %100
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %109
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %15, align 8
  br label %111

111:                                              ; preds = %138, %105
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = icmp ne %struct.TYPE_8__* %114, null
  br i1 %115, label %116, label %142

116:                                              ; preds = %111
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = icmp eq i32* %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %116
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = icmp eq i32* %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = icmp eq i32* %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 -1, i32* %6, align 4
  br label %303

135:                                              ; preds = %128, %122, %116
  %136 = load i64, i64* %13, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %13, align 8
  br label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  store %struct.TYPE_8__* %141, %struct.TYPE_8__** %15, align 8
  br label %111

142:                                              ; preds = %111
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = icmp eq i32* %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %142
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = icmp eq i32* %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %148
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = icmp eq i32* %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i32 -1, i32* %6, align 4
  br label %303

161:                                              ; preds = %154, %148, %142
  br label %225

162:                                              ; preds = %100
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i64, i64* %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %166
  store %struct.TYPE_8__* %167, %struct.TYPE_8__** %15, align 8
  br label %168

168:                                              ; preds = %198, %162
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = icmp ne %struct.TYPE_8__* %171, null
  br i1 %172, label %173, label %202

173:                                              ; preds = %168
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 5
  %176 = load i32*, i32** %175, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = call i64 @xmlStrEqual(i32* %176, i32* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %173
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = call i64 @xmlStrEqual(i32* %183, i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %180
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = load i32*, i32** %10, align 8
  %192 = call i64 @xmlStrEqual(i32* %190, i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  store i32 -1, i32* %6, align 4
  br label %303

195:                                              ; preds = %187, %180, %173
  %196 = load i64, i64* %13, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %13, align 8
  br label %198

198:                                              ; preds = %195
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  store %struct.TYPE_8__* %201, %struct.TYPE_8__** %15, align 8
  br label %168

202:                                              ; preds = %168
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 5
  %205 = load i32*, i32** %204, align 8
  %206 = load i32*, i32** %8, align 8
  %207 = call i64 @xmlStrEqual(i32* %205, i32* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %224

209:                                              ; preds = %202
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = load i32*, i32** %9, align 8
  %214 = call i64 @xmlStrEqual(i32* %212, i32* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %209
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = load i32*, i32** %10, align 8
  %221 = call i64 @xmlStrEqual(i32* %219, i32* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  store i32 -1, i32* %6, align 4
  br label %303

224:                                              ; preds = %216, %209, %202
  br label %225

225:                                              ; preds = %224, %161
  br label %226

226:                                              ; preds = %225, %99
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %228 = icmp eq %struct.TYPE_8__* %227, null
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %231, align 8
  %233 = load i64, i64* %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i64 %233
  store %struct.TYPE_8__* %234, %struct.TYPE_8__** %14, align 8
  br label %241

235:                                              ; preds = %226
  %236 = call %struct.TYPE_8__* @xmlMalloc(i32 4)
  store %struct.TYPE_8__* %236, %struct.TYPE_8__** %14, align 8
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %238 = icmp eq %struct.TYPE_8__* %237, null
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  store i32 -1, i32* %6, align 4
  br label %303

240:                                              ; preds = %235
  br label %241

241:                                              ; preds = %240, %229
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %256

246:                                              ; preds = %241
  %247 = load i32*, i32** %8, align 8
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 5
  store i32* %247, i32** %249, align 8
  %250 = load i32*, i32** %9, align 8
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 4
  store i32* %250, i32** %252, align 8
  %253 = load i32*, i32** %10, align 8
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 3
  store i32* %253, i32** %255, align 8
  br label %272

256:                                              ; preds = %241
  %257 = load i32*, i32** %8, align 8
  %258 = call i8* @xmlStrdup(i32* %257)
  %259 = bitcast i8* %258 to i32*
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 5
  store i32* %259, i32** %261, align 8
  %262 = load i32*, i32** %9, align 8
  %263 = call i8* @xmlStrdup(i32* %262)
  %264 = bitcast i8* %263 to i32*
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 4
  store i32* %264, i32** %266, align 8
  %267 = load i32*, i32** %10, align 8
  %268 = call i8* @xmlStrdup(i32* %267)
  %269 = bitcast i8* %268 to i32*
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 3
  store i32* %269, i32** %271, align 8
  br label %272

272:                                              ; preds = %256, %246
  %273 = load i8*, i8** %11, align 8
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 2
  store i8* %273, i8** %275, align 8
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %277, align 8
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 0
  store i64 1, i64* %279, align 8
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %281 = icmp ne %struct.TYPE_8__* %280, null
  br i1 %281, label %282, label %286

282:                                              ; preds = %272
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 1
  store %struct.TYPE_8__* %283, %struct.TYPE_8__** %285, align 8
  br label %286

286:                                              ; preds = %282, %272
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 8
  %291 = load i64, i64* %13, align 8
  %292 = load i64, i64* @MAX_HASH_LEN, align 8
  %293 = icmp ugt i64 %291, %292
  br i1 %293, label %294, label %302

294:                                              ; preds = %286
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %296 = load i64, i64* @MAX_HASH_LEN, align 8
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = mul i64 %296, %299
  %301 = call i32 @xmlHashGrow(%struct.TYPE_7__* %295, i64 %300)
  br label %302

302:                                              ; preds = %294, %286
  store i32 0, i32* %6, align 4
  br label %303

303:                                              ; preds = %302, %239, %223, %194, %160, %134, %82, %62, %42, %21
  %304 = load i32, i32* %6, align 4
  ret i32 %304
}

declare dso_local i32 @xmlDictOwns(i32*, i32*) #1

declare dso_local i32* @xmlDictLookup(i32*, i32*, i32) #1

declare dso_local i64 @xmlHashComputeKey(%struct.TYPE_7__*, i32*, i32*, i32*) #1

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @xmlMalloc(i32) #1

declare dso_local i8* @xmlStrdup(i32*) #1

declare dso_local i32 @xmlHashGrow(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictQLookup.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictQLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i64, i32, %struct.TYPE_10__*, i32* }

@MIN_DICT_SIZE = common dso_local global i64 0, align 8
@MAX_HASH_LEN = common dso_local global i64 0, align 8
@MAX_DICT_HASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlDictQLookup(%struct.TYPE_9__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %10, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = icmp eq %struct.TYPE_9__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %3
  store i32* null, i32** %4, align 8
  br label %341

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32* @xmlDictLookup(%struct.TYPE_9__* %29, i32* %30, i32 -1)
  store i32* %31, i32** %4, align 8
  br label %341

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %14, align 4
  store i32 %35, i32* %16, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = call i32 @strlen(i8* %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = add i32 1, %39
  %41 = load i32, i32* %14, align 4
  %42 = add i32 %41, %40
  store i32 %42, i32* %14, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call i64 @xmlDictComputeQKey(%struct.TYPE_9__* %43, i32* %44, i32 %45, i32* %46, i32 %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = urem i64 %49, %52
  store i64 %53, i64* %9, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %32
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  br label %130

63:                                               ; preds = %32
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 %67
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %12, align 8
  br label %69

69:                                               ; preds = %101, %63
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = icmp ne %struct.TYPE_10__* %72, null
  br i1 %73, label %74, label %105

74:                                               ; preds = %69
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %74
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @xmlStrQEqual(i32* %87, i32* %88, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %4, align 8
  br label %341

98:                                               ; preds = %86, %80, %74
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %10, align 8
  br label %101

101:                                              ; preds = %98
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  store %struct.TYPE_10__* %104, %struct.TYPE_10__** %12, align 8
  br label %69

105:                                              ; preds = %69
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %105
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %111
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @xmlStrQEqual(i32* %118, i32* %119, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  store i32* %128, i32** %4, align 8
  br label %341

129:                                              ; preds = %117, %111, %105
  br label %130

130:                                              ; preds = %129, %62
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = icmp ne %struct.TYPE_9__* %133, null
  br i1 %134, label %135, label %267

135:                                              ; preds = %130
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @MIN_DICT_SIZE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %135
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @MIN_DICT_SIZE, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %163, label %149

149:                                              ; preds = %141, %135
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @MIN_DICT_SIZE, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %149
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @MIN_DICT_SIZE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %155, %141
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %15, align 4
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* %16, align 4
  %171 = call i64 @xmlDictComputeQKey(%struct.TYPE_9__* %166, i32* %167, i32 %168, i32* %169, i32 %170)
  store i64 %171, i64* %17, align 8
  br label %174

172:                                              ; preds = %155, %149
  %173 = load i64, i64* %8, align 8
  store i64 %173, i64* %17, align 8
  br label %174

174:                                              ; preds = %172, %163
  %175 = load i64, i64* %17, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = urem i64 %175, %180
  store i64 %181, i64* %9, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %261

192:                                              ; preds = %174
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = load i64, i64* %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 %198
  store %struct.TYPE_10__* %199, %struct.TYPE_10__** %18, align 8
  br label %200

200:                                              ; preds = %232, %192
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %202, align 8
  %204 = icmp ne %struct.TYPE_10__* %203, null
  br i1 %204, label %205, label %236

205:                                              ; preds = %200
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %17, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %229

211:                                              ; preds = %205
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %14, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %229

217:                                              ; preds = %211
  %218 = load i32*, i32** %6, align 8
  %219 = load i32*, i32** %7, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 4
  %222 = load i32*, i32** %221, align 8
  %223 = call i64 @xmlStrQEqual(i32* %218, i32* %219, i32* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %217
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  store i32* %228, i32** %4, align 8
  br label %341

229:                                              ; preds = %217, %211, %205
  %230 = load i64, i64* %10, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %10, align 8
  br label %232

232:                                              ; preds = %229
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 3
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  store %struct.TYPE_10__* %235, %struct.TYPE_10__** %18, align 8
  br label %200

236:                                              ; preds = %200
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* %17, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %260

242:                                              ; preds = %236
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %14, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %260

248:                                              ; preds = %242
  %249 = load i32*, i32** %6, align 8
  %250 = load i32*, i32** %7, align 8
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 4
  %253 = load i32*, i32** %252, align 8
  %254 = call i64 @xmlStrQEqual(i32* %249, i32* %250, i32* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %248
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 4
  %259 = load i32*, i32** %258, align 8
  store i32* %259, i32** %4, align 8
  br label %341

260:                                              ; preds = %248, %242, %236
  br label %261

261:                                              ; preds = %260, %174
  %262 = load i64, i64* %8, align 8
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = urem i64 %262, %265
  store i64 %266, i64* %9, align 8
  br label %267

267:                                              ; preds = %261, %130
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %269 = load i32*, i32** %6, align 8
  %270 = load i32, i32* %15, align 4
  %271 = load i32*, i32** %7, align 8
  %272 = load i32, i32* %16, align 4
  %273 = call i32* @xmlDictAddQString(%struct.TYPE_9__* %268, i32* %269, i32 %270, i32* %271, i32 %272)
  store i32* %273, i32** %13, align 8
  %274 = load i32*, i32** %13, align 8
  %275 = icmp eq i32* %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %267
  store i32* null, i32** %4, align 8
  br label %341

277:                                              ; preds = %267
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %279 = icmp eq %struct.TYPE_10__* %278, null
  br i1 %279, label %280, label %286

280:                                              ; preds = %277
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %282, align 8
  %284 = load i64, i64* %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i64 %284
  store %struct.TYPE_10__* %285, %struct.TYPE_10__** %11, align 8
  br label %292

286:                                              ; preds = %277
  %287 = call %struct.TYPE_10__* @xmlMalloc(i32 4)
  store %struct.TYPE_10__* %287, %struct.TYPE_10__** %11, align 8
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %289 = icmp eq %struct.TYPE_10__* %288, null
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  store i32* null, i32** %4, align 8
  br label %341

291:                                              ; preds = %286
  br label %292

292:                                              ; preds = %291, %280
  %293 = load i32*, i32** %13, align 8
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 4
  store i32* %293, i32** %295, align 8
  %296 = load i32, i32* %14, align 4
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 2
  store i32 %296, i32* %298, align 8
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %300, align 8
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 0
  store i64 1, i64* %302, align 8
  %303 = load i64, i64* %8, align 8
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 1
  store i64 %303, i64* %305, align 8
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %307 = icmp ne %struct.TYPE_10__* %306, null
  br i1 %307, label %308, label %312

308:                                              ; preds = %292
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 3
  store %struct.TYPE_10__* %309, %struct.TYPE_10__** %311, align 8
  br label %312

312:                                              ; preds = %308, %292
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 8
  %317 = load i64, i64* %10, align 8
  %318 = load i64, i64* @MAX_HASH_LEN, align 8
  %319 = icmp ugt i64 %317, %318
  br i1 %319, label %320, label %339

320:                                              ; preds = %312
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i32, i32* @MAX_DICT_HASH, align 4
  %325 = sdiv i32 %324, 2
  %326 = sext i32 %325 to i64
  %327 = load i64, i64* @MAX_HASH_LEN, align 8
  %328 = udiv i64 %326, %327
  %329 = icmp ule i64 %323, %328
  br i1 %329, label %330, label %339

330:                                              ; preds = %320
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %332 = load i64, i64* @MAX_HASH_LEN, align 8
  %333 = mul i64 %332, 2
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = mul i64 %333, %336
  %338 = call i32 @xmlDictGrow(%struct.TYPE_9__* %331, i64 %337)
  br label %339

339:                                              ; preds = %330, %320, %312
  %340 = load i32*, i32** %13, align 8
  store i32* %340, i32** %4, align 8
  br label %341

341:                                              ; preds = %339, %290, %276, %256, %225, %125, %94, %28, %24
  %342 = load i32*, i32** %4, align 8
  ret i32* %342
}

declare dso_local i32* @xmlDictLookup(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xmlDictComputeQKey(%struct.TYPE_9__*, i32*, i32, i32*, i32) #1

declare dso_local i64 @xmlStrQEqual(i32*, i32*, i32*) #1

declare dso_local i32* @xmlDictAddQString(%struct.TYPE_9__*, i32*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_10__* @xmlMalloc(i32) #1

declare dso_local i32 @xmlDictGrow(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

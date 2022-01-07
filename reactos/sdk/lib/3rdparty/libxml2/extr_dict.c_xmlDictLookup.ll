; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictLookup.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_9__*, i32* }

@INT_MAX = common dso_local global i32 0, align 4
@MIN_DICT_SIZE = common dso_local global i64 0, align 8
@MAX_HASH_LEN = common dso_local global i64 0, align 8
@MAX_DICT_HASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlDictLookup(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %10, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %3
  store i32* null, i32** %4, align 8
  br label %349

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %14, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp uge i32 %38, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @INT_MAX, align 4
  %46 = sdiv i32 %45, 2
  %47 = icmp ugt i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %37
  store i32* null, i32** %4, align 8
  br label %349

49:                                               ; preds = %43
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i64 @xmlDictComputeKey(%struct.TYPE_8__* %50, i32* %51, i32 %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = urem i64 %54, %57
  store i64 %58, i64* %8, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  br label %137

68:                                               ; preds = %49
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %72
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %12, align 8
  br label %74

74:                                               ; preds = %107, %68
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = icmp ne %struct.TYPE_9__* %77, null
  br i1 %78, label %79, label %111

79:                                               ; preds = %74
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %79
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @memcmp(i32* %94, i32* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %91
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %4, align 8
  br label %349

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %85, %79
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %10, align 8
  br label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  store %struct.TYPE_9__* %110, %struct.TYPE_9__** %12, align 8
  br label %74

111:                                              ; preds = %74
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %111
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %117
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @memcmp(i32* %126, i32* %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %123
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  store i32* %134, i32** %4, align 8
  br label %349

135:                                              ; preds = %123
  br label %136

136:                                              ; preds = %135, %117, %111
  br label %137

137:                                              ; preds = %136, %67
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = icmp ne %struct.TYPE_8__* %140, null
  br i1 %141, label %142, label %274

142:                                              ; preds = %137
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @MIN_DICT_SIZE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %142
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @MIN_DICT_SIZE, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %170, label %156

156:                                              ; preds = %148, %142
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @MIN_DICT_SIZE, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %156
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @MIN_DICT_SIZE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %162, %148
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* %14, align 4
  %176 = call i64 @xmlDictComputeKey(%struct.TYPE_8__* %173, i32* %174, i32 %175)
  store i64 %176, i64* %15, align 8
  br label %179

177:                                              ; preds = %162, %156
  %178 = load i64, i64* %9, align 8
  store i64 %178, i64* %15, align 8
  br label %179

179:                                              ; preds = %177, %170
  %180 = load i64, i64* %15, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = urem i64 %180, %185
  store i64 %186, i64* %8, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = load i64, i64* %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %268

197:                                              ; preds = %179
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = load i64, i64* %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i64 %203
  store %struct.TYPE_9__* %204, %struct.TYPE_9__** %16, align 8
  br label %205

205:                                              ; preds = %238, %197
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 3
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = icmp ne %struct.TYPE_9__* %208, null
  br i1 %209, label %210, label %242

210:                                              ; preds = %205
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %15, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %235

216:                                              ; preds = %210
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %14, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %235

222:                                              ; preds = %216
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 4
  %225 = load i32*, i32** %224, align 8
  %226 = load i32*, i32** %6, align 8
  %227 = load i32, i32* %14, align 4
  %228 = call i32 @memcmp(i32* %225, i32* %226, i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %222
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 4
  %233 = load i32*, i32** %232, align 8
  store i32* %233, i32** %4, align 8
  br label %349

234:                                              ; preds = %222
  br label %235

235:                                              ; preds = %234, %216, %210
  %236 = load i64, i64* %10, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %10, align 8
  br label %238

238:                                              ; preds = %235
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 3
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  store %struct.TYPE_9__* %241, %struct.TYPE_9__** %16, align 8
  br label %205

242:                                              ; preds = %205
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* %15, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %267

248:                                              ; preds = %242
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %14, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %267

254:                                              ; preds = %248
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 4
  %257 = load i32*, i32** %256, align 8
  %258 = load i32*, i32** %6, align 8
  %259 = load i32, i32* %14, align 4
  %260 = call i32 @memcmp(i32* %257, i32* %258, i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %266, label %262

262:                                              ; preds = %254
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 4
  %265 = load i32*, i32** %264, align 8
  store i32* %265, i32** %4, align 8
  br label %349

266:                                              ; preds = %254
  br label %267

267:                                              ; preds = %266, %248, %242
  br label %268

268:                                              ; preds = %267, %179
  %269 = load i64, i64* %9, align 8
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = urem i64 %269, %272
  store i64 %273, i64* %8, align 8
  br label %274

274:                                              ; preds = %268, %137
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %276 = load i32*, i32** %6, align 8
  %277 = load i32, i32* %14, align 4
  %278 = call i32* @xmlDictAddString(%struct.TYPE_8__* %275, i32* %276, i32 %277)
  store i32* %278, i32** %13, align 8
  %279 = load i32*, i32** %13, align 8
  %280 = icmp eq i32* %279, null
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  store i32* null, i32** %4, align 8
  br label %349

282:                                              ; preds = %274
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %284 = icmp eq %struct.TYPE_9__* %283, null
  br i1 %284, label %285, label %291

285:                                              ; preds = %282
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 3
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %287, align 8
  %289 = load i64, i64* %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i64 %289
  store %struct.TYPE_9__* %290, %struct.TYPE_9__** %11, align 8
  br label %297

291:                                              ; preds = %282
  %292 = call %struct.TYPE_9__* @xmlMalloc(i32 4)
  store %struct.TYPE_9__* %292, %struct.TYPE_9__** %11, align 8
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %294 = icmp eq %struct.TYPE_9__* %293, null
  br i1 %294, label %295, label %296

295:                                              ; preds = %291
  store i32* null, i32** %4, align 8
  br label %349

296:                                              ; preds = %291
  br label %297

297:                                              ; preds = %296, %285
  %298 = load i32*, i32** %13, align 8
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 4
  store i32* %298, i32** %300, align 8
  %301 = load i32, i32* %14, align 4
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 2
  store i32 %301, i32* %303, align 8
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %305, align 8
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 0
  store i64 1, i64* %307, align 8
  %308 = load i64, i64* %9, align 8
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 1
  store i64 %308, i64* %310, align 8
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %312 = icmp ne %struct.TYPE_9__* %311, null
  br i1 %312, label %313, label %317

313:                                              ; preds = %297
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 3
  store %struct.TYPE_9__* %314, %struct.TYPE_9__** %316, align 8
  br label %317

317:                                              ; preds = %313, %297
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %319, align 8
  %322 = load i64, i64* %10, align 8
  %323 = load i64, i64* @MAX_HASH_LEN, align 8
  %324 = icmp ugt i64 %322, %323
  br i1 %324, label %325, label %347

325:                                              ; preds = %317
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = load i32, i32* @MAX_DICT_HASH, align 4
  %330 = sdiv i32 %329, 2
  %331 = sext i32 %330 to i64
  %332 = load i64, i64* @MAX_HASH_LEN, align 8
  %333 = udiv i64 %331, %332
  %334 = icmp ule i64 %328, %333
  br i1 %334, label %335, label %347

335:                                              ; preds = %325
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %337 = load i64, i64* @MAX_HASH_LEN, align 8
  %338 = mul i64 %337, 2
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = mul i64 %338, %341
  %343 = call i64 @xmlDictGrow(%struct.TYPE_8__* %336, i64 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %335
  store i32* null, i32** %4, align 8
  br label %349

346:                                              ; preds = %335
  br label %347

347:                                              ; preds = %346, %325, %317
  %348 = load i32*, i32** %13, align 8
  store i32* %348, i32** %4, align 8
  br label %349

349:                                              ; preds = %347, %345, %295, %281, %262, %230, %131, %99, %48, %22
  %350 = load i32*, i32** %4, align 8
  ret i32* %350
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xmlDictComputeKey(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32* @xmlDictAddString(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @xmlMalloc(i32) #1

declare dso_local i64 @xmlDictGrow(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

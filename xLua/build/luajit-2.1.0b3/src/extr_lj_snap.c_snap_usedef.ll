; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_snap.c_snap_usedef.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_snap.c_snap_usedef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@BC_CAT = common dso_local global i32 0, align 4
@BC_FORI = common dso_local global i32 0, align 4
@BC_JFORL = common dso_local global i32 0, align 4
@FORL_EXT = common dso_local global i64 0, align 8
@BC_ITERL = common dso_local global i32 0, align 4
@BC_JITERL = common dso_local global i32 0, align 4
@BC_UCLO = common dso_local global i32 0, align 4
@BC_JLOOP = common dso_local global i32 0, align 4
@BC_RETM = common dso_local global i32 0, align 4
@BC_ISTC = common dso_local global i32 0, align 4
@BC_ISFC = common dso_local global i32 0, align 4
@BC_CALLM = common dso_local global i32 0, align 4
@BC_VARG = common dso_local global i32 0, align 4
@BC_CALLMT = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i64 0, align 8
@BC_ITERC = common dso_local global i32 0, align 4
@BC_ITERN = common dso_local global i32 0, align 4
@BC_CALLT = common dso_local global i32 0, align 4
@BC_KNIL = common dso_local global i32 0, align 4
@BC_TSETM = common dso_local global i32 0, align 4
@SNAP_USEDEF_SLOTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i64*, i32*, i64)* @snap_usedef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snap_usedef(%struct.TYPE_11__* %0, i64* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %506

20:                                               ; preds = %4
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @memset(i64* %21, i32 1, i64 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_12__* @gcref(i32 %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %11, align 8
  br label %30

30:                                               ; preds = %44, %20
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %30
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %35 = call i32 @gco2uv(%struct.TYPE_12__* %34)
  %36 = call i64 @uvval(i32 %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %36, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %61

44:                                               ; preds = %33
  %45 = load i64*, i64** %7, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %47 = call i32 @gco2uv(%struct.TYPE_12__* %46)
  %48 = call i64 @uvval(i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %48, %53
  %55 = getelementptr inbounds i64, i64* %45, i64 %54
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_12__* @gcref(i32 %59)
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %11, align 8
  br label %30

61:                                               ; preds = %43, %30
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = call i32* @proto_bc(%struct.TYPE_13__* %65)
  %67 = icmp uge i32* %62, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %61
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = call i32* @proto_bc(%struct.TYPE_13__* %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %73, i64 %79
  %81 = icmp ult i32* %69, %80
  br label %82

82:                                               ; preds = %68, %61
  %83 = phi i1 [ false, %61 ], [ %81, %68 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @lua_assert(i32 %84)
  br label %86

86:                                               ; preds = %502, %82
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %8, align 8
  %89 = load i32, i32* %87, align 4
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @bc_op(i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @bcmode_b(i32 %92)
  switch i32 %93, label %101 [
    i32 128, label %94
  ]

94:                                               ; preds = %86
  %95 = load i64*, i64** %7, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i64 @bc_b(i32 %96)
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %99, -2
  store i64 %100, i64* %98, align 8
  br label %102

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101, %94
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @bcmode_c(i32 %103)
  switch i32 %104, label %296 [
    i32 128, label %105
    i32 129, label %112
    i32 131, label %149
    i32 130, label %217
    i32 132, label %294
  ]

105:                                              ; preds = %102
  %106 = load i64*, i64** %7, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i64 @bc_c(i32 %107)
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = and i64 %110, -2
  store i64 %111, i64* %109, align 8
  br label %297

112:                                              ; preds = %102
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @BC_CAT, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @lua_assert(i32 %116)
  %118 = load i32, i32* %12, align 4
  %119 = call i64 @bc_b(i32 %118)
  store i64 %119, i64* %10, align 8
  br label %120

120:                                              ; preds = %131, %112
  %121 = load i64, i64* %10, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i64 @bc_c(i32 %122)
  %124 = icmp sle i64 %121, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load i64*, i64** %7, align 8
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = and i64 %129, -2
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %125
  %132 = load i64, i64* %10, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %10, align 8
  br label %120

134:                                              ; preds = %120
  br label %135

135:                                              ; preds = %145, %134
  %136 = load i64, i64* %10, align 8
  %137 = load i64, i64* %9, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %135
  %140 = load i64*, i64** %7, align 8
  %141 = load i64, i64* %10, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = mul nsw i64 %143, 3
  store i64 %144, i64* %142, align 8
  br label %145

145:                                              ; preds = %139
  %146 = load i64, i64* %10, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %10, align 8
  br label %135

148:                                              ; preds = %135
  br label %297

149:                                              ; preds = %102
  br label %150

150:                                              ; preds = %229, %149
  %151 = load i32, i32* %12, align 4
  %152 = call i64 @bc_a(i32 %151)
  store i64 %152, i64* %14, align 8
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @BC_FORI, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @BC_JFORL, align 4
  %159 = icmp sle i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i64, i64* @FORL_EXT, align 8
  %162 = load i64, i64* %14, align 8
  %163 = add nsw i64 %162, %161
  store i64 %163, i64* %14, align 8
  br label %192

164:                                              ; preds = %156, %150
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @BC_ITERL, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %164
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* @BC_JITERL, align 4
  %171 = icmp sle i32 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = load i32*, i32** %8, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 -2
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @bc_b(i32 %175)
  %177 = sub nsw i64 %176, 1
  %178 = load i64, i64* %14, align 8
  %179 = add nsw i64 %178, %177
  store i64 %179, i64* %14, align 8
  br label %191

180:                                              ; preds = %168, %164
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @BC_UCLO, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @bc_j(i32 %185)
  %187 = load i32*, i32** %8, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %8, align 8
  br label %297

190:                                              ; preds = %180
  br label %191

191:                                              ; preds = %190, %172
  br label %192

192:                                              ; preds = %191, %160
  %193 = load i64, i64* %14, align 8
  store i64 %193, i64* %10, align 8
  br label %194

194:                                              ; preds = %204, %192
  %195 = load i64, i64* %10, align 8
  %196 = load i64, i64* %9, align 8
  %197 = icmp slt i64 %195, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %194
  %199 = load i64*, i64** %7, align 8
  %200 = load i64, i64* %10, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = mul nsw i64 %202, 3
  store i64 %203, i64* %201, align 8
  br label %204

204:                                              ; preds = %198
  %205 = load i64, i64* %10, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %10, align 8
  br label %194

207:                                              ; preds = %194
  %208 = load i64, i64* %14, align 8
  %209 = load i64, i64* %9, align 8
  %210 = icmp slt i64 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = load i64, i64* %14, align 8
  br label %215

213:                                              ; preds = %207
  %214 = load i64, i64* %9, align 8
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i64 [ %212, %211 ], [ %214, %213 ]
  store i64 %216, i64* %5, align 8
  br label %506

217:                                              ; preds = %102
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* @BC_JFORL, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %229, label %221

221:                                              ; preds = %217
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* @BC_JITERL, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %229, label %225

225:                                              ; preds = %221
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* @BC_JLOOP, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %225, %221, %217
  br label %150

230:                                              ; preds = %225
  %231 = load i32, i32* %13, align 4
  %232 = call i32 @bc_isret(i32 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %292

234:                                              ; preds = %230
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* @BC_RETM, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = load i64, i64* %9, align 8
  br label %247

240:                                              ; preds = %234
  %241 = load i32, i32* %12, align 4
  %242 = call i64 @bc_a(i32 %241)
  %243 = load i32, i32* %12, align 4
  %244 = call i64 @bc_d(i32 %243)
  %245 = add nsw i64 %242, %244
  %246 = sub nsw i64 %245, 1
  br label %247

247:                                              ; preds = %240, %238
  %248 = phi i64 [ %239, %238 ], [ %246, %240 ]
  store i64 %248, i64* %15, align 8
  store i64 0, i64* %10, align 8
  br label %249

249:                                              ; preds = %260, %247
  %250 = load i64, i64* %10, align 8
  %251 = load i32, i32* %12, align 4
  %252 = call i64 @bc_a(i32 %251)
  %253 = icmp slt i64 %250, %252
  br i1 %253, label %254, label %263

254:                                              ; preds = %249
  %255 = load i64*, i64** %7, align 8
  %256 = load i64, i64* %10, align 8
  %257 = getelementptr inbounds i64, i64* %255, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = mul nsw i64 %258, 3
  store i64 %259, i64* %257, align 8
  br label %260

260:                                              ; preds = %254
  %261 = load i64, i64* %10, align 8
  %262 = add nsw i64 %261, 1
  store i64 %262, i64* %10, align 8
  br label %249

263:                                              ; preds = %249
  br label %264

264:                                              ; preds = %274, %263
  %265 = load i64, i64* %10, align 8
  %266 = load i64, i64* %15, align 8
  %267 = icmp slt i64 %265, %266
  br i1 %267, label %268, label %277

268:                                              ; preds = %264
  %269 = load i64*, i64** %7, align 8
  %270 = load i64, i64* %10, align 8
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = and i64 %272, -2
  store i64 %273, i64* %271, align 8
  br label %274

274:                                              ; preds = %268
  %275 = load i64, i64* %10, align 8
  %276 = add nsw i64 %275, 1
  store i64 %276, i64* %10, align 8
  br label %264

277:                                              ; preds = %264
  br label %278

278:                                              ; preds = %288, %277
  %279 = load i64, i64* %10, align 8
  %280 = load i64, i64* %9, align 8
  %281 = icmp slt i64 %279, %280
  br i1 %281, label %282, label %291

282:                                              ; preds = %278
  %283 = load i64*, i64** %7, align 8
  %284 = load i64, i64* %10, align 8
  %285 = getelementptr inbounds i64, i64* %283, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = mul nsw i64 %286, 3
  store i64 %287, i64* %285, align 8
  br label %288

288:                                              ; preds = %282
  %289 = load i64, i64* %10, align 8
  %290 = add nsw i64 %289, 1
  store i64 %290, i64* %10, align 8
  br label %278

291:                                              ; preds = %278
  store i64 0, i64* %5, align 8
  br label %506

292:                                              ; preds = %230
  br label %293

293:                                              ; preds = %292
  br label %297

294:                                              ; preds = %102
  %295 = load i64, i64* %9, align 8
  store i64 %295, i64* %5, align 8
  br label %506

296:                                              ; preds = %102
  br label %297

297:                                              ; preds = %296, %293, %184, %148, %105
  %298 = load i32, i32* %13, align 4
  %299 = call i32 @bcmode_a(i32 %298)
  switch i32 %299, label %480 [
    i32 128, label %300
    i32 133, label %307
    i32 134, label %323
  ]

300:                                              ; preds = %297
  %301 = load i64*, i64** %7, align 8
  %302 = load i32, i32* %12, align 4
  %303 = call i64 @bc_a(i32 %302)
  %304 = getelementptr inbounds i64, i64* %301, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = and i64 %305, -2
  store i64 %306, i64* %304, align 8
  br label %481

307:                                              ; preds = %297
  %308 = load i32, i32* %13, align 4
  %309 = load i32, i32* @BC_ISTC, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %322, label %311

311:                                              ; preds = %307
  %312 = load i32, i32* %13, align 4
  %313 = load i32, i32* @BC_ISFC, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %322, label %315

315:                                              ; preds = %311
  %316 = load i64*, i64** %7, align 8
  %317 = load i32, i32* %12, align 4
  %318 = call i64 @bc_a(i32 %317)
  %319 = getelementptr inbounds i64, i64* %316, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = mul nsw i64 %320, 3
  store i64 %321, i64* %319, align 8
  br label %322

322:                                              ; preds = %315, %311, %307
  br label %481

323:                                              ; preds = %297
  %324 = load i32, i32* %13, align 4
  %325 = load i32, i32* @BC_CALLM, align 4
  %326 = icmp sge i32 %324, %325
  br i1 %326, label %327, label %433

327:                                              ; preds = %323
  %328 = load i32, i32* %13, align 4
  %329 = load i32, i32* @BC_VARG, align 4
  %330 = icmp sle i32 %328, %329
  br i1 %330, label %331, label %433

331:                                              ; preds = %327
  %332 = load i32, i32* %13, align 4
  %333 = load i32, i32* @BC_CALLM, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %343, label %335

335:                                              ; preds = %331
  %336 = load i32, i32* %13, align 4
  %337 = load i32, i32* @BC_CALLMT, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %343, label %339

339:                                              ; preds = %335
  %340 = load i32, i32* %12, align 4
  %341 = call i64 @bc_c(i32 %340)
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %339, %335, %331
  %344 = load i64, i64* %9, align 8
  br label %353

345:                                              ; preds = %339
  %346 = load i32, i32* %12, align 4
  %347 = call i64 @bc_a(i32 %346)
  %348 = load i32, i32* %12, align 4
  %349 = call i64 @bc_c(i32 %348)
  %350 = add nsw i64 %347, %349
  %351 = load i64, i64* @LJ_FR2, align 8
  %352 = add nsw i64 %350, %351
  br label %353

353:                                              ; preds = %345, %343
  %354 = phi i64 [ %344, %343 ], [ %352, %345 ]
  store i64 %354, i64* %16, align 8
  %355 = load i64, i64* @LJ_FR2, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %365

357:                                              ; preds = %353
  %358 = load i64*, i64** %7, align 8
  %359 = load i32, i32* %12, align 4
  %360 = call i64 @bc_a(i32 %359)
  %361 = add nsw i64 %360, 1
  %362 = getelementptr inbounds i64, i64* %358, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = mul nsw i64 %363, 3
  store i64 %364, i64* %362, align 8
  br label %365

365:                                              ; preds = %357, %353
  %366 = load i32, i32* %12, align 4
  %367 = call i64 @bc_a(i32 %366)
  %368 = load i32, i32* %13, align 4
  %369 = load i32, i32* @BC_ITERC, align 4
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %375, label %371

371:                                              ; preds = %365
  %372 = load i32, i32* %13, align 4
  %373 = load i32, i32* @BC_ITERN, align 4
  %374 = icmp eq i32 %372, %373
  br label %375

375:                                              ; preds = %371, %365
  %376 = phi i1 [ true, %365 ], [ %374, %371 ]
  %377 = zext i1 %376 to i64
  %378 = select i1 %376, i32 3, i32 0
  %379 = sext i32 %378 to i64
  %380 = sub nsw i64 %367, %379
  store i64 %380, i64* %10, align 8
  br label %381

381:                                              ; preds = %391, %375
  %382 = load i64, i64* %10, align 8
  %383 = load i64, i64* %16, align 8
  %384 = icmp slt i64 %382, %383
  br i1 %384, label %385, label %394

385:                                              ; preds = %381
  %386 = load i64*, i64** %7, align 8
  %387 = load i64, i64* %10, align 8
  %388 = getelementptr inbounds i64, i64* %386, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = and i64 %389, -2
  store i64 %390, i64* %388, align 8
  br label %391

391:                                              ; preds = %385
  %392 = load i64, i64* %10, align 8
  %393 = add nsw i64 %392, 1
  store i64 %393, i64* %10, align 8
  br label %381

394:                                              ; preds = %381
  br label %395

395:                                              ; preds = %405, %394
  %396 = load i64, i64* %10, align 8
  %397 = load i64, i64* %9, align 8
  %398 = icmp slt i64 %396, %397
  br i1 %398, label %399, label %408

399:                                              ; preds = %395
  %400 = load i64*, i64** %7, align 8
  %401 = load i64, i64* %10, align 8
  %402 = getelementptr inbounds i64, i64* %400, i64 %401
  %403 = load i64, i64* %402, align 8
  %404 = mul nsw i64 %403, 3
  store i64 %404, i64* %402, align 8
  br label %405

405:                                              ; preds = %399
  %406 = load i64, i64* %10, align 8
  %407 = add nsw i64 %406, 1
  store i64 %407, i64* %10, align 8
  br label %395

408:                                              ; preds = %395
  %409 = load i32, i32* %13, align 4
  %410 = load i32, i32* @BC_CALLT, align 4
  %411 = icmp eq i32 %409, %410
  br i1 %411, label %416, label %412

412:                                              ; preds = %408
  %413 = load i32, i32* %13, align 4
  %414 = load i32, i32* @BC_CALLMT, align 4
  %415 = icmp eq i32 %413, %414
  br i1 %415, label %416, label %432

416:                                              ; preds = %412, %408
  store i64 0, i64* %10, align 8
  br label %417

417:                                              ; preds = %428, %416
  %418 = load i64, i64* %10, align 8
  %419 = load i32, i32* %12, align 4
  %420 = call i64 @bc_a(i32 %419)
  %421 = icmp slt i64 %418, %420
  br i1 %421, label %422, label %431

422:                                              ; preds = %417
  %423 = load i64*, i64** %7, align 8
  %424 = load i64, i64* %10, align 8
  %425 = getelementptr inbounds i64, i64* %423, i64 %424
  %426 = load i64, i64* %425, align 8
  %427 = mul nsw i64 %426, 3
  store i64 %427, i64* %425, align 8
  br label %428

428:                                              ; preds = %422
  %429 = load i64, i64* %10, align 8
  %430 = add nsw i64 %429, 1
  store i64 %430, i64* %10, align 8
  br label %417

431:                                              ; preds = %417
  store i64 0, i64* %5, align 8
  br label %506

432:                                              ; preds = %412
  br label %479

433:                                              ; preds = %327, %323
  %434 = load i32, i32* %13, align 4
  %435 = load i32, i32* @BC_KNIL, align 4
  %436 = icmp eq i32 %434, %435
  br i1 %436, label %437, label %455

437:                                              ; preds = %433
  %438 = load i32, i32* %12, align 4
  %439 = call i64 @bc_a(i32 %438)
  store i64 %439, i64* %10, align 8
  br label %440

440:                                              ; preds = %451, %437
  %441 = load i64, i64* %10, align 8
  %442 = load i32, i32* %12, align 4
  %443 = call i64 @bc_d(i32 %442)
  %444 = icmp sle i64 %441, %443
  br i1 %444, label %445, label %454

445:                                              ; preds = %440
  %446 = load i64*, i64** %7, align 8
  %447 = load i64, i64* %10, align 8
  %448 = getelementptr inbounds i64, i64* %446, i64 %447
  %449 = load i64, i64* %448, align 8
  %450 = mul nsw i64 %449, 3
  store i64 %450, i64* %448, align 8
  br label %451

451:                                              ; preds = %445
  %452 = load i64, i64* %10, align 8
  %453 = add nsw i64 %452, 1
  store i64 %453, i64* %10, align 8
  br label %440

454:                                              ; preds = %440
  br label %478

455:                                              ; preds = %433
  %456 = load i32, i32* %13, align 4
  %457 = load i32, i32* @BC_TSETM, align 4
  %458 = icmp eq i32 %456, %457
  br i1 %458, label %459, label %477

459:                                              ; preds = %455
  %460 = load i32, i32* %12, align 4
  %461 = call i64 @bc_a(i32 %460)
  %462 = sub nsw i64 %461, 1
  store i64 %462, i64* %10, align 8
  br label %463

463:                                              ; preds = %473, %459
  %464 = load i64, i64* %10, align 8
  %465 = load i64, i64* %9, align 8
  %466 = icmp slt i64 %464, %465
  br i1 %466, label %467, label %476

467:                                              ; preds = %463
  %468 = load i64*, i64** %7, align 8
  %469 = load i64, i64* %10, align 8
  %470 = getelementptr inbounds i64, i64* %468, i64 %469
  %471 = load i64, i64* %470, align 8
  %472 = and i64 %471, -2
  store i64 %472, i64* %470, align 8
  br label %473

473:                                              ; preds = %467
  %474 = load i64, i64* %10, align 8
  %475 = add nsw i64 %474, 1
  store i64 %475, i64* %10, align 8
  br label %463

476:                                              ; preds = %463
  br label %477

477:                                              ; preds = %476, %455
  br label %478

478:                                              ; preds = %477, %454
  br label %479

479:                                              ; preds = %478, %432
  br label %481

480:                                              ; preds = %297
  br label %481

481:                                              ; preds = %480, %479, %322, %300
  %482 = load i32*, i32** %8, align 8
  %483 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %483, i32 0, i32 0
  %485 = load %struct.TYPE_13__*, %struct.TYPE_13__** %484, align 8
  %486 = call i32* @proto_bc(%struct.TYPE_13__* %485)
  %487 = icmp uge i32* %482, %486
  br i1 %487, label %488, label %502

488:                                              ; preds = %481
  %489 = load i32*, i32** %8, align 8
  %490 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %491 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %490, i32 0, i32 0
  %492 = load %struct.TYPE_13__*, %struct.TYPE_13__** %491, align 8
  %493 = call i32* @proto_bc(%struct.TYPE_13__* %492)
  %494 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %495 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %494, i32 0, i32 0
  %496 = load %struct.TYPE_13__*, %struct.TYPE_13__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %493, i64 %499
  %501 = icmp ult i32* %489, %500
  br label %502

502:                                              ; preds = %488, %481
  %503 = phi i1 [ false, %481 ], [ %501, %488 ]
  %504 = zext i1 %503 to i32
  %505 = call i32 @lua_assert(i32 %504)
  br label %86

506:                                              ; preds = %431, %294, %291, %215, %19
  %507 = load i64, i64* %5, align 8
  ret i64 %507
}

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local %struct.TYPE_12__* @gcref(i32) #1

declare dso_local i64 @uvval(i32) #1

declare dso_local i32 @gco2uv(%struct.TYPE_12__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32* @proto_bc(%struct.TYPE_13__*) #1

declare dso_local i32 @bc_op(i32) #1

declare dso_local i32 @bcmode_b(i32) #1

declare dso_local i64 @bc_b(i32) #1

declare dso_local i32 @bcmode_c(i32) #1

declare dso_local i64 @bc_c(i32) #1

declare dso_local i64 @bc_a(i32) #1

declare dso_local i32 @bc_j(i32) #1

declare dso_local i32 @bc_isret(i32) #1

declare dso_local i64 @bc_d(i32) #1

declare dso_local i32 @bcmode_a(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_synth_i486.c_absynth_1to1_i486.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_synth_i486.c_absynth_1to1_i486.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32***, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@FIR_BUFFER_SIZE = common dso_local global i32 0, align 4
@FIR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @absynth_1to1_i486(i32* %0, i32 %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %24, %28
  %30 = inttoptr i64 %29 to i16*
  store i16* %30, i16** %9, align 8
  store i32 0, i32* %12, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i16*, i16** %9, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i16, i16* %32, i64 %33
  store i16* %34, i16** %9, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32***, i32**** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32**, i32*** %44, i64 %46
  %48 = load i32**, i32*** %47, align 8
  store i32** %48, i32*** %11, align 8
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %161, %4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %164

54:                                               ; preds = %50
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @FIR_BUFFER_SIZE, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %124

60:                                               ; preds = %54
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %113, %60
  %62 = load i32, i32* %18, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %116

64:                                               ; preds = %61
  %65 = load i32**, i32*** %11, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32* %71, i32** %16, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = load i32, i32* @FIR_BUFFER_SIZE, align 4
  %74 = load i32, i32* @FIR_SIZE, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  store i32* %77, i32** %17, align 8
  store i32 0, i32* %19, align 4
  br label %78

78:                                               ; preds = %109, %64
  %79 = load i32, i32* %19, align 4
  %80 = icmp slt i32 %79, 17
  br i1 %80, label %81, label %112

81:                                               ; preds = %78
  store i32 0, i32* %20, align 4
  br label %82

82:                                               ; preds = %97, %81
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* @FIR_SIZE, align 4
  %85 = sub nsw i32 %84, 1
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %82
  %88 = load i32*, i32** %17, align 8
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %16, align 8
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %20, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %20, align 4
  br label %82

100:                                              ; preds = %82
  %101 = load i32, i32* @FIR_BUFFER_SIZE, align 4
  %102 = load i32*, i32** %16, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %16, align 8
  %105 = load i32, i32* @FIR_BUFFER_SIZE, align 4
  %106 = load i32*, i32** %17, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %17, align 8
  br label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %19, align 4
  br label %78

112:                                              ; preds = %78
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %18, align 4
  br label %61

116:                                              ; preds = %61
  %117 = load i32, i32* @FIR_SIZE, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  store i32 %117, i32* %14, align 4
  br label %124

124:                                              ; preds = %116, %54
  %125 = load i32, i32* %14, align 4
  %126 = and i32 %125, 1
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %124
  %129 = load i32**, i32*** %11, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32**, i32*** %11, align 8
  %136 = getelementptr inbounds i32*, i32** %135, i64 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32*, i32** %5, align 8
  %142 = call i32 @dct64_i486(i32* %134, i32* %140, i32* %141)
  br label %158

143:                                              ; preds = %124
  %144 = load i32**, i32*** %11, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32**, i32*** %11, align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @dct64_i486(i32* %149, i32* %155, i32* %156)
  br label %158

158:                                              ; preds = %143, %128
  %159 = load i32*, i32** %5, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 32
  store i32* %160, i32** %5, align 8
  br label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %50

164:                                              ; preds = %50
  %165 = load i32, i32* %14, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %165, i32* %171, align 4
  %172 = load i32, i32* %15, align 4
  store i32 %172, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %173

173:                                              ; preds = %220, %164
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %223

177:                                              ; preds = %173
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* @FIR_BUFFER_SIZE, align 4
  %182 = icmp sge i32 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32, i32* @FIR_SIZE, align 4
  store i32 %184, i32* %14, align 4
  br label %185

185:                                              ; preds = %183, %177
  %186 = load i32, i32* %14, align 4
  %187 = and i32 %186, 1
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %185
  %190 = load i32**, i32*** %11, align 8
  %191 = getelementptr inbounds i32*, i32** %190, i64 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* @FIR_SIZE, align 4
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = sub i64 0, %198
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  store i32* %200, i32** %10, align 8
  br label %213

201:                                              ; preds = %185
  %202 = load i32**, i32*** %11, align 8
  %203 = getelementptr inbounds i32*, i32** %202, i64 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* @FIR_SIZE, align 4
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = sub i64 0, %210
  %212 = getelementptr inbounds i32, i32* %207, i64 %211
  store i32* %212, i32** %10, align 8
  br label %213

213:                                              ; preds = %201, %189
  %214 = call i32 @FIR16_1(i32 0, i32 -7, i32 53, i32 -114, i32 509, i32 -1288, i32 1643, i32 -9372, i32 18759, i32 9372, i32 1643, i32 1288, i32 509, i32 114, i32 53, i32 7, i32 0)
  %215 = call i32 @FIR16_2(i32 1, i32 -6, i32 52, i32 -100, i32 515, i32 -1197, i32 1783, i32 -8910, i32 18748, i32 9834, i32 1489, i32 1379, i32 500, i32 129, i32 54, i32 7, i32 0, i32 31, i32 0, i32 -7, i32 54, i32 -129, i32 500, i32 -1379, i32 1489, i32 -9834, i32 18748, i32 8910, i32 1783, i32 1197, i32 515, i32 100, i32 52, i32 6)
  %216 = call i32 @FIR16_2(i32 2, i32 -6, i32 50, i32 -86, i32 520, i32 -1106, i32 1910, i32 -8447, i32 18714, i32 10294, i32 1322, i32 1469, i32 488, i32 145, i32 55, i32 8, i32 0, i32 30, i32 0, i32 -8, i32 55, i32 -145, i32 488, i32 -1469, i32 1322, i32 -10294, i32 18714, i32 8447, i32 1910, i32 1106, i32 520, i32 86, i32 50, i32 6)
  %217 = call i32 @FIR16_2(i32 3, i32 -5, i32 49, i32 -73, i32 521, i32 -1015, i32 2023, i32 -7986, i32 18657, i32 10751, i32 1140, i32 1559, i32 473, i32 161, i32 56, i32 9, i32 0, i32 29, i32 0, i32 -9, i32 56, i32 -161, i32 473, i32 -1559, i32 1140, i32 -10751, i32 18657, i32 7986, i32 2023, i32 1015, i32 521, i32 73, i32 49, i32 5)
  %218 = load i16*, i16** %9, align 8
  %219 = getelementptr inbounds i16, i16* %218, i64 64
  store i16* %219, i16** %9, align 8
  br label %220

220:                                              ; preds = %213
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %13, align 4
  br label %173

223:                                              ; preds = %173
  %224 = load i32, i32* %8, align 4
  %225 = mul nsw i32 64, %224
  %226 = load i16*, i16** %9, align 8
  %227 = sext i32 %225 to i64
  %228 = sub i64 0, %227
  %229 = getelementptr inbounds i16, i16* %226, i64 %228
  store i16* %229, i16** %9, align 8
  %230 = load i32, i32* %15, align 4
  store i32 %230, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %231

231:                                              ; preds = %286, %223
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* %8, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %289

235:                                              ; preds = %231
  %236 = load i32, i32* %14, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %14, align 4
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* @FIR_BUFFER_SIZE, align 4
  %240 = icmp sge i32 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %235
  %242 = load i32, i32* @FIR_SIZE, align 4
  store i32 %242, i32* %14, align 4
  br label %243

243:                                              ; preds = %241, %235
  %244 = load i32, i32* %14, align 4
  %245 = and i32 %244, 1
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %263

247:                                              ; preds = %243
  %248 = load i32**, i32*** %11, align 8
  %249 = getelementptr inbounds i32*, i32** %248, i64 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* @FIR_SIZE, align 4
  %255 = sub nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = sub i64 0, %256
  %258 = getelementptr inbounds i32, i32* %253, i64 %257
  %259 = load i32, i32* @FIR_BUFFER_SIZE, align 4
  %260 = mul nsw i32 4, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  store i32* %262, i32** %10, align 8
  br label %279

263:                                              ; preds = %243
  %264 = load i32**, i32*** %11, align 8
  %265 = getelementptr inbounds i32*, i32** %264, i64 1
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %14, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* @FIR_SIZE, align 4
  %271 = sub nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = sub i64 0, %272
  %274 = getelementptr inbounds i32, i32* %269, i64 %273
  %275 = load i32, i32* @FIR_BUFFER_SIZE, align 4
  %276 = mul nsw i32 4, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  store i32* %278, i32** %10, align 8
  br label %279

279:                                              ; preds = %263, %247
  %280 = call i32 @FIR16_2(i32 4, i32 -4, i32 47, i32 -61, i32 521, i32 -926, i32 2123, i32 -7528, i32 18578, i32 11205, i32 944, i32 1647, i32 455, i32 177, i32 56, i32 10, i32 0, i32 28, i32 0, i32 -10, i32 56, i32 -177, i32 455, i32 -1647, i32 944, i32 -11205, i32 18578, i32 7528, i32 2123, i32 926, i32 521, i32 61, i32 47, i32 4)
  %281 = call i32 @FIR16_2(i32 5, i32 -4, i32 45, i32 -49, i32 518, i32 -837, i32 2210, i32 -7072, i32 18477, i32 11654, i32 733, i32 1733, i32 434, i32 194, i32 57, i32 11, i32 0, i32 27, i32 0, i32 -11, i32 57, i32 -194, i32 434, i32 -1733, i32 733, i32 -11654, i32 18477, i32 7072, i32 2210, i32 837, i32 518, i32 49, i32 45, i32 4)
  %282 = call i32 @FIR16_2(i32 6, i32 -4, i32 44, i32 -38, i32 514, i32 -751, i32 2284, i32 -6620, i32 18353, i32 12097, i32 509, i32 1817, i32 411, i32 212, i32 57, i32 12, i32 0, i32 26, i32 0, i32 -12, i32 57, i32 -212, i32 411, i32 -1817, i32 509, i32 -12097, i32 18353, i32 6620, i32 2284, i32 751, i32 514, i32 38, i32 44, i32 4)
  %283 = call i32 @FIR16_2(i32 7, i32 -3, i32 42, i32 -27, i32 508, i32 -665, i32 2347, i32 -6173, i32 18208, i32 12534, i32 270, i32 1899, i32 383, i32 229, i32 56, i32 13, i32 0, i32 25, i32 0, i32 -13, i32 56, i32 -229, i32 383, i32 -1899, i32 270, i32 -12534, i32 18208, i32 6173, i32 2347, i32 665, i32 508, i32 27, i32 42, i32 3)
  %284 = load i16*, i16** %9, align 8
  %285 = getelementptr inbounds i16, i16* %284, i64 64
  store i16* %285, i16** %9, align 8
  br label %286

286:                                              ; preds = %279
  %287 = load i32, i32* %13, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %13, align 4
  br label %231

289:                                              ; preds = %231
  %290 = load i32, i32* %8, align 4
  %291 = mul nsw i32 64, %290
  %292 = load i16*, i16** %9, align 8
  %293 = sext i32 %291 to i64
  %294 = sub i64 0, %293
  %295 = getelementptr inbounds i16, i16* %292, i64 %294
  store i16* %295, i16** %9, align 8
  %296 = load i32, i32* %15, align 4
  store i32 %296, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %297

297:                                              ; preds = %352, %289
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* %8, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %355

301:                                              ; preds = %297
  %302 = load i32, i32* %14, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %14, align 4
  %304 = load i32, i32* %14, align 4
  %305 = load i32, i32* @FIR_BUFFER_SIZE, align 4
  %306 = icmp sge i32 %304, %305
  br i1 %306, label %307, label %309

307:                                              ; preds = %301
  %308 = load i32, i32* @FIR_SIZE, align 4
  store i32 %308, i32* %14, align 4
  br label %309

309:                                              ; preds = %307, %301
  %310 = load i32, i32* %14, align 4
  %311 = and i32 %310, 1
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %329

313:                                              ; preds = %309
  %314 = load i32**, i32*** %11, align 8
  %315 = getelementptr inbounds i32*, i32** %314, i64 0
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %14, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* @FIR_SIZE, align 4
  %321 = sub nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = sub i64 0, %322
  %324 = getelementptr inbounds i32, i32* %319, i64 %323
  %325 = load i32, i32* @FIR_BUFFER_SIZE, align 4
  %326 = mul nsw i32 8, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %324, i64 %327
  store i32* %328, i32** %10, align 8
  br label %345

329:                                              ; preds = %309
  %330 = load i32**, i32*** %11, align 8
  %331 = getelementptr inbounds i32*, i32** %330, i64 1
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %14, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* @FIR_SIZE, align 4
  %337 = sub nsw i32 %336, 1
  %338 = sext i32 %337 to i64
  %339 = sub i64 0, %338
  %340 = getelementptr inbounds i32, i32* %335, i64 %339
  %341 = load i32, i32* @FIR_BUFFER_SIZE, align 4
  %342 = mul nsw i32 8, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  store i32* %344, i32** %10, align 8
  br label %345

345:                                              ; preds = %329, %313
  %346 = call i32 @FIR16_2(i32 8, i32 -3, i32 40, i32 -18, i32 500, i32 -582, i32 2398, i32 -5732, i32 18042, i32 12963, i32 17, i32 1977, i32 353, i32 247, i32 56, i32 14, i32 0, i32 24, i32 0, i32 -14, i32 56, i32 -247, i32 353, i32 -1977, i32 17, i32 -12963, i32 18042, i32 5732, i32 2398, i32 582, i32 500, i32 18, i32 40, i32 3)
  %347 = call i32 @FIR16_2(i32 9, i32 -2, i32 38, i32 -9, i32 490, i32 -501, i32 2437, i32 -5297, i32 17855, i32 13383, i32 -249, i32 2052, i32 320, i32 266, i32 55, i32 15, i32 0, i32 23, i32 0, i32 -15, i32 55, i32 -266, i32 320, i32 -2052, i32 -249, i32 -13383, i32 17855, i32 5297, i32 2437, i32 501, i32 490, i32 9, i32 38, i32 2)
  %348 = call i32 @FIR16_2(i32 10, i32 -2, i32 36, i32 0, i32 479, i32 -423, i32 2465, i32 -4869, i32 17647, i32 13794, i32 -530, i32 2122, i32 282, i32 284, i32 53, i32 17, i32 0, i32 22, i32 0, i32 -17, i32 53, i32 -284, i32 282, i32 -2122, i32 -530, i32 -13794, i32 17647, i32 4869, i32 2465, i32 423, i32 479, i32 0, i32 36, i32 2)
  %349 = call i32 @FIR16_2(i32 11, i32 -2, i32 34, i32 7, i32 467, i32 -347, i32 2483, i32 -4449, i32 17419, i32 14194, i32 -825, i32 2188, i32 242, i32 302, i32 52, i32 18, i32 0, i32 21, i32 0, i32 -18, i32 52, i32 -302, i32 242, i32 -2188, i32 -825, i32 -14194, i32 17419, i32 4449, i32 2483, i32 347, i32 467, i32 -7, i32 34, i32 2)
  %350 = load i16*, i16** %9, align 8
  %351 = getelementptr inbounds i16, i16* %350, i64 64
  store i16* %351, i16** %9, align 8
  br label %352

352:                                              ; preds = %345
  %353 = load i32, i32* %13, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %13, align 4
  br label %297

355:                                              ; preds = %297
  %356 = load i32, i32* %8, align 4
  %357 = mul nsw i32 64, %356
  %358 = load i16*, i16** %9, align 8
  %359 = sext i32 %357 to i64
  %360 = sub i64 0, %359
  %361 = getelementptr inbounds i16, i16* %358, i64 %360
  store i16* %361, i16** %9, align 8
  %362 = load i32, i32* %15, align 4
  store i32 %362, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %363

363:                                              ; preds = %419, %355
  %364 = load i32, i32* %13, align 4
  %365 = load i32, i32* %8, align 4
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %367, label %422

367:                                              ; preds = %363
  %368 = load i32, i32* %14, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %14, align 4
  %370 = load i32, i32* %14, align 4
  %371 = load i32, i32* @FIR_BUFFER_SIZE, align 4
  %372 = icmp sge i32 %370, %371
  br i1 %372, label %373, label %375

373:                                              ; preds = %367
  %374 = load i32, i32* @FIR_SIZE, align 4
  store i32 %374, i32* %14, align 4
  br label %375

375:                                              ; preds = %373, %367
  %376 = load i32, i32* %14, align 4
  %377 = and i32 %376, 1
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %395

379:                                              ; preds = %375
  %380 = load i32**, i32*** %11, align 8
  %381 = getelementptr inbounds i32*, i32** %380, i64 0
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %14, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* @FIR_SIZE, align 4
  %387 = sub nsw i32 %386, 1
  %388 = sext i32 %387 to i64
  %389 = sub i64 0, %388
  %390 = getelementptr inbounds i32, i32* %385, i64 %389
  %391 = load i32, i32* @FIR_BUFFER_SIZE, align 4
  %392 = mul nsw i32 12, %391
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %390, i64 %393
  store i32* %394, i32** %10, align 8
  br label %411

395:                                              ; preds = %375
  %396 = load i32**, i32*** %11, align 8
  %397 = getelementptr inbounds i32*, i32** %396, i64 1
  %398 = load i32*, i32** %397, align 8
  %399 = load i32, i32* %14, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  %402 = load i32, i32* @FIR_SIZE, align 4
  %403 = sub nsw i32 %402, 1
  %404 = sext i32 %403 to i64
  %405 = sub i64 0, %404
  %406 = getelementptr inbounds i32, i32* %401, i64 %405
  %407 = load i32, i32* @FIR_BUFFER_SIZE, align 4
  %408 = mul nsw i32 12, %407
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %406, i64 %409
  store i32* %410, i32** %10, align 8
  br label %411

411:                                              ; preds = %395, %379
  %412 = call i32 @FIR16_2(i32 12, i32 -2, i32 33, i32 14, i32 454, i32 -273, i32 2491, i32 -4038, i32 17173, i32 14583, i32 -1133, i32 2249, i32 198, i32 320, i32 50, i32 19, i32 0, i32 20, i32 0, i32 -19, i32 50, i32 -320, i32 198, i32 -2249, i32 -1133, i32 -14583, i32 17173, i32 4038, i32 2491, i32 273, i32 454, i32 -14, i32 33, i32 2)
  %413 = call i32 @FIR16_2(i32 13, i32 -1, i32 31, i32 20, i32 439, i32 -203, i32 2489, i32 -3637, i32 16907, i32 14959, i32 -1454, i32 2304, i32 151, i32 339, i32 47, i32 21, i32 -1, i32 19, i32 -1, i32 -21, i32 47, i32 -339, i32 151, i32 -2304, i32 -1454, i32 -14959, i32 16907, i32 3637, i32 2489, i32 203, i32 439, i32 -20, i32 31, i32 1)
  %414 = call i32 @FIR16_2(i32 14, i32 -1, i32 29, i32 26, i32 424, i32 -136, i32 2479, i32 -3245, i32 16623, i32 15322, i32 -1788, i32 2354, i32 100, i32 357, i32 44, i32 22, i32 -1, i32 18, i32 -1, i32 -22, i32 44, i32 -357, i32 100, i32 -2354, i32 -1788, i32 -15322, i32 16623, i32 3245, i32 2479, i32 136, i32 424, i32 -26, i32 29, i32 1)
  %415 = call i32 @FIR16_2(i32 15, i32 -1, i32 27, i32 31, i32 408, i32 -72, i32 2459, i32 -2863, i32 16322, i32 15671, i32 -2135, i32 2396, i32 46, i32 374, i32 40, i32 24, i32 -1, i32 17, i32 -1, i32 -24, i32 40, i32 -374, i32 46, i32 -2396, i32 -2135, i32 -15671, i32 16322, i32 2863, i32 2459, i32 72, i32 408, i32 -31, i32 27, i32 1)
  %416 = call i32 @FIR16_1(i32 16, i32 -1, i32 0, i32 36, i32 0, i32 -11, i32 0, i32 -2493, i32 0, i32 16004, i32 0, i32 2431, i32 0, i32 391, i32 0, i32 26, i32 0)
  %417 = load i16*, i16** %9, align 8
  %418 = getelementptr inbounds i16, i16* %417, i64 64
  store i16* %418, i16** %9, align 8
  br label %419

419:                                              ; preds = %411
  %420 = load i32, i32* %13, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %13, align 4
  br label %363

422:                                              ; preds = %363
  %423 = load i32, i32* %12, align 4
  ret i32 %423
}

declare dso_local i32 @dct64_i486(i32*, i32*, i32*) #1

declare dso_local i32 @FIR16_1(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FIR16_2(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

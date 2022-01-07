; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pwg.c_pwg_page_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pwg.c_pwg_page_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@pwg_page_header.zero = internal constant [64 x i8] zeroinitializer, align 16
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"pixmap bpp must be 1, 8, 24 or 32 to write as pwg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*, i32, i32, i32, i32, i32)* @pwg_page_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwg_page_header(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  br label %27

26:                                               ; preds = %8
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i8* [ %25, %22 ], [ getelementptr inbounds ([64 x i8], [64 x i8]* @pwg_page_header.zero, i64 0, i64 0), %26 ]
  %29 = call i32 @fz_write_data(i32* %18, i32* %19, i8* %28, i32 64)
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  br label %39

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i8* [ %37, %34 ], [ getelementptr inbounds ([64 x i8], [64 x i8]* @pwg_page_header.zero, i64 0, i64 0), %38 ]
  %41 = call i32 @fz_write_data(i32* %30, i32* %31, i8* %40, i32 64)
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  br label %51

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([64 x i8], [64 x i8]* @pwg_page_header.zero, i64 0, i64 0), %50 ]
  %53 = call i32 @fz_write_data(i32* %42, i32* %43, i8* %52, i32 64)
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %57 = icmp ne %struct.TYPE_3__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  br label %63

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %58
  %64 = phi i8* [ %61, %58 ], [ getelementptr inbounds ([64 x i8], [64 x i8]* @pwg_page_header.zero, i64 0, i64 0), %62 ]
  %65 = call i32 @fz_write_data(i32* %54, i32* %55, i8* %64, i32 64)
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %69 = icmp ne %struct.TYPE_3__* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  br label %75

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32 [ %73, %70 ], [ 0, %74 ]
  %77 = call i32 @fz_write_int32_be(i32* %66, i32* %67, i32 %76)
  %78 = load i32*, i32** %9, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %81 = icmp ne %struct.TYPE_3__* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  br label %87

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i32 [ %85, %82 ], [ 0, %86 ]
  %89 = call i32 @fz_write_int32_be(i32* %78, i32* %79, i32 %88)
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %93 = icmp ne %struct.TYPE_3__* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  br label %99

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %94
  %100 = phi i32 [ %97, %94 ], [ 0, %98 ]
  %101 = call i32 @fz_write_int32_be(i32* %90, i32* %91, i32 %100)
  %102 = load i32*, i32** %9, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %105 = icmp ne %struct.TYPE_3__* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  br label %111

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %106
  %112 = phi i32 [ %109, %106 ], [ 0, %110 ]
  %113 = call i32 @fz_write_int32_be(i32* %102, i32* %103, i32 %112)
  %114 = load i32*, i32** %9, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %117 = icmp ne %struct.TYPE_3__* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  br label %123

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122, %118
  %124 = phi i32 [ %121, %118 ], [ 0, %122 ]
  %125 = call i32 @fz_write_int32_be(i32* %114, i32* %115, i32 %124)
  %126 = load i32*, i32** %9, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @fz_write_int32_be(i32* %126, i32* %127, i32 %128)
  %130 = load i32*, i32** %9, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @fz_write_int32_be(i32* %130, i32* %131, i32 %132)
  store i32 284, i32* %17, align 4
  br label %134

134:                                              ; preds = %141, %123
  %135 = load i32, i32* %17, align 4
  %136 = icmp slt i32 %135, 300
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i32*, i32** %9, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = call i32 @fz_write_data(i32* %138, i32* %139, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @pwg_page_header.zero, i64 0, i64 0), i32 4)
  br label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 4
  store i32 %143, i32* %17, align 4
  br label %134

144:                                              ; preds = %134
  %145 = load i32*, i32** %9, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %148 = icmp ne %struct.TYPE_3__* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 4
  br label %154

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153, %149
  %155 = phi i32 [ %152, %149 ], [ 0, %153 ]
  %156 = call i32 @fz_write_int32_be(i32* %145, i32* %146, i32 %155)
  %157 = load i32*, i32** %9, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %160 = icmp ne %struct.TYPE_3__* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 10
  %164 = load i32, i32* %163, align 8
  br label %166

165:                                              ; preds = %154
  br label %166

166:                                              ; preds = %165, %161
  %167 = phi i32 [ %164, %161 ], [ 0, %165 ]
  %168 = call i32 @fz_write_int32_be(i32* %157, i32* %158, i32 %167)
  %169 = load i32*, i32** %9, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %172 = icmp ne %struct.TYPE_3__* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 4
  br label %178

177:                                              ; preds = %166
  br label %178

178:                                              ; preds = %177, %173
  %179 = phi i32 [ %176, %173 ], [ 0, %177 ]
  %180 = call i32 @fz_write_int32_be(i32* %169, i32* %170, i32 %179)
  store i32 312, i32* %17, align 4
  br label %181

181:                                              ; preds = %188, %178
  %182 = load i32, i32* %17, align 4
  %183 = icmp slt i32 %182, 320
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load i32*, i32** %9, align 8
  %186 = load i32*, i32** %10, align 8
  %187 = call i32 @fz_write_data(i32* %185, i32* %186, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @pwg_page_header.zero, i64 0, i64 0), i32 4)
  br label %188

188:                                              ; preds = %184
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 4
  store i32 %190, i32* %17, align 4
  br label %181

191:                                              ; preds = %181
  %192 = load i32*, i32** %9, align 8
  %193 = load i32*, i32** %10, align 8
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %195 = icmp ne %struct.TYPE_3__* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 12
  %199 = load i32, i32* %198, align 8
  br label %201

200:                                              ; preds = %191
  br label %201

201:                                              ; preds = %200, %196
  %202 = phi i32 [ %199, %196 ], [ 0, %200 ]
  %203 = call i32 @fz_write_int32_be(i32* %192, i32* %193, i32 %202)
  %204 = load i32*, i32** %9, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %207 = icmp ne %struct.TYPE_3__* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %201
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 13
  %211 = load i32, i32* %210, align 4
  br label %213

212:                                              ; preds = %201
  br label %213

213:                                              ; preds = %212, %208
  %214 = phi i32 [ %211, %208 ], [ 0, %212 ]
  %215 = call i32 @fz_write_int32_be(i32* %204, i32* %205, i32 %214)
  %216 = load i32*, i32** %9, align 8
  %217 = load i32*, i32** %10, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %219 = icmp ne %struct.TYPE_3__* %218, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %213
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 14
  %223 = load i32, i32* %222, align 8
  br label %225

224:                                              ; preds = %213
  br label %225

225:                                              ; preds = %224, %220
  %226 = phi i32 [ %223, %220 ], [ 0, %224 ]
  %227 = call i32 @fz_write_int32_be(i32* %216, i32* %217, i32 %226)
  %228 = load i32*, i32** %9, align 8
  %229 = load i32*, i32** %10, align 8
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %231 = icmp ne %struct.TYPE_3__* %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %225
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 15
  %235 = load i32, i32* %234, align 4
  br label %237

236:                                              ; preds = %225
  br label %237

237:                                              ; preds = %236, %232
  %238 = phi i32 [ %235, %232 ], [ 0, %236 ]
  %239 = call i32 @fz_write_int32_be(i32* %228, i32* %229, i32 %238)
  %240 = load i32*, i32** %9, align 8
  %241 = load i32*, i32** %10, align 8
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %243 = icmp ne %struct.TYPE_3__* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %237
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 16
  %247 = load i32, i32* %246, align 8
  br label %249

248:                                              ; preds = %237
  br label %249

249:                                              ; preds = %248, %244
  %250 = phi i32 [ %247, %244 ], [ 0, %248 ]
  %251 = call i32 @fz_write_int32_be(i32* %240, i32* %241, i32 %250)
  %252 = load i32*, i32** %9, align 8
  %253 = load i32*, i32** %10, align 8
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %255 = icmp ne %struct.TYPE_3__* %254, null
  br i1 %255, label %256, label %260

256:                                              ; preds = %249
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 17
  %259 = load i32, i32* %258, align 4
  br label %261

260:                                              ; preds = %249
  br label %261

261:                                              ; preds = %260, %256
  %262 = phi i32 [ %259, %256 ], [ 0, %260 ]
  %263 = call i32 @fz_write_int32_be(i32* %252, i32* %253, i32 %262)
  %264 = load i32*, i32** %9, align 8
  %265 = load i32*, i32** %10, align 8
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %267 = icmp ne %struct.TYPE_3__* %266, null
  br i1 %267, label %268, label %272

268:                                              ; preds = %261
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 18
  %271 = load i32, i32* %270, align 8
  br label %273

272:                                              ; preds = %261
  br label %273

273:                                              ; preds = %272, %268
  %274 = phi i32 [ %271, %268 ], [ 0, %272 ]
  %275 = call i32 @fz_write_int32_be(i32* %264, i32* %265, i32 %274)
  %276 = load i32*, i32** %9, align 8
  %277 = load i32*, i32** %10, align 8
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %279 = icmp ne %struct.TYPE_3__* %278, null
  br i1 %279, label %280, label %284

280:                                              ; preds = %273
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 19
  %283 = load i32, i32* %282, align 4
  br label %285

284:                                              ; preds = %273
  br label %285

285:                                              ; preds = %284, %280
  %286 = phi i32 [ %283, %280 ], [ 0, %284 ]
  %287 = call i32 @fz_write_int32_be(i32* %276, i32* %277, i32 %286)
  %288 = load i32*, i32** %9, align 8
  %289 = load i32*, i32** %10, align 8
  %290 = load i32, i32* %14, align 4
  %291 = mul nsw i32 %290, 72
  %292 = load i32, i32* %12, align 4
  %293 = sdiv i32 %291, %292
  %294 = call i32 @fz_write_int32_be(i32* %288, i32* %289, i32 %293)
  %295 = load i32*, i32** %9, align 8
  %296 = load i32*, i32** %10, align 8
  %297 = load i32, i32* %15, align 4
  %298 = mul nsw i32 %297, 72
  %299 = load i32, i32* %13, align 4
  %300 = sdiv i32 %298, %299
  %301 = call i32 @fz_write_int32_be(i32* %295, i32* %296, i32 %300)
  %302 = load i32*, i32** %9, align 8
  %303 = load i32*, i32** %10, align 8
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %305 = icmp ne %struct.TYPE_3__* %304, null
  br i1 %305, label %306, label %310

306:                                              ; preds = %285
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 20
  %309 = load i32, i32* %308, align 8
  br label %311

310:                                              ; preds = %285
  br label %311

311:                                              ; preds = %310, %306
  %312 = phi i32 [ %309, %306 ], [ 0, %310 ]
  %313 = call i32 @fz_write_int32_be(i32* %302, i32* %303, i32 %312)
  %314 = load i32*, i32** %9, align 8
  %315 = load i32*, i32** %10, align 8
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %317 = icmp ne %struct.TYPE_3__* %316, null
  br i1 %317, label %318, label %322

318:                                              ; preds = %311
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 21
  %321 = load i32, i32* %320, align 4
  br label %323

322:                                              ; preds = %311
  br label %323

323:                                              ; preds = %322, %318
  %324 = phi i32 [ %321, %318 ], [ 0, %322 ]
  %325 = call i32 @fz_write_int32_be(i32* %314, i32* %315, i32 %324)
  %326 = load i32*, i32** %9, align 8
  %327 = load i32*, i32** %10, align 8
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %329 = icmp ne %struct.TYPE_3__* %328, null
  br i1 %329, label %330, label %334

330:                                              ; preds = %323
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 22
  %333 = load i32, i32* %332, align 8
  br label %335

334:                                              ; preds = %323
  br label %335

335:                                              ; preds = %334, %330
  %336 = phi i32 [ %333, %330 ], [ 0, %334 ]
  %337 = call i32 @fz_write_int32_be(i32* %326, i32* %327, i32 %336)
  %338 = load i32*, i32** %9, align 8
  %339 = load i32*, i32** %10, align 8
  %340 = load i32, i32* %14, align 4
  %341 = call i32 @fz_write_int32_be(i32* %338, i32* %339, i32 %340)
  %342 = load i32*, i32** %9, align 8
  %343 = load i32*, i32** %10, align 8
  %344 = load i32, i32* %15, align 4
  %345 = call i32 @fz_write_int32_be(i32* %342, i32* %343, i32 %344)
  %346 = load i32*, i32** %9, align 8
  %347 = load i32*, i32** %10, align 8
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %349 = icmp ne %struct.TYPE_3__* %348, null
  br i1 %349, label %350, label %354

350:                                              ; preds = %335
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 23
  %353 = load i32, i32* %352, align 4
  br label %355

354:                                              ; preds = %335
  br label %355

355:                                              ; preds = %354, %350
  %356 = phi i32 [ %353, %350 ], [ 0, %354 ]
  %357 = call i32 @fz_write_int32_be(i32* %346, i32* %347, i32 %356)
  %358 = load i32*, i32** %9, align 8
  %359 = load i32*, i32** %10, align 8
  %360 = load i32, i32* %16, align 4
  %361 = icmp slt i32 %360, 8
  %362 = zext i1 %361 to i64
  %363 = select i1 %361, i32 1, i32 8
  %364 = call i32 @fz_write_int32_be(i32* %358, i32* %359, i32 %363)
  %365 = load i32*, i32** %9, align 8
  %366 = load i32*, i32** %10, align 8
  %367 = load i32, i32* %16, align 4
  %368 = call i32 @fz_write_int32_be(i32* %365, i32* %366, i32 %367)
  %369 = load i32*, i32** %9, align 8
  %370 = load i32*, i32** %10, align 8
  %371 = load i32, i32* %14, align 4
  %372 = load i32, i32* %16, align 4
  %373 = mul nsw i32 %371, %372
  %374 = add nsw i32 %373, 7
  %375 = sdiv i32 %374, 8
  %376 = call i32 @fz_write_int32_be(i32* %369, i32* %370, i32 %375)
  %377 = load i32*, i32** %9, align 8
  %378 = load i32*, i32** %10, align 8
  %379 = call i32 @fz_write_int32_be(i32* %377, i32* %378, i32 0)
  %380 = load i32, i32* %16, align 4
  switch i32 %380, label %397 [
    i32 1, label %381
    i32 8, label %385
    i32 24, label %389
    i32 32, label %393
  ]

381:                                              ; preds = %355
  %382 = load i32*, i32** %9, align 8
  %383 = load i32*, i32** %10, align 8
  %384 = call i32 @fz_write_int32_be(i32* %382, i32* %383, i32 3)
  br label %401

385:                                              ; preds = %355
  %386 = load i32*, i32** %9, align 8
  %387 = load i32*, i32** %10, align 8
  %388 = call i32 @fz_write_int32_be(i32* %386, i32* %387, i32 18)
  br label %401

389:                                              ; preds = %355
  %390 = load i32*, i32** %9, align 8
  %391 = load i32*, i32** %10, align 8
  %392 = call i32 @fz_write_int32_be(i32* %390, i32* %391, i32 19)
  br label %401

393:                                              ; preds = %355
  %394 = load i32*, i32** %9, align 8
  %395 = load i32*, i32** %10, align 8
  %396 = call i32 @fz_write_int32_be(i32* %394, i32* %395, i32 6)
  br label %401

397:                                              ; preds = %355
  %398 = load i32*, i32** %9, align 8
  %399 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %400 = call i32 @fz_throw(i32* %398, i32 %399, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %401

401:                                              ; preds = %397, %393, %389, %385, %381
  %402 = load i32*, i32** %9, align 8
  %403 = load i32*, i32** %10, align 8
  %404 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %405 = icmp ne %struct.TYPE_3__* %404, null
  br i1 %405, label %406, label %410

406:                                              ; preds = %401
  %407 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 24
  %409 = load i32, i32* %408, align 8
  br label %411

410:                                              ; preds = %401
  br label %411

411:                                              ; preds = %410, %406
  %412 = phi i32 [ %409, %406 ], [ 0, %410 ]
  %413 = call i32 @fz_write_int32_be(i32* %402, i32* %403, i32 %412)
  %414 = load i32*, i32** %9, align 8
  %415 = load i32*, i32** %10, align 8
  %416 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %417 = icmp ne %struct.TYPE_3__* %416, null
  br i1 %417, label %418, label %422

418:                                              ; preds = %411
  %419 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 25
  %421 = load i32, i32* %420, align 4
  br label %423

422:                                              ; preds = %411
  br label %423

423:                                              ; preds = %422, %418
  %424 = phi i32 [ %421, %418 ], [ 0, %422 ]
  %425 = call i32 @fz_write_int32_be(i32* %414, i32* %415, i32 %424)
  %426 = load i32*, i32** %9, align 8
  %427 = load i32*, i32** %10, align 8
  %428 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %429 = icmp ne %struct.TYPE_3__* %428, null
  br i1 %429, label %430, label %434

430:                                              ; preds = %423
  %431 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %432 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %431, i32 0, i32 26
  %433 = load i32, i32* %432, align 8
  br label %435

434:                                              ; preds = %423
  br label %435

435:                                              ; preds = %434, %430
  %436 = phi i32 [ %433, %430 ], [ 0, %434 ]
  %437 = call i32 @fz_write_int32_be(i32* %426, i32* %427, i32 %436)
  %438 = load i32*, i32** %9, align 8
  %439 = load i32*, i32** %10, align 8
  %440 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %441 = icmp ne %struct.TYPE_3__* %440, null
  br i1 %441, label %442, label %446

442:                                              ; preds = %435
  %443 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %444 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i32 0, i32 27
  %445 = load i32, i32* %444, align 4
  br label %447

446:                                              ; preds = %435
  br label %447

447:                                              ; preds = %446, %442
  %448 = phi i32 [ %445, %442 ], [ 0, %446 ]
  %449 = call i32 @fz_write_int32_be(i32* %438, i32* %439, i32 %448)
  %450 = load i32*, i32** %9, align 8
  %451 = load i32*, i32** %10, align 8
  %452 = load i32, i32* %16, align 4
  %453 = icmp sle i32 %452, 8
  br i1 %453, label %454, label %455

454:                                              ; preds = %447
  br label %458

455:                                              ; preds = %447
  %456 = load i32, i32* %16, align 4
  %457 = ashr i32 %456, 8
  br label %458

458:                                              ; preds = %455, %454
  %459 = phi i32 [ 1, %454 ], [ %457, %455 ]
  %460 = call i32 @fz_write_int32_be(i32* %450, i32* %451, i32 %459)
  store i32 424, i32* %17, align 4
  br label %461

461:                                              ; preds = %468, %458
  %462 = load i32, i32* %17, align 4
  %463 = icmp slt i32 %462, 452
  br i1 %463, label %464, label %471

464:                                              ; preds = %461
  %465 = load i32*, i32** %9, align 8
  %466 = load i32*, i32** %10, align 8
  %467 = call i32 @fz_write_data(i32* %465, i32* %466, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @pwg_page_header.zero, i64 0, i64 0), i32 4)
  br label %468

468:                                              ; preds = %464
  %469 = load i32, i32* %17, align 4
  %470 = add nsw i32 %469, 4
  store i32 %470, i32* %17, align 4
  br label %461

471:                                              ; preds = %461
  %472 = load i32*, i32** %9, align 8
  %473 = load i32*, i32** %10, align 8
  %474 = call i32 @fz_write_int32_be(i32* %472, i32* %473, i32 1)
  %475 = load i32*, i32** %9, align 8
  %476 = load i32*, i32** %10, align 8
  %477 = call i32 @fz_write_int32_be(i32* %475, i32* %476, i32 1)
  %478 = load i32*, i32** %9, align 8
  %479 = load i32*, i32** %10, align 8
  %480 = call i32 @fz_write_int32_be(i32* %478, i32* %479, i32 1)
  %481 = load i32*, i32** %9, align 8
  %482 = load i32*, i32** %10, align 8
  %483 = call i32 @fz_write_int32_be(i32* %481, i32* %482, i32 0)
  %484 = load i32*, i32** %9, align 8
  %485 = load i32*, i32** %10, align 8
  %486 = call i32 @fz_write_int32_be(i32* %484, i32* %485, i32 0)
  %487 = load i32*, i32** %9, align 8
  %488 = load i32*, i32** %10, align 8
  %489 = load i32, i32* %14, align 4
  %490 = call i32 @fz_write_int32_be(i32* %487, i32* %488, i32 %489)
  %491 = load i32*, i32** %9, align 8
  %492 = load i32*, i32** %10, align 8
  %493 = load i32, i32* %15, align 4
  %494 = call i32 @fz_write_int32_be(i32* %491, i32* %492, i32 %493)
  store i32 480, i32* %17, align 4
  br label %495

495:                                              ; preds = %502, %471
  %496 = load i32, i32* %17, align 4
  %497 = icmp slt i32 %496, 1668
  br i1 %497, label %498, label %505

498:                                              ; preds = %495
  %499 = load i32*, i32** %9, align 8
  %500 = load i32*, i32** %10, align 8
  %501 = call i32 @fz_write_data(i32* %499, i32* %500, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @pwg_page_header.zero, i64 0, i64 0), i32 4)
  br label %502

502:                                              ; preds = %498
  %503 = load i32, i32* %17, align 4
  %504 = add nsw i32 %503, 4
  store i32 %504, i32* %17, align 4
  br label %495

505:                                              ; preds = %495
  %506 = load i32*, i32** %9, align 8
  %507 = load i32*, i32** %10, align 8
  %508 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %509 = icmp ne %struct.TYPE_3__* %508, null
  br i1 %509, label %510, label %514

510:                                              ; preds = %505
  %511 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %512 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %511, i32 0, i32 28
  %513 = load i8*, i8** %512, align 8
  br label %515

514:                                              ; preds = %505
  br label %515

515:                                              ; preds = %514, %510
  %516 = phi i8* [ %513, %510 ], [ getelementptr inbounds ([64 x i8], [64 x i8]* @pwg_page_header.zero, i64 0, i64 0), %514 ]
  %517 = call i32 @fz_write_data(i32* %506, i32* %507, i8* %516, i32 64)
  %518 = load i32*, i32** %9, align 8
  %519 = load i32*, i32** %10, align 8
  %520 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %521 = icmp ne %struct.TYPE_3__* %520, null
  br i1 %521, label %522, label %526

522:                                              ; preds = %515
  %523 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %524 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %523, i32 0, i32 29
  %525 = load i8*, i8** %524, align 8
  br label %527

526:                                              ; preds = %515
  br label %527

527:                                              ; preds = %526, %522
  %528 = phi i8* [ %525, %522 ], [ getelementptr inbounds ([64 x i8], [64 x i8]* @pwg_page_header.zero, i64 0, i64 0), %526 ]
  %529 = call i32 @fz_write_data(i32* %518, i32* %519, i8* %528, i32 64)
  ret void
}

declare dso_local i32 @fz_write_data(i32*, i32*, i8*, i32) #1

declare dso_local i32 @fz_write_int32_be(i32*, i32*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

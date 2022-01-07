; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pnm.c_pam_write_band.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pnm.c_pam_write_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i32, i32, i8*)* @pam_write_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pam_write_band(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [720 x i8], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %13, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %14, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %16, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %20, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %6
  br label %475

52:                                               ; preds = %6
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %20, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %20, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %454

64:                                               ; preds = %58
  %65 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  store i8* %65, i8** %22, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %16, align 4
  switch i32 %71, label %355 [
    i32 2, label %72
    i32 4, label %148
    i32 5, label %246
  ]

72:                                               ; preds = %64
  store i32 0, i32* %19, align 4
  br label %73

73:                                               ; preds = %130, %72
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %20, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %133

77:                                               ; preds = %73
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %122, %77
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %125

82:                                               ; preds = %78
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  store i32 %86, i32* %23, align 4
  %87 = load i32, i32* %23, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load i8*, i8** %12, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = mul nsw i32 %93, 255
  %95 = load i32, i32* %23, align 4
  %96 = ashr i32 %95, 1
  %97 = add nsw i32 %94, %96
  %98 = load i32, i32* %23, align 4
  %99 = sdiv i32 %97, %98
  br label %101

100:                                              ; preds = %82
  br label %101

101:                                              ; preds = %100, %89
  %102 = phi i32 [ %99, %89 ], [ 0, %100 ]
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %22, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %22, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i32, i32* %23, align 4
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %22, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %22, align 8
  store i8 %107, i8* %108, align 1
  %110 = load i8*, i8** %12, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  store i8* %111, i8** %12, align 8
  %112 = load i8*, i8** %22, align 8
  %113 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 720
  %114 = icmp eq i8* %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %101
  %116 = load i32*, i32** %7, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %119 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %116, i32* %117, i8* %118, i64 720)
  %120 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  store i8* %120, i8** %22, align 8
  br label %121

121:                                              ; preds = %115, %101
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %18, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %18, align 4
  br label %78

125:                                              ; preds = %78
  %126 = load i32, i32* %9, align 4
  %127 = load i8*, i8** %12, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %12, align 8
  br label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %19, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %19, align 4
  br label %73

133:                                              ; preds = %73
  %134 = load i8*, i8** %22, align 8
  %135 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %136 = icmp ne i8* %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load i32*, i32** %7, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %141 = load i8*, i8** %22, align 8
  %142 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %138, i32* %139, i8* %140, i64 %145)
  br label %147

147:                                              ; preds = %137, %133
  br label %453

148:                                              ; preds = %64
  store i32 0, i32* %19, align 4
  br label %149

149:                                              ; preds = %228, %148
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %20, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %231

153:                                              ; preds = %149
  store i32 0, i32* %18, align 4
  br label %154

154:                                              ; preds = %220, %153
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %223

158:                                              ; preds = %154
  %159 = load i8*, i8** %12, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 3
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  store i32 %162, i32* %24, align 4
  %163 = load i32, i32* %24, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %158
  %166 = load i32, i32* %24, align 4
  %167 = sdiv i32 65280, %166
  br label %169

168:                                              ; preds = %158
  br label %169

169:                                              ; preds = %168, %165
  %170 = phi i32 [ %167, %165 ], [ 0, %168 ]
  store i32 %170, i32* %25, align 4
  %171 = load i8*, i8** %12, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = load i32, i32* %25, align 4
  %176 = mul nsw i32 %174, %175
  %177 = add nsw i32 %176, 128
  %178 = ashr i32 %177, 8
  %179 = trunc i32 %178 to i8
  %180 = load i8*, i8** %22, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %22, align 8
  store i8 %179, i8* %180, align 1
  %182 = load i8*, i8** %12, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = load i32, i32* %25, align 4
  %187 = mul nsw i32 %185, %186
  %188 = add nsw i32 %187, 128
  %189 = ashr i32 %188, 8
  %190 = trunc i32 %189 to i8
  %191 = load i8*, i8** %22, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %22, align 8
  store i8 %190, i8* %191, align 1
  %193 = load i8*, i8** %12, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 2
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = load i32, i32* %25, align 4
  %198 = mul nsw i32 %196, %197
  %199 = add nsw i32 %198, 128
  %200 = ashr i32 %199, 8
  %201 = trunc i32 %200 to i8
  %202 = load i8*, i8** %22, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %22, align 8
  store i8 %201, i8* %202, align 1
  %204 = load i32, i32* %24, align 4
  %205 = trunc i32 %204 to i8
  %206 = load i8*, i8** %22, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %22, align 8
  store i8 %205, i8* %206, align 1
  %208 = load i8*, i8** %12, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 4
  store i8* %209, i8** %12, align 8
  %210 = load i8*, i8** %22, align 8
  %211 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 720
  %212 = icmp eq i8* %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %169
  %214 = load i32*, i32** %7, align 8
  %215 = load i32*, i32** %13, align 8
  %216 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %217 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %214, i32* %215, i8* %216, i64 720)
  %218 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  store i8* %218, i8** %22, align 8
  br label %219

219:                                              ; preds = %213, %169
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %18, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %18, align 4
  br label %154

223:                                              ; preds = %154
  %224 = load i32, i32* %9, align 4
  %225 = load i8*, i8** %12, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8* %227, i8** %12, align 8
  br label %228

228:                                              ; preds = %223
  %229 = load i32, i32* %19, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %19, align 4
  br label %149

231:                                              ; preds = %149
  %232 = load i8*, i8** %22, align 8
  %233 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %234 = icmp ne i8* %232, %233
  br i1 %234, label %235, label %245

235:                                              ; preds = %231
  %236 = load i32*, i32** %7, align 8
  %237 = load i32*, i32** %13, align 8
  %238 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %239 = load i8*, i8** %22, align 8
  %240 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %241 = ptrtoint i8* %239 to i64
  %242 = ptrtoint i8* %240 to i64
  %243 = sub i64 %241, %242
  %244 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %236, i32* %237, i8* %238, i64 %243)
  br label %245

245:                                              ; preds = %235, %231
  br label %453

246:                                              ; preds = %64
  store i32 0, i32* %19, align 4
  br label %247

247:                                              ; preds = %337, %246
  %248 = load i32, i32* %19, align 4
  %249 = load i32, i32* %20, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %340

251:                                              ; preds = %247
  store i32 0, i32* %18, align 4
  br label %252

252:                                              ; preds = %329, %251
  %253 = load i32, i32* %18, align 4
  %254 = load i32, i32* %14, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %332

256:                                              ; preds = %252
  %257 = load i8*, i8** %12, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 4
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  store i32 %260, i32* %26, align 4
  %261 = load i32, i32* %26, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %256
  %264 = load i32, i32* %26, align 4
  %265 = sdiv i32 65280, %264
  br label %267

266:                                              ; preds = %256
  br label %267

267:                                              ; preds = %266, %263
  %268 = phi i32 [ %265, %263 ], [ 0, %266 ]
  store i32 %268, i32* %27, align 4
  %269 = load i8*, i8** %12, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 0
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = load i32, i32* %27, align 4
  %274 = mul nsw i32 %272, %273
  %275 = add nsw i32 %274, 128
  %276 = ashr i32 %275, 8
  %277 = trunc i32 %276 to i8
  %278 = load i8*, i8** %22, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %22, align 8
  store i8 %277, i8* %278, align 1
  %280 = load i8*, i8** %12, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 1
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = load i32, i32* %27, align 4
  %285 = mul nsw i32 %283, %284
  %286 = add nsw i32 %285, 128
  %287 = ashr i32 %286, 8
  %288 = trunc i32 %287 to i8
  %289 = load i8*, i8** %22, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %22, align 8
  store i8 %288, i8* %289, align 1
  %291 = load i8*, i8** %12, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 2
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i32
  %295 = load i32, i32* %27, align 4
  %296 = mul nsw i32 %294, %295
  %297 = add nsw i32 %296, 128
  %298 = ashr i32 %297, 8
  %299 = trunc i32 %298 to i8
  %300 = load i8*, i8** %22, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %301, i8** %22, align 8
  store i8 %299, i8* %300, align 1
  %302 = load i8*, i8** %12, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 3
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  %306 = load i32, i32* %27, align 4
  %307 = mul nsw i32 %305, %306
  %308 = add nsw i32 %307, 128
  %309 = ashr i32 %308, 8
  %310 = trunc i32 %309 to i8
  %311 = load i8*, i8** %22, align 8
  %312 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %312, i8** %22, align 8
  store i8 %310, i8* %311, align 1
  %313 = load i32, i32* %26, align 4
  %314 = trunc i32 %313 to i8
  %315 = load i8*, i8** %22, align 8
  %316 = getelementptr inbounds i8, i8* %315, i32 1
  store i8* %316, i8** %22, align 8
  store i8 %314, i8* %315, align 1
  %317 = load i8*, i8** %12, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 5
  store i8* %318, i8** %12, align 8
  %319 = load i8*, i8** %22, align 8
  %320 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 720
  %321 = icmp eq i8* %319, %320
  br i1 %321, label %322, label %328

322:                                              ; preds = %267
  %323 = load i32*, i32** %7, align 8
  %324 = load i32*, i32** %13, align 8
  %325 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %326 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %323, i32* %324, i8* %325, i64 720)
  %327 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  store i8* %327, i8** %22, align 8
  br label %328

328:                                              ; preds = %322, %267
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %18, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %18, align 4
  br label %252

332:                                              ; preds = %252
  %333 = load i32, i32* %9, align 4
  %334 = load i8*, i8** %12, align 8
  %335 = sext i32 %333 to i64
  %336 = getelementptr inbounds i8, i8* %334, i64 %335
  store i8* %336, i8** %12, align 8
  br label %337

337:                                              ; preds = %332
  %338 = load i32, i32* %19, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %19, align 4
  br label %247

340:                                              ; preds = %247
  %341 = load i8*, i8** %22, align 8
  %342 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %343 = icmp ne i8* %341, %342
  br i1 %343, label %344, label %354

344:                                              ; preds = %340
  %345 = load i32*, i32** %7, align 8
  %346 = load i32*, i32** %13, align 8
  %347 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %348 = load i8*, i8** %22, align 8
  %349 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %350 = ptrtoint i8* %348 to i64
  %351 = ptrtoint i8* %349 to i64
  %352 = sub i64 %350, %351
  %353 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %345, i32* %346, i8* %347, i64 %352)
  br label %354

354:                                              ; preds = %344, %340
  br label %453

355:                                              ; preds = %64
  store i32 0, i32* %19, align 4
  br label %356

356:                                              ; preds = %435, %355
  %357 = load i32, i32* %19, align 4
  %358 = load i32, i32* %20, align 4
  %359 = icmp slt i32 %357, %358
  br i1 %359, label %360, label %438

360:                                              ; preds = %356
  store i32 0, i32* %18, align 4
  br label %361

361:                                              ; preds = %427, %360
  %362 = load i32, i32* %18, align 4
  %363 = load i32, i32* %14, align 4
  %364 = icmp slt i32 %362, %363
  br i1 %364, label %365, label %430

365:                                              ; preds = %361
  %366 = load i8*, i8** %12, align 8
  %367 = load i32, i32* %16, align 4
  %368 = sub nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8, i8* %366, i64 %369
  %371 = load i8, i8* %370, align 1
  %372 = zext i8 %371 to i32
  store i32 %372, i32* %28, align 4
  %373 = load i32, i32* %28, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %365
  %376 = load i32, i32* %28, align 4
  %377 = sdiv i32 65280, %376
  br label %379

378:                                              ; preds = %365
  br label %379

379:                                              ; preds = %378, %375
  %380 = phi i32 [ %377, %375 ], [ 0, %378 ]
  store i32 %380, i32* %29, align 4
  store i32 0, i32* %30, align 4
  br label %381

381:                                              ; preds = %398, %379
  %382 = load i32, i32* %30, align 4
  %383 = load i32, i32* %16, align 4
  %384 = sub nsw i32 %383, 1
  %385 = icmp slt i32 %382, %384
  br i1 %385, label %386, label %401

386:                                              ; preds = %381
  %387 = load i8*, i8** %12, align 8
  %388 = getelementptr inbounds i8, i8* %387, i32 1
  store i8* %388, i8** %12, align 8
  %389 = load i8, i8* %387, align 1
  %390 = zext i8 %389 to i32
  %391 = load i32, i32* %29, align 4
  %392 = mul nsw i32 %390, %391
  %393 = add nsw i32 %392, 128
  %394 = ashr i32 %393, 8
  %395 = trunc i32 %394 to i8
  %396 = load i8*, i8** %22, align 8
  %397 = getelementptr inbounds i8, i8* %396, i32 1
  store i8* %397, i8** %22, align 8
  store i8 %395, i8* %396, align 1
  br label %398

398:                                              ; preds = %386
  %399 = load i32, i32* %30, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %30, align 4
  br label %381

401:                                              ; preds = %381
  %402 = load i32, i32* %28, align 4
  %403 = trunc i32 %402 to i8
  %404 = load i8*, i8** %22, align 8
  %405 = getelementptr inbounds i8, i8* %404, i32 1
  store i8* %405, i8** %22, align 8
  store i8 %403, i8* %404, align 1
  %406 = load i8*, i8** %12, align 8
  %407 = getelementptr inbounds i8, i8* %406, i32 1
  store i8* %407, i8** %12, align 8
  %408 = load i8*, i8** %22, align 8
  %409 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 720
  %410 = load i32, i32* %16, align 4
  %411 = sext i32 %410 to i64
  %412 = sub i64 0, %411
  %413 = getelementptr inbounds i8, i8* %409, i64 %412
  %414 = icmp uge i8* %408, %413
  br i1 %414, label %415, label %426

415:                                              ; preds = %401
  %416 = load i32*, i32** %7, align 8
  %417 = load i32*, i32** %13, align 8
  %418 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %419 = load i8*, i8** %22, align 8
  %420 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %421 = ptrtoint i8* %419 to i64
  %422 = ptrtoint i8* %420 to i64
  %423 = sub i64 %421, %422
  %424 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %416, i32* %417, i8* %418, i64 %423)
  %425 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  store i8* %425, i8** %22, align 8
  br label %426

426:                                              ; preds = %415, %401
  br label %427

427:                                              ; preds = %426
  %428 = load i32, i32* %18, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %18, align 4
  br label %361

430:                                              ; preds = %361
  %431 = load i32, i32* %9, align 4
  %432 = load i8*, i8** %12, align 8
  %433 = sext i32 %431 to i64
  %434 = getelementptr inbounds i8, i8* %432, i64 %433
  store i8* %434, i8** %12, align 8
  br label %435

435:                                              ; preds = %430
  %436 = load i32, i32* %19, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %19, align 4
  br label %356

438:                                              ; preds = %356
  %439 = load i8*, i8** %22, align 8
  %440 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %441 = icmp ne i8* %439, %440
  br i1 %441, label %442, label %452

442:                                              ; preds = %438
  %443 = load i32*, i32** %7, align 8
  %444 = load i32*, i32** %13, align 8
  %445 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %446 = load i8*, i8** %22, align 8
  %447 = getelementptr inbounds [720 x i8], [720 x i8]* %21, i64 0, i64 0
  %448 = ptrtoint i8* %446 to i64
  %449 = ptrtoint i8* %447 to i64
  %450 = sub i64 %448, %449
  %451 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %443, i32* %444, i8* %445, i64 %450)
  br label %452

452:                                              ; preds = %442, %438
  br label %453

453:                                              ; preds = %452, %354, %245, %147
  br label %475

454:                                              ; preds = %58
  store i32 0, i32* %19, align 4
  br label %455

455:                                              ; preds = %471, %454
  %456 = load i32, i32* %19, align 4
  %457 = load i32, i32* %20, align 4
  %458 = icmp slt i32 %456, %457
  br i1 %458, label %459, label %474

459:                                              ; preds = %455
  %460 = load i32*, i32** %7, align 8
  %461 = load i32*, i32** %13, align 8
  %462 = load i8*, i8** %12, align 8
  %463 = load i32, i32* %14, align 4
  %464 = load i32, i32* %16, align 4
  %465 = mul nsw i32 %463, %464
  %466 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %460, i32* %461, i8* %462, i32 %465)
  %467 = load i32, i32* %9, align 4
  %468 = load i8*, i8** %12, align 8
  %469 = sext i32 %467 to i64
  %470 = getelementptr inbounds i8, i8* %468, i64 %469
  store i8* %470, i8** %12, align 8
  br label %471

471:                                              ; preds = %459
  %472 = load i32, i32* %19, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %19, align 4
  br label %455

474:                                              ; preds = %455
  br label %475

475:                                              ; preds = %51, %474, %453
  ret void
}

declare dso_local i32 @fz_write_data(i32*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_paragraph.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_paragraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i8*, i64, i64, i32, i32, i32 }
%struct.sd_markdown = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32)*, i64 }
%struct.buf.0 = type opaque
%struct.buf.1 = type opaque

@MKDEXT_LAX_SPACING = common dso_local global i32 0, align 4
@MKDEXT_FENCED_CODE = common dso_local global i32 0, align 4
@BUFFER_BLOCK = common dso_local global i32 0, align 4
@BUFFER_SPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64)* @parse_paragraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_paragraph(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.sd_markdown*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buf, align 8
  %14 = alloca %struct.buf*, align 8
  %15 = alloca %struct.buf*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %5, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %18 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 0
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %18, align 8
  %20 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 3
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 4
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 5
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %182, %4
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %184

29:                                               ; preds = %25
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %47, %29
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 10
  br label %44

44:                                               ; preds = %36, %32
  %45 = phi i1 [ false, %32 ], [ %43, %36 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %32

50:                                               ; preds = %44
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %54, %55
  %57 = call i64 @is_empty(i8* %53, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %184

60:                                               ; preds = %50
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = sub i64 %67, %68
  %70 = call i32 @is_headerline(i8* %66, i64 %69)
  store i32 %70, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %184

73:                                               ; preds = %63, %60
  store i32 0, i32* %12, align 4
  %74 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = sub i64 %78, %79
  %81 = call i64 @is_atxheader(%struct.sd_markdown* %74, i8* %77, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %73
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub i64 %87, %88
  %90 = call i64 @is_hrule(i8* %86, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %83
  %93 = load i8*, i8** %7, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = sub i64 %96, %97
  %99 = call i64 @prefix_quote(i8* %95, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92, %83, %73
  %102 = load i64, i64* %9, align 8
  store i64 %102, i64* %10, align 8
  br label %184

103:                                              ; preds = %92
  %104 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %105 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MKDEXT_LAX_SPACING, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %182

110:                                              ; preds = %103
  %111 = load i8*, i8** %7, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @isalpha(i8 signext %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %182, label %117

117:                                              ; preds = %110
  %118 = load i8*, i8** %7, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %9, align 8
  %123 = sub i64 %121, %122
  %124 = call i64 @prefix_oli(i8* %120, i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %117
  %127 = load i8*, i8** %7, align 8
  %128 = load i64, i64* %9, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* %9, align 8
  %132 = sub i64 %130, %131
  %133 = call i64 @prefix_uli(i8* %129, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %126, %117
  %136 = load i64, i64* %9, align 8
  store i64 %136, i64* %10, align 8
  br label %184

137:                                              ; preds = %126
  %138 = load i8*, i8** %7, align 8
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 60
  br i1 %143, label %144, label %163

144:                                              ; preds = %137
  %145 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %146 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %144
  %151 = load %struct.buf*, %struct.buf** %5, align 8
  %152 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = load i64, i64* %9, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* %9, align 8
  %158 = sub i64 %156, %157
  %159 = call i64 @parse_htmlblock(%struct.buf* %151, %struct.sd_markdown* %152, i8* %155, i64 %158, i32 0)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %150
  %162 = load i64, i64* %9, align 8
  store i64 %162, i64* %10, align 8
  br label %184

163:                                              ; preds = %150, %144, %137
  %164 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %165 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @MKDEXT_FENCED_CODE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %163
  %171 = load i8*, i8** %7, align 8
  %172 = load i64, i64* %9, align 8
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  %174 = load i64, i64* %8, align 8
  %175 = load i64, i64* %9, align 8
  %176 = sub i64 %174, %175
  %177 = call i64 @is_codefence(i8* %173, i64 %176, i32* null)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = load i64, i64* %9, align 8
  store i64 %180, i64* %10, align 8
  br label %184

181:                                              ; preds = %170, %163
  br label %182

182:                                              ; preds = %181, %110, %103
  %183 = load i64, i64* %10, align 8
  store i64 %183, i64* %9, align 8
  br label %25

184:                                              ; preds = %179, %161, %135, %101, %72, %59, %25
  %185 = load i64, i64* %9, align 8
  %186 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  store i64 %185, i64* %186, align 8
  br label %187

187:                                              ; preds = %202, %184
  %188 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = load i8*, i8** %7, align 8
  %193 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = sub i64 %194, 1
  %196 = getelementptr inbounds i8, i8* %192, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 10
  br label %200

200:                                              ; preds = %191, %187
  %201 = phi i1 [ false, %187 ], [ %199, %191 ]
  br i1 %201, label %202, label %206

202:                                              ; preds = %200
  %203 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = add i64 %204, -1
  store i64 %205, i64* %203, align 8
  br label %187

206:                                              ; preds = %200
  %207 = load i32, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %243, label %209

209:                                              ; preds = %206
  %210 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %211 = load i32, i32* @BUFFER_BLOCK, align 4
  %212 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %210, i32 %211)
  store %struct.buf* %212, %struct.buf** %14, align 8
  %213 = load %struct.buf*, %struct.buf** %14, align 8
  %214 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %215 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = trunc i64 %218 to i32
  %220 = call i32 @parse_inline(%struct.buf* %213, %struct.sd_markdown* %214, i64 %216, i32 %219)
  %221 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %222 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 1
  %224 = load i32 (%struct.buf.1*, %struct.buf.1*, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32)** %223, align 8
  %225 = icmp ne i32 (%struct.buf.1*, %struct.buf.1*, i32)* %224, null
  br i1 %225, label %226, label %239

226:                                              ; preds = %209
  %227 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %228 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 1
  %230 = load i32 (%struct.buf.1*, %struct.buf.1*, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32)** %229, align 8
  %231 = load %struct.buf*, %struct.buf** %5, align 8
  %232 = bitcast %struct.buf* %231 to %struct.buf.1*
  %233 = load %struct.buf*, %struct.buf** %14, align 8
  %234 = bitcast %struct.buf* %233 to %struct.buf.1*
  %235 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %236 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 %230(%struct.buf.1* %232, %struct.buf.1* %234, i32 %237)
  br label %239

239:                                              ; preds = %226, %209
  %240 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %241 = load i32, i32* @BUFFER_BLOCK, align 4
  %242 = call i32 @rndr_popbuf(%struct.sd_markdown* %240, i32 %241)
  br label %379

243:                                              ; preds = %206
  %244 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %344

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %9, align 8
  %250 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = sub i64 %251, 1
  store i64 %252, i64* %250, align 8
  br label %253

253:                                              ; preds = %267, %247
  %254 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %253
  %258 = load i8*, i8** %7, align 8
  %259 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp ne i32 %263, 10
  br label %265

265:                                              ; preds = %257, %253
  %266 = phi i1 [ false, %253 ], [ %264, %257 ]
  br i1 %266, label %267, label %271

267:                                              ; preds = %265
  %268 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = sub i64 %269, 1
  store i64 %270, i64* %268, align 8
  br label %253

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* %16, align 8
  br label %275

275:                                              ; preds = %290, %271
  %276 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %275
  %280 = load i8*, i8** %7, align 8
  %281 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = sub i64 %282, 1
  %284 = getelementptr inbounds i8, i8* %280, i64 %283
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp eq i32 %286, 10
  br label %288

288:                                              ; preds = %279, %275
  %289 = phi i1 [ false, %275 ], [ %287, %279 ]
  br i1 %289, label %290, label %294

290:                                              ; preds = %288
  %291 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = sub i64 %292, 1
  store i64 %293, i64* %291, align 8
  br label %275

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = icmp ugt i64 %296, 0
  br i1 %297, label %298, label %340

298:                                              ; preds = %294
  %299 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %300 = load i32, i32* @BUFFER_BLOCK, align 4
  %301 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %299, i32 %300)
  store %struct.buf* %301, %struct.buf** %17, align 8
  %302 = load %struct.buf*, %struct.buf** %17, align 8
  %303 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %304 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = call i32 @parse_inline(%struct.buf* %302, %struct.sd_markdown* %303, i64 %305, i32 %308)
  %310 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %311 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 1
  %313 = load i32 (%struct.buf.1*, %struct.buf.1*, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32)** %312, align 8
  %314 = icmp ne i32 (%struct.buf.1*, %struct.buf.1*, i32)* %313, null
  br i1 %314, label %315, label %328

315:                                              ; preds = %298
  %316 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %317 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 1
  %319 = load i32 (%struct.buf.1*, %struct.buf.1*, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32)** %318, align 8
  %320 = load %struct.buf*, %struct.buf** %5, align 8
  %321 = bitcast %struct.buf* %320 to %struct.buf.1*
  %322 = load %struct.buf*, %struct.buf** %17, align 8
  %323 = bitcast %struct.buf* %322 to %struct.buf.1*
  %324 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %325 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = call i32 %319(%struct.buf.1* %321, %struct.buf.1* %323, i32 %326)
  br label %328

328:                                              ; preds = %315, %298
  %329 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %330 = load i32, i32* @BUFFER_BLOCK, align 4
  %331 = call i32 @rndr_popbuf(%struct.sd_markdown* %329, i32 %330)
  %332 = load i64, i64* %16, align 8
  %333 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = add i64 %334, %332
  store i64 %335, i64* %333, align 8
  %336 = load i64, i64* %9, align 8
  %337 = load i64, i64* %16, align 8
  %338 = sub i64 %336, %337
  %339 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  store i64 %338, i64* %339, align 8
  br label %343

340:                                              ; preds = %294
  %341 = load i64, i64* %9, align 8
  %342 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  store i64 %341, i64* %342, align 8
  br label %343

343:                                              ; preds = %340, %328
  br label %344

344:                                              ; preds = %343, %243
  %345 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %346 = load i32, i32* @BUFFER_SPAN, align 4
  %347 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %345, i32 %346)
  store %struct.buf* %347, %struct.buf** %15, align 8
  %348 = load %struct.buf*, %struct.buf** %15, align 8
  %349 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %350 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = trunc i64 %353 to i32
  %355 = call i32 @parse_inline(%struct.buf* %348, %struct.sd_markdown* %349, i64 %351, i32 %354)
  %356 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %357 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 0
  %359 = load i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)** %358, align 8
  %360 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)* %359, null
  br i1 %360, label %361, label %375

361:                                              ; preds = %344
  %362 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %363 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 0
  %365 = load i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)** %364, align 8
  %366 = load %struct.buf*, %struct.buf** %5, align 8
  %367 = bitcast %struct.buf* %366 to %struct.buf.0*
  %368 = load %struct.buf*, %struct.buf** %15, align 8
  %369 = bitcast %struct.buf* %368 to %struct.buf.0*
  %370 = load i32, i32* %11, align 4
  %371 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %372 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = call i32 %365(%struct.buf.0* %367, %struct.buf.0* %369, i32 %370, i32 %373)
  br label %375

375:                                              ; preds = %361, %344
  %376 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %377 = load i32, i32* @BUFFER_SPAN, align 4
  %378 = call i32 @rndr_popbuf(%struct.sd_markdown* %376, i32 %377)
  br label %379

379:                                              ; preds = %375, %239
  %380 = load i64, i64* %10, align 8
  ret i64 %380
}

declare dso_local i64 @is_empty(i8*, i64) #1

declare dso_local i32 @is_headerline(i8*, i64) #1

declare dso_local i64 @is_atxheader(%struct.sd_markdown*, i8*, i64) #1

declare dso_local i64 @is_hrule(i8*, i64) #1

declare dso_local i64 @prefix_quote(i8*, i64) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i64 @prefix_oli(i8*, i64) #1

declare dso_local i64 @prefix_uli(i8*, i64) #1

declare dso_local i64 @parse_htmlblock(%struct.buf*, %struct.sd_markdown*, i8*, i64, i32) #1

declare dso_local i64 @is_codefence(i8*, i64, i32*) #1

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i32 @parse_inline(%struct.buf*, %struct.sd_markdown*, i64, i32) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

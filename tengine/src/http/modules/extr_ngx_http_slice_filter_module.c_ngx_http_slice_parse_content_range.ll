; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_slice_filter_module.c_ngx_http_slice_parse_content_range.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_slice_filter_module.c_ngx_http_slice_parse_content_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_11__ = type { i8, i8, i8 }

@.str = private unnamed_addr constant [7 x i8] c"bytes \00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_MAX_OFF_T_VALUE = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @ngx_http_slice_parse_content_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_slice_parse_content_range(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %12, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %18 = icmp eq %struct.TYPE_10__* %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 7
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @ngx_strncmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25, %19, %2
  %33 = load i32, i32* @NGX_ERROR, align 4
  store i32 %33, i32* %3, align 4
  br label %318

34:                                               ; preds = %25
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 6
  store i8* %39, i8** %11, align 8
  %40 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %41 = sdiv i32 %40, 10
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %9, align 1
  %43 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %44 = srem i32 %43, 10
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %10, align 1
  store i8 0, i8* %6, align 1
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  br label %46

46:                                               ; preds = %51, %34
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %11, align 8
  br label %46

54:                                               ; preds = %46
  %55 = load i8*, i8** %11, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp slt i32 %57, 48
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %11, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sgt i32 %62, 57
  br i1 %63, label %64, label %66

64:                                               ; preds = %59, %54
  %65 = load i32, i32* @NGX_ERROR, align 4
  store i32 %65, i32* %3, align 4
  br label %318

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %101, %66
  %68 = load i8*, i8** %11, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sge i32 %70, 48
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %11, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sle i32 %75, 57
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i1 [ false, %67 ], [ %76, %72 ]
  br i1 %78, label %79, label %112

79:                                               ; preds = %77
  %80 = load i8, i8* %6, align 1
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* %9, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sge i32 %81, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %79
  %86 = load i8, i8* %6, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* %9, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sgt i32 %87, %89
  br i1 %90, label %99, label %91

91:                                               ; preds = %85
  %92 = load i8*, i8** %11, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = sub nsw i32 %94, 48
  %96 = load i8, i8* %10, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp sgt i32 %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %91, %85
  %100 = load i32, i32* @NGX_ERROR, align 4
  store i32 %100, i32* %3, align 4
  br label %318

101:                                              ; preds = %91, %79
  %102 = load i8, i8* %6, align 1
  %103 = sext i8 %102 to i32
  %104 = mul nsw i32 %103, 10
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %11, align 8
  %107 = load i8, i8* %105, align 1
  %108 = sext i8 %107 to i32
  %109 = sub nsw i32 %108, 48
  %110 = add nsw i32 %104, %109
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %6, align 1
  br label %67

112:                                              ; preds = %77
  br label %113

113:                                              ; preds = %118, %112
  %114 = load i8*, i8** %11, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 32
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i8*, i8** %11, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %11, align 8
  br label %113

121:                                              ; preds = %113
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %11, align 8
  %124 = load i8, i8* %122, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 45
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* @NGX_ERROR, align 4
  store i32 %128, i32* %3, align 4
  br label %318

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %135, %129
  %131 = load i8*, i8** %11, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 32
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i8*, i8** %11, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %11, align 8
  br label %130

138:                                              ; preds = %130
  %139 = load i8*, i8** %11, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp slt i32 %141, 48
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i8*, i8** %11, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp sgt i32 %146, 57
  br i1 %147, label %148, label %150

148:                                              ; preds = %143, %138
  %149 = load i32, i32* @NGX_ERROR, align 4
  store i32 %149, i32* %3, align 4
  br label %318

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %185, %150
  %152 = load i8*, i8** %11, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp sge i32 %154, 48
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i8*, i8** %11, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp sle i32 %159, 57
  br label %161

161:                                              ; preds = %156, %151
  %162 = phi i1 [ false, %151 ], [ %160, %156 ]
  br i1 %162, label %163, label %196

163:                                              ; preds = %161
  %164 = load i8, i8* %7, align 1
  %165 = sext i8 %164 to i32
  %166 = load i8, i8* %9, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp sge i32 %165, %167
  br i1 %168, label %169, label %185

169:                                              ; preds = %163
  %170 = load i8, i8* %7, align 1
  %171 = sext i8 %170 to i32
  %172 = load i8, i8* %9, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp sgt i32 %171, %173
  br i1 %174, label %183, label %175

175:                                              ; preds = %169
  %176 = load i8*, i8** %11, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = sub nsw i32 %178, 48
  %180 = load i8, i8* %10, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp sgt i32 %179, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %175, %169
  %184 = load i32, i32* @NGX_ERROR, align 4
  store i32 %184, i32* %3, align 4
  br label %318

185:                                              ; preds = %175, %163
  %186 = load i8, i8* %7, align 1
  %187 = sext i8 %186 to i32
  %188 = mul nsw i32 %187, 10
  %189 = load i8*, i8** %11, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %11, align 8
  %191 = load i8, i8* %189, align 1
  %192 = sext i8 %191 to i32
  %193 = sub nsw i32 %192, 48
  %194 = add nsw i32 %188, %193
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %7, align 1
  br label %151

196:                                              ; preds = %161
  %197 = load i8, i8* %7, align 1
  %198 = add i8 %197, 1
  store i8 %198, i8* %7, align 1
  br label %199

199:                                              ; preds = %204, %196
  %200 = load i8*, i8** %11, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 32
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i8*, i8** %11, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %11, align 8
  br label %199

207:                                              ; preds = %199
  %208 = load i8*, i8** %11, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %11, align 8
  %210 = load i8, i8* %208, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp ne i32 %211, 47
  br i1 %212, label %213, label %215

213:                                              ; preds = %207
  %214 = load i32, i32* @NGX_ERROR, align 4
  store i32 %214, i32* %3, align 4
  br label %318

215:                                              ; preds = %207
  br label %216

216:                                              ; preds = %221, %215
  %217 = load i8*, i8** %11, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 32
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load i8*, i8** %11, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %11, align 8
  br label %216

224:                                              ; preds = %216
  %225 = load i8*, i8** %11, align 8
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 42
  br i1 %228, label %229, label %288

229:                                              ; preds = %224
  %230 = load i8*, i8** %11, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp slt i32 %232, 48
  br i1 %233, label %239, label %234

234:                                              ; preds = %229
  %235 = load i8*, i8** %11, align 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp sgt i32 %237, 57
  br i1 %238, label %239, label %241

239:                                              ; preds = %234, %229
  %240 = load i32, i32* @NGX_ERROR, align 4
  store i32 %240, i32* %3, align 4
  br label %318

241:                                              ; preds = %234
  br label %242

242:                                              ; preds = %276, %241
  %243 = load i8*, i8** %11, align 8
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp sge i32 %245, 48
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = load i8*, i8** %11, align 8
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp sle i32 %250, 57
  br label %252

252:                                              ; preds = %247, %242
  %253 = phi i1 [ false, %242 ], [ %251, %247 ]
  br i1 %253, label %254, label %287

254:                                              ; preds = %252
  %255 = load i8, i8* %8, align 1
  %256 = sext i8 %255 to i32
  %257 = load i8, i8* %9, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp sge i32 %256, %258
  br i1 %259, label %260, label %276

260:                                              ; preds = %254
  %261 = load i8, i8* %8, align 1
  %262 = sext i8 %261 to i32
  %263 = load i8, i8* %9, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp sgt i32 %262, %264
  br i1 %265, label %274, label %266

266:                                              ; preds = %260
  %267 = load i8*, i8** %11, align 8
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = sub nsw i32 %269, 48
  %271 = load i8, i8* %10, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp sgt i32 %270, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %266, %260
  %275 = load i32, i32* @NGX_ERROR, align 4
  store i32 %275, i32* %3, align 4
  br label %318

276:                                              ; preds = %266, %254
  %277 = load i8, i8* %8, align 1
  %278 = sext i8 %277 to i32
  %279 = mul nsw i32 %278, 10
  %280 = load i8*, i8** %11, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %11, align 8
  %282 = load i8, i8* %280, align 1
  %283 = sext i8 %282 to i32
  %284 = sub nsw i32 %283, 48
  %285 = add nsw i32 %279, %284
  %286 = trunc i32 %285 to i8
  store i8 %286, i8* %8, align 1
  br label %242

287:                                              ; preds = %252
  br label %291

288:                                              ; preds = %224
  store i8 -1, i8* %8, align 1
  %289 = load i8*, i8** %11, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %11, align 8
  br label %291

291:                                              ; preds = %288, %287
  br label %292

292:                                              ; preds = %297, %291
  %293 = load i8*, i8** %11, align 8
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp eq i32 %295, 32
  br i1 %296, label %297, label %300

297:                                              ; preds = %292
  %298 = load i8*, i8** %11, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %11, align 8
  br label %292

300:                                              ; preds = %292
  %301 = load i8*, i8** %11, align 8
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = load i32, i32* @NGX_ERROR, align 4
  store i32 %306, i32* %3, align 4
  br label %318

307:                                              ; preds = %300
  %308 = load i8, i8* %6, align 1
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  store i8 %308, i8* %310, align 1
  %311 = load i8, i8* %7, align 1
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 1
  store i8 %311, i8* %313, align 1
  %314 = load i8, i8* %8, align 1
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 2
  store i8 %314, i8* %316, align 1
  %317 = load i32, i32* @NGX_OK, align 4
  store i32 %317, i32* %3, align 4
  br label %318

318:                                              ; preds = %307, %305, %274, %239, %213, %183, %148, %127, %99, %64, %32
  %319 = load i32, i32* %3, align 4
  ret i32 %319
}

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

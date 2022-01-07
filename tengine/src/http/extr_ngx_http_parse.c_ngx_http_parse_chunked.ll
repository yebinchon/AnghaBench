; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_parse.c_ngx_http_parse_chunked.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_parse.c_ngx_http_parse_chunked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i32, i64, i32 }

@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"http chunked byte: %02Xd s:%d\00", align 1
@NGX_MAX_OFF_T_VALUE = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_parse_chunked(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 5, i32* %12, align 4
  br label %24

24:                                               ; preds = %23, %18, %3
  %25 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  br label %29

29:                                               ; preds = %223, %24
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ult i8* %30, %33
  br i1 %34, label %35, label %226

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %9, align 1
  %38 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8, i8* %9, align 1
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @ngx_log_debug2(i32 %38, i32 %43, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8 signext %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %222 [
    i32 0, label %48
    i32 1, label %84
    i32 2, label %159
    i32 3, label %165
    i32 4, label %171
    i32 5, label %173
    i32 6, label %179
    i32 7, label %185
    i32 8, label %191
    i32 9, label %197
    i32 10, label %204
    i32 11, label %210
    i32 12, label %216
  ]

48:                                               ; preds = %35
  %49 = load i8, i8* %9, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 48
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i8, i8* %9, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 57
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  store i32 1, i32* %12, align 4
  %57 = load i8, i8* %9, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 48
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %222

63:                                               ; preds = %52, %48
  %64 = load i8, i8* %9, align 1
  %65 = sext i8 %64 to i32
  %66 = or i32 %65, 32
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %10, align 1
  %68 = load i8, i8* %10, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sge i32 %69, 97
  br i1 %70, label %71, label %83

71:                                               ; preds = %63
  %72 = load i8, i8* %10, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sle i32 %73, 102
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  store i32 1, i32* %12, align 4
  %76 = load i8, i8* %10, align 1
  %77 = sext i8 %76 to i32
  %78 = sub nsw i32 %77, 97
  %79 = add nsw i32 %78, 10
  %80 = sext i32 %79 to i64
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %222

83:                                               ; preds = %71, %63
  br label %303

84:                                               ; preds = %35
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %89 = sdiv i32 %88, 16
  %90 = sext i32 %89 to i64
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %303

93:                                               ; preds = %84
  %94 = load i8, i8* %9, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp sge i32 %95, 48
  br i1 %96, label %97, label %113

97:                                               ; preds = %93
  %98 = load i8, i8* %9, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sle i32 %99, 57
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = mul nsw i64 %104, 16
  %106 = load i8, i8* %9, align 1
  %107 = sext i8 %106 to i32
  %108 = sub nsw i32 %107, 48
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %105, %109
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  br label %222

113:                                              ; preds = %97, %93
  %114 = load i8, i8* %9, align 1
  %115 = sext i8 %114 to i32
  %116 = or i32 %115, 32
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %10, align 1
  %118 = load i8, i8* %10, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp sge i32 %119, 97
  br i1 %120, label %121, label %138

121:                                              ; preds = %113
  %122 = load i8, i8* %10, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp sle i32 %123, 102
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = mul nsw i64 %128, 16
  %130 = load i8, i8* %10, align 1
  %131 = sext i8 %130 to i32
  %132 = sub nsw i32 %131, 97
  %133 = add nsw i32 %132, 10
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %129, %134
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  br label %222

138:                                              ; preds = %121, %113
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = load i8, i8* %9, align 1
  %145 = sext i8 %144 to i32
  switch i32 %145, label %149 [
    i32 129, label %146
    i32 128, label %147
    i32 59, label %148
    i32 32, label %148
    i32 9, label %148
  ]

146:                                              ; preds = %143
  store i32 8, i32* %12, align 4
  br label %150

147:                                              ; preds = %143
  store i32 9, i32* %12, align 4
  br label %150

148:                                              ; preds = %143, %143, %143
  store i32 7, i32* %12, align 4
  br label %150

149:                                              ; preds = %143
  br label %303

150:                                              ; preds = %148, %147, %146
  br label %222

151:                                              ; preds = %138
  %152 = load i8, i8* %9, align 1
  %153 = sext i8 %152 to i32
  switch i32 %153, label %157 [
    i32 129, label %154
    i32 128, label %155
    i32 59, label %156
    i32 32, label %156
    i32 9, label %156
  ]

154:                                              ; preds = %151
  store i32 3, i32* %12, align 4
  br label %158

155:                                              ; preds = %151
  store i32 4, i32* %12, align 4
  br label %158

156:                                              ; preds = %151, %151, %151
  store i32 2, i32* %12, align 4
  br label %158

157:                                              ; preds = %151
  br label %303

158:                                              ; preds = %156, %155, %154
  br label %222

159:                                              ; preds = %35
  %160 = load i8, i8* %9, align 1
  %161 = sext i8 %160 to i32
  switch i32 %161, label %164 [
    i32 129, label %162
    i32 128, label %163
  ]

162:                                              ; preds = %159
  store i32 3, i32* %12, align 4
  br label %164

163:                                              ; preds = %159
  store i32 4, i32* %12, align 4
  br label %164

164:                                              ; preds = %163, %159, %162
  br label %222

165:                                              ; preds = %35
  %166 = load i8, i8* %9, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 128
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i32 4, i32* %12, align 4
  br label %222

170:                                              ; preds = %165
  br label %303

171:                                              ; preds = %35
  %172 = load i32, i32* @NGX_OK, align 4
  store i32 %172, i32* %11, align 4
  br label %227

173:                                              ; preds = %35
  %174 = load i8, i8* %9, align 1
  %175 = sext i8 %174 to i32
  switch i32 %175, label %178 [
    i32 129, label %176
    i32 128, label %177
  ]

176:                                              ; preds = %173
  store i32 6, i32* %12, align 4
  br label %178

177:                                              ; preds = %173
  store i32 0, i32* %12, align 4
  br label %178

178:                                              ; preds = %177, %173, %176
  br label %222

179:                                              ; preds = %35
  %180 = load i8, i8* %9, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 128
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  store i32 0, i32* %12, align 4
  br label %222

184:                                              ; preds = %179
  br label %303

185:                                              ; preds = %35
  %186 = load i8, i8* %9, align 1
  %187 = sext i8 %186 to i32
  switch i32 %187, label %190 [
    i32 129, label %188
    i32 128, label %189
  ]

188:                                              ; preds = %185
  store i32 8, i32* %12, align 4
  br label %190

189:                                              ; preds = %185
  store i32 9, i32* %12, align 4
  br label %190

190:                                              ; preds = %189, %185, %188
  br label %222

191:                                              ; preds = %35
  %192 = load i8, i8* %9, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 128
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  store i32 9, i32* %12, align 4
  br label %222

196:                                              ; preds = %191
  br label %303

197:                                              ; preds = %35
  %198 = load i8, i8* %9, align 1
  %199 = sext i8 %198 to i32
  switch i32 %199, label %202 [
    i32 129, label %200
    i32 128, label %201
  ]

200:                                              ; preds = %197
  store i32 10, i32* %12, align 4
  br label %203

201:                                              ; preds = %197
  br label %295

202:                                              ; preds = %197
  store i32 11, i32* %12, align 4
  br label %203

203:                                              ; preds = %202, %200
  br label %222

204:                                              ; preds = %35
  %205 = load i8, i8* %9, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 128
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %295

209:                                              ; preds = %204
  br label %303

210:                                              ; preds = %35
  %211 = load i8, i8* %9, align 1
  %212 = sext i8 %211 to i32
  switch i32 %212, label %215 [
    i32 129, label %213
    i32 128, label %214
  ]

213:                                              ; preds = %210
  store i32 12, i32* %12, align 4
  br label %215

214:                                              ; preds = %210
  store i32 9, i32* %12, align 4
  br label %215

215:                                              ; preds = %214, %210, %213
  br label %222

216:                                              ; preds = %35
  %217 = load i8, i8* %9, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 128
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  store i32 9, i32* %12, align 4
  br label %222

221:                                              ; preds = %216
  br label %303

222:                                              ; preds = %35, %220, %215, %203, %195, %190, %183, %178, %169, %164, %158, %150, %125, %101, %75, %56
  br label %223

223:                                              ; preds = %222
  %224 = load i8*, i8** %8, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %8, align 8
  br label %29

226:                                              ; preds = %29
  br label %227

227:                                              ; preds = %226, %171
  %228 = load i32, i32* %12, align 4
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  %231 = load i8*, i8** %8, align 8
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  store i8* %231, i8** %233, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %238 = sub nsw i32 %237, 5
  %239 = sext i32 %238 to i64
  %240 = icmp sgt i64 %236, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %227
  br label %303

242:                                              ; preds = %227
  %243 = load i32, i32* %12, align 4
  switch i32 %243, label %293 [
    i32 0, label %244
    i32 1, label %247
    i32 2, label %264
    i32 3, label %264
    i32 4, label %273
    i32 5, label %281
    i32 6, label %281
    i32 7, label %284
    i32 8, label %284
    i32 9, label %287
    i32 10, label %287
    i32 11, label %290
    i32 12, label %290
  ]

244:                                              ; preds = %242
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 2
  store i32 3, i32* %246, align 8
  br label %293

247:                                              ; preds = %242
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %247
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %255, 4
  br label %258

257:                                              ; preds = %247
  br label %258

258:                                              ; preds = %257, %252
  %259 = phi i64 [ %256, %252 ], [ 1, %257 ]
  %260 = add nsw i64 1, %259
  %261 = trunc i64 %260 to i32
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 2
  store i32 %261, i32* %263, align 8
  br label %293

264:                                              ; preds = %242, %242
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 1, %267
  %269 = add nsw i64 %268, 4
  %270 = trunc i64 %269 to i32
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 2
  store i32 %270, i32* %272, align 8
  br label %293

273:                                              ; preds = %242
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = add nsw i64 %276, 4
  %278 = trunc i64 %277 to i32
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 8
  br label %293

281:                                              ; preds = %242, %242
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 2
  store i32 4, i32* %283, align 8
  br label %293

284:                                              ; preds = %242, %242
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 2
  store i32 2, i32* %286, align 8
  br label %293

287:                                              ; preds = %242, %242
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 2
  store i32 1, i32* %289, align 8
  br label %293

290:                                              ; preds = %242, %242
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 2
  store i32 2, i32* %292, align 8
  br label %293

293:                                              ; preds = %242, %290, %287, %284, %281, %273, %264, %258, %244
  %294 = load i32, i32* %11, align 4
  store i32 %294, i32* %4, align 4
  br label %305

295:                                              ; preds = %208, %201
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 0
  store i32 0, i32* %297, align 8
  %298 = load i8*, i8** %8, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 1
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 0
  store i8* %299, i8** %301, align 8
  %302 = load i32, i32* @NGX_DONE, align 4
  store i32 %302, i32* %4, align 4
  br label %305

303:                                              ; preds = %241, %221, %209, %196, %184, %170, %157, %149, %92, %83
  %304 = load i32, i32* @NGX_ERROR, align 4
  store i32 %304, i32* %4, align 4
  br label %305

305:                                              ; preds = %303, %295, %293
  %306 = load i32, i32* %4, align 4
  ret i32 %306
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

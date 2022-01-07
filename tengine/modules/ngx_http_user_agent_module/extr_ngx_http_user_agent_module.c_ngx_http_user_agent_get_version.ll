; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_user_agent_module/extr_ngx_http_user_agent_module.c_ngx_http_user_agent_get_version.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_user_agent_module/extr_ngx_http_user_agent_module.c_ngx_http_user_agent_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64, i8* }

@NGX_HTTP_UA_MATCH_EXACT = common dso_local global i8 0, align 1
@NGX_HTTP_UA_MAX_INT64 = common dso_local global i32 0, align 4
@NGX_HTTP_UA_MIN_VERSION_VALUE = common dso_local global i32 0, align 4
@NGX_HTTP_UA_MAX_VERSION_VALUE = common dso_local global i32 0, align 4
@NGX_HTTP_UA_MATCH_LE = common dso_local global i8 0, align 1
@NGX_HTTP_UA_MATCH_GE = common dso_local global i8 0, align 1
@NGX_HTTP_UA_MATCH_INTERVAL = common dso_local global i8 0, align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"too many versions\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"invalid version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_11__*, %struct.TYPE_9__*)* @ngx_http_user_agent_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @ngx_http_user_agent_get_version(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %13 = load i8, i8* @NGX_HTTP_UA_MATCH_EXACT, align 1
  store i8 %13, i8* %6, align 1
  %14 = load i32, i32* @NGX_HTTP_UA_MAX_INT64, align 4
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %11, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_10__* @ngx_palloc(i32 %17, i32 16)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %12, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %20 = icmp eq %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %277

22:                                               ; preds = %2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @ngx_pcalloc(i32 %25, i32 4)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %277

34:                                               ; preds = %22
  %35 = load i32, i32* @NGX_HTTP_UA_MIN_VERSION_VALUE, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @NGX_HTTP_UA_MAX_VERSION_VALUE, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  store i64 0, i64* %10, align 8
  br label %41

41:                                               ; preds = %222, %34
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %225

47:                                               ; preds = %41
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sge i32 %54, 48
  br i1 %55, label %56, label %77

56:                                               ; preds = %47
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sle i32 %63, 57
  br i1 %64, label %65, label %77

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 %66, 10
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %67, %74
  %76 = sub nsw i32 %75, 48
  store i32 %76, i32* %7, align 4
  br label %222

77:                                               ; preds = %56, %47
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 46
  br i1 %85, label %86, label %94

86:                                               ; preds = %77
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %9, align 4
  store i32 0, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sdiv i32 %92, 10000
  store i32 %93, i32* %8, align 4
  br label %221

94:                                               ; preds = %77
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* @NGX_HTTP_UA_MATCH_LE, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %94
  %106 = load i64, i64* %10, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub i64 %109, 1
  %111 = icmp ne i64 %106, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %273

113:                                              ; preds = %105
  %114 = load i8, i8* @NGX_HTTP_UA_MATCH_LE, align 1
  store i8 %114, i8* %6, align 1
  br label %220

115:                                              ; preds = %94
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = load i8, i8* @NGX_HTTP_UA_MATCH_EXACT, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %115
  %127 = load i64, i64* %10, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = sub i64 %130, 1
  %132 = icmp ne i64 %127, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %273

134:                                              ; preds = %126
  br label %219

135:                                              ; preds = %115
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8, i8* @NGX_HTTP_UA_MATCH_GE, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %135
  %147 = load i64, i64* %10, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub i64 %150, 1
  %152 = icmp ne i64 %147, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %273

154:                                              ; preds = %146
  %155 = load i8, i8* @NGX_HTTP_UA_MATCH_GE, align 1
  store i8 %155, i8* %6, align 1
  br label %218

156:                                              ; preds = %135
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = load i64, i64* %10, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = load i8, i8* @NGX_HTTP_UA_MATCH_INTERVAL, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %216

167:                                              ; preds = %156
  %168 = load i8, i8* @NGX_HTTP_UA_MATCH_INTERVAL, align 1
  store i8 %168, i8* %6, align 1
  %169 = load i64, i64* %11, align 8
  %170 = icmp uge i64 %169, 2
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i32, i32* @NGX_LOG_EMERG, align 4
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %174 = call i32 @ngx_conf_log_error(i32 %172, %struct.TYPE_11__* %173, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %277

175:                                              ; preds = %167
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %8, align 4
  %178 = mul nsw i32 %176, %177
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i64, i64* %11, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %11, align 8
  store i32 0, i32* %7, align 4
  %186 = load i32, i32* @NGX_HTTP_UA_MAX_INT64, align 4
  store i32 %186, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %187 = load i64, i64* %10, align 8
  %188 = add i64 %187, 1
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp uge i64 %188, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %175
  br label %273

194:                                              ; preds = %175
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = load i64, i64* %10, align 8
  %199 = add i64 %198, 1
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp sge i32 %202, 48
  br i1 %203, label %204, label %214

204:                                              ; preds = %194
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = load i64, i64* %10, align 8
  %209 = add i64 %208, 1
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp sle i32 %212, 57
  br i1 %213, label %215, label %214

214:                                              ; preds = %204, %194
  br label %273

215:                                              ; preds = %204
  br label %217

216:                                              ; preds = %156
  br label %273

217:                                              ; preds = %215
  br label %218

218:                                              ; preds = %217, %154
  br label %219

219:                                              ; preds = %218, %134
  br label %220

220:                                              ; preds = %219, %113
  br label %221

221:                                              ; preds = %220, %86
  br label %222

222:                                              ; preds = %221, %65
  %223 = load i64, i64* %10, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %10, align 8
  br label %41

225:                                              ; preds = %41
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* %8, align 4
  %228 = mul nsw i32 %226, %227
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %9, align 4
  %231 = load i8, i8* %6, align 1
  %232 = sext i8 %231 to i32
  %233 = load i8, i8* @NGX_HTTP_UA_MATCH_LE, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %242, label %236

236:                                              ; preds = %225
  %237 = load i8, i8* %6, align 1
  %238 = sext i8 %237 to i32
  %239 = load i8, i8* @NGX_HTTP_UA_MATCH_INTERVAL, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %238, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %236, %225
  %243 = load i32, i32* %9, align 4
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  br label %271

246:                                              ; preds = %236
  %247 = load i8, i8* %6, align 1
  %248 = sext i8 %247 to i32
  %249 = load i8, i8* @NGX_HTTP_UA_MATCH_GE, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %248, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %246
  %253 = load i32, i32* %9, align 4
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  br label %270

256:                                              ; preds = %246
  %257 = load i8, i8* %6, align 1
  %258 = sext i8 %257 to i32
  %259 = load i8, i8* @NGX_HTTP_UA_MATCH_EXACT, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %258, %260
  br i1 %261, label %262, label %269

262:                                              ; preds = %256
  %263 = load i32, i32* %9, align 4
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load i32, i32* %9, align 4
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 1
  store i32 %266, i32* %268, align 4
  br label %269

269:                                              ; preds = %262, %256
  br label %270

270:                                              ; preds = %269, %252
  br label %271

271:                                              ; preds = %270, %242
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %272, %struct.TYPE_10__** %3, align 8
  br label %277

273:                                              ; preds = %216, %214, %193, %153, %133, %112
  %274 = load i32, i32* @NGX_LOG_EMERG, align 4
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %276 = call i32 @ngx_conf_log_error(i32 %274, %struct.TYPE_11__* %275, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %277

277:                                              ; preds = %273, %271, %171, %33, %21
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %278
}

declare dso_local %struct.TYPE_10__* @ngx_palloc(i32, i32) #1

declare dso_local i32* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_11__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

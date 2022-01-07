; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_parse.c_ngx_http_parse_unsafe_uri.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_parse.c_ngx_http_parse_unsafe_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i8* }

@usual = common dso_local global i32* null, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"escaped URI: \22%V\22\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unescaped URI: \22%V\22\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_LOG_UNSAFE = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unsafe URI \22%V\22 was detected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_parse_unsafe_uri(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %14, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %11, align 8
  store i32 0, i32* %15, align 4
  %22 = load i64, i64* %14, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load i8*, i8** %11, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 63
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %4
  br label %269

31:                                               ; preds = %24
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 46
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load i64, i64* %14, align 8
  %39 = icmp ugt i64 %38, 1
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 46
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load i64, i64* %14, align 8
  %48 = icmp eq i64 %47, 2
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @ngx_path_separator(i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %46
  br label %269

56:                                               ; preds = %49, %40, %37, %31
  br label %57

57:                                               ; preds = %136, %56
  %58 = load i64, i64* %14, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %139

60:                                               ; preds = %57
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %11, align 8
  %63 = load i8, i8* %61, align 1
  store i8 %63, i8* %10, align 1
  %64 = load i8, i8* %10, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 37
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 1, i32* %15, align 4
  br label %136

68:                                               ; preds = %60
  %69 = load i32*, i32** @usual, align 8
  %70 = load i8, i8* %10, align 1
  %71 = sext i8 %70 to i32
  %72 = ashr i32 %71, 5
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i8, i8* %10, align 1
  %77 = sext i8 %76 to i32
  %78 = and i32 %77, 31
  %79 = shl i32 1, %78
  %80 = and i32 %75, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  br label %136

83:                                               ; preds = %68
  %84 = load i8, i8* %10, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 63
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i64, i64* %14, align 8
  %89 = sub i64 %88, 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load i64, i64* %14, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %98, %95
  store i64 %99, i64* %97, align 8
  br label %139

100:                                              ; preds = %83
  %101 = load i8, i8* %10, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %269

105:                                              ; preds = %100
  %106 = load i8, i8* %10, align 1
  %107 = call i64 @ngx_path_separator(i8 signext %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %135

109:                                              ; preds = %105
  %110 = load i64, i64* %14, align 8
  %111 = icmp ugt i64 %110, 2
  br i1 %111, label %112, label %135

112:                                              ; preds = %109
  %113 = load i8*, i8** %11, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 46
  br i1 %117, label %118, label %134

118:                                              ; preds = %112
  %119 = load i8*, i8** %11, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 46
  br i1 %123, label %124, label %134

124:                                              ; preds = %118
  %125 = load i64, i64* %14, align 8
  %126 = icmp eq i64 %125, 3
  br i1 %126, label %133, label %127

127:                                              ; preds = %124
  %128 = load i8*, i8** %11, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = call i64 @ngx_path_separator(i8 signext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127, %124
  br label %269

134:                                              ; preds = %127, %118, %112
  br label %135

135:                                              ; preds = %134, %109, %105
  br label %136

136:                                              ; preds = %135, %82, %67
  %137 = load i64, i64* %14, align 8
  %138 = add i64 %137, -1
  store i64 %138, i64* %14, align 8
  br label %57

139:                                              ; preds = %87, %57
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %267

142:                                              ; preds = %139
  %143 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %150 = call i32 @ngx_log_debug1(i32 %143, i32 %148, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %149)
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %12, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i8* @ngx_pnalloc(i32 %156, i64 %159)
  store i8* %160, i8** %13, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %142
  %164 = load i32, i32* @NGX_ERROR, align 4
  store i32 %164, i32* %5, align 4
  br label %286

165:                                              ; preds = %142
  %166 = load i8*, i8** %13, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @ngx_unescape_uri(i8** %13, i8** %12, i64 %171, i32 0)
  %173 = load i8*, i8** %13, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = ptrtoint i8* %173 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  %182 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %189 = call i32 @ngx_log_debug1(i32 %182, i32 %187, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %188)
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %14, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %11, align 8
  %196 = load i8*, i8** %11, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 46
  br i1 %200, label %201, label %220

201:                                              ; preds = %165
  %202 = load i64, i64* %14, align 8
  %203 = icmp ugt i64 %202, 1
  br i1 %203, label %204, label %220

204:                                              ; preds = %201
  %205 = load i8*, i8** %11, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 46
  br i1 %209, label %210, label %220

210:                                              ; preds = %204
  %211 = load i64, i64* %14, align 8
  %212 = icmp eq i64 %211, 2
  br i1 %212, label %219, label %213

213:                                              ; preds = %210
  %214 = load i8*, i8** %11, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 2
  %216 = load i8, i8* %215, align 1
  %217 = call i64 @ngx_path_separator(i8 signext %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %213, %210
  br label %269

220:                                              ; preds = %213, %204, %201, %165
  br label %221

221:                                              ; preds = %263, %220
  %222 = load i64, i64* %14, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %266

224:                                              ; preds = %221
  %225 = load i8*, i8** %11, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %11, align 8
  %227 = load i8, i8* %225, align 1
  store i8 %227, i8* %10, align 1
  %228 = load i8, i8* %10, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  br label %269

232:                                              ; preds = %224
  %233 = load i8, i8* %10, align 1
  %234 = call i64 @ngx_path_separator(i8 signext %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %262

236:                                              ; preds = %232
  %237 = load i64, i64* %14, align 8
  %238 = icmp ugt i64 %237, 2
  br i1 %238, label %239, label %262

239:                                              ; preds = %236
  %240 = load i8*, i8** %11, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 0
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 46
  br i1 %244, label %245, label %261

245:                                              ; preds = %239
  %246 = load i8*, i8** %11, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 1
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 46
  br i1 %250, label %251, label %261

251:                                              ; preds = %245
  %252 = load i64, i64* %14, align 8
  %253 = icmp eq i64 %252, 3
  br i1 %253, label %260, label %254

254:                                              ; preds = %251
  %255 = load i8*, i8** %11, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 2
  %257 = load i8, i8* %256, align 1
  %258 = call i64 @ngx_path_separator(i8 signext %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %254, %251
  br label %269

261:                                              ; preds = %254, %245, %239
  br label %262

262:                                              ; preds = %261, %236, %232
  br label %263

263:                                              ; preds = %262
  %264 = load i64, i64* %14, align 8
  %265 = add i64 %264, -1
  store i64 %265, i64* %14, align 8
  br label %221

266:                                              ; preds = %221
  br label %267

267:                                              ; preds = %266, %139
  %268 = load i32, i32* @NGX_OK, align 4
  store i32 %268, i32* %5, align 4
  br label %286

269:                                              ; preds = %260, %231, %219, %133, %104, %55, %30
  %270 = load i32*, i32** %9, align 8
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @NGX_HTTP_LOG_UNSAFE, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %269
  %276 = load i32, i32* @NGX_LOG_ERR, align 4
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %283 = call i32 @ngx_log_error(i32 %276, i32 %281, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %282)
  br label %284

284:                                              ; preds = %275, %269
  %285 = load i32, i32* @NGX_ERROR, align 4
  store i32 %285, i32* %5, align 4
  br label %286

286:                                              ; preds = %284, %267, %163
  %287 = load i32, i32* %5, align 4
  ret i32 %287
}

declare dso_local i64 @ngx_path_separator(i8 signext) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_10__*) #1

declare dso_local i8* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_unescape_uri(i8**, i8**, i64, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

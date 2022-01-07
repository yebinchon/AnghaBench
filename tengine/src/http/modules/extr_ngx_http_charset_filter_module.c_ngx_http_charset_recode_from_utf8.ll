; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_recode_from_utf8.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_recode_from_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32*, i32*, i32, i32*, %struct.TYPE_20__*, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_18__ = type { i64, i32*, i64 }

@NGX_HTML_ENTITY_LEN = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"http charset utf saved: %z\00", align 1
@NGX_UTF_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"http charset invalid utf 0\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"http charset invalid utf 1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&#%uD;\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"http charset invalid utf 2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_17__*, %struct.TYPE_20__*, %struct.TYPE_18__*)* @ngx_http_charset_recode_from_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @ngx_http_charset_recode_from_utf8(%struct.TYPE_17__* %0, %struct.TYPE_20__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca %struct.TYPE_19__**, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %12, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %186

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %170, %29
  %31 = load i32*, i32** %12, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ult i32* %31, %34
  br i1 %35, label %36, label %173

36:                                               ; preds = %30
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 128
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %170

41:                                               ; preds = %36
  %42 = load i32*, i32** %12, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = ptrtoint i32* %42 to i64
  %47 = ptrtoint i32* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 4
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ugt i64 %50, 512
  br i1 %51, label %52, label %124

52:                                               ; preds = %41
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %55 = call %struct.TYPE_19__* @ngx_http_charset_get_buf(%struct.TYPE_17__* %53, %struct.TYPE_18__* %54)
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %19, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %57 = icmp eq %struct.TYPE_19__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %560

59:                                               ; preds = %52
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  store %struct.TYPE_20__* %62, %struct.TYPE_20__** %17, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 8
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  store i32* %85, i32** %87, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  store %struct.TYPE_20__* %91, %struct.TYPE_20__** %93, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %95, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = ptrtoint i32* %98 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  store i64 %103, i64* %9, align 8
  %104 = load i32*, i32** %12, align 8
  store i32* %104, i32** %14, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @ngx_utf8_decode(i32** %14, i64 %105)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp eq i32 %107, -2
  br i1 %108, label %109, label %123

109:                                              ; preds = %59
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @ngx_memcpy(i32* %112, i32* %113, i64 %114)
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 4
  store %struct.TYPE_20__* %119, %struct.TYPE_20__** %121, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %122, %struct.TYPE_19__** %4, align 8
  br label %560

123:                                              ; preds = %59
  br label %138

124:                                              ; preds = %41
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %19, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 %125
  %130 = load i32*, i32** %12, align 8
  %131 = ptrtoint i32* %129 to i64
  %132 = ptrtoint i32* %130 to i64
  %133 = sub i64 %131, %132
  %134 = sdiv exact i64 %133, 4
  store i64 %134, i64* %9, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  store i32* %137, i32** %12, align 8
  br label %138

138:                                              ; preds = %124, %123
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* @NGX_HTML_ENTITY_LEN, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i64, i64* @NGX_HTML_ENTITY_LEN, align 8
  %144 = load i64, i64* %9, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %9, align 8
  br label %146

146:                                              ; preds = %142, %138
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %149 = load i64, i64* %9, align 8
  %150 = call %struct.TYPE_19__* @ngx_http_charset_get_buffer(%struct.TYPE_17__* %147, %struct.TYPE_18__* %148, i64 %149)
  store %struct.TYPE_19__* %150, %struct.TYPE_19__** %20, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %152 = icmp eq %struct.TYPE_19__* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %560

154:                                              ; preds = %146
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %156 = icmp ne %struct.TYPE_19__* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  store %struct.TYPE_19__* %158, %struct.TYPE_19__** %160, align 8
  br label %163

161:                                              ; preds = %154
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %162, %struct.TYPE_19__** %19, align 8
  br label %163

163:                                              ; preds = %161, %157
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %165, align 8
  store %struct.TYPE_20__* %166, %struct.TYPE_20__** %17, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  store i32* %169, i32** %13, align 8
  br label %392

170:                                              ; preds = %40
  %171 = load i32*, i32** %12, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %12, align 8
  br label %30

173:                                              ; preds = %30
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %175 = call %struct.TYPE_19__* @ngx_alloc_chain_link(%struct.TYPE_17__* %174)
  store %struct.TYPE_19__* %175, %struct.TYPE_19__** %19, align 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %177 = icmp eq %struct.TYPE_19__* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %560

179:                                              ; preds = %173
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  store %struct.TYPE_20__* %180, %struct.TYPE_20__** %182, align 8
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %184, align 8
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %185, %struct.TYPE_19__** %4, align 8
  br label %560

186:                                              ; preds = %3
  %187 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @ngx_log_debug1(i32 %187, i32 %190, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %193)
  %195 = load i32*, i32** %12, align 8
  store i32* %195, i32** %11, align 8
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %18, align 8
  br label %199

199:                                              ; preds = %219, %186
  %200 = load i64, i64* %18, align 8
  %201 = load i64, i64* @NGX_UTF_LEN, align 8
  %202 = icmp ult i64 %200, %201
  br i1 %202, label %203, label %222

203:                                              ; preds = %199
  %204 = load i32*, i32** %11, align 8
  %205 = getelementptr inbounds i32, i32* %204, i32 1
  store i32* %205, i32** %11, align 8
  %206 = load i32, i32* %204, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = load i64, i64* %18, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  store i32 %206, i32* %211, align 4
  %212 = load i32*, i32** %11, align 8
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = icmp eq i32* %212, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %203
  br label %222

218:                                              ; preds = %203
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %18, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %18, align 8
  br label %199

222:                                              ; preds = %217, %199
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  store i32* %225, i32** %14, align 8
  %226 = load i64, i64* %18, align 8
  %227 = call i32 @ngx_utf8_decode(i32** %14, i64 %226)
  store i32 %227, i32* %16, align 4
  store i32 0, i32* %10, align 4
  %228 = load i32, i32* %16, align 4
  %229 = icmp slt i32 %228, 65536
  br i1 %229, label %230, label %251

230:                                              ; preds = %222
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = inttoptr i64 %233 to i32**
  store i32** %234, i32*** %15, align 8
  %235 = load i32**, i32*** %15, align 8
  %236 = load i32, i32* %16, align 4
  %237 = ashr i32 %236, 8
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32*, i32** %235, i64 %238
  %240 = load i32*, i32** %239, align 8
  store i32* %240, i32** %11, align 8
  %241 = load i32*, i32** %11, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %250

243:                                              ; preds = %230
  %244 = load i32*, i32** %11, align 8
  %245 = load i32, i32* %16, align 4
  %246 = and i32 %245, 255
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %10, align 4
  br label %250

250:                                              ; preds = %243, %230
  br label %302

251:                                              ; preds = %222
  %252 = load i32, i32* %16, align 4
  %253 = icmp eq i32 %252, -2
  br i1 %253, label %254, label %301

254:                                              ; preds = %251
  %255 = load i64, i64* %18, align 8
  %256 = load i64, i64* @NGX_UTF_LEN, align 8
  %257 = icmp ult i64 %255, %256
  br i1 %257, label %258, label %300

258:                                              ; preds = %254
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %261 = call %struct.TYPE_19__* @ngx_http_charset_get_buf(%struct.TYPE_17__* %259, %struct.TYPE_18__* %260)
  store %struct.TYPE_19__* %261, %struct.TYPE_19__** %19, align 8
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %263 = icmp eq %struct.TYPE_19__* %262, null
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %560

265:                                              ; preds = %258
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %267, align 8
  store %struct.TYPE_20__* %268, %struct.TYPE_20__** %17, align 8
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 0
  store i32* %271, i32** %273, align 8
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 1
  store i32* %276, i32** %278, align 8
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 2
  store i32 1, i32* %280, align 8
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 4
  store %struct.TYPE_20__* %281, %struct.TYPE_20__** %283, align 8
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  %291 = load i32*, i32** %12, align 8
  %292 = load i64, i64* %18, align 8
  %293 = call i32 @ngx_memcpy(i32* %290, i32* %291, i64 %292)
  %294 = load i64, i64* %18, align 8
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = add i64 %297, %294
  store i64 %298, i64* %296, align 8
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %299, %struct.TYPE_19__** %4, align 8
  br label %560

300:                                              ; preds = %254
  br label %301

301:                                              ; preds = %300, %251
  br label %302

302:                                              ; preds = %301, %250
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = ptrtoint i32* %305 to i64
  %310 = ptrtoint i32* %308 to i64
  %311 = sub i64 %309, %310
  %312 = sdiv exact i64 %311, 4
  store i64 %312, i64* %9, align 8
  %313 = load i64, i64* %9, align 8
  %314 = load i64, i64* @NGX_HTML_ENTITY_LEN, align 8
  %315 = icmp ult i64 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %302
  %317 = load i64, i64* @NGX_HTML_ENTITY_LEN, align 8
  %318 = load i64, i64* %9, align 8
  %319 = add i64 %318, %317
  store i64 %319, i64* %9, align 8
  br label %320

320:                                              ; preds = %316, %302
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %323 = load i64, i64* %9, align 8
  %324 = call %struct.TYPE_19__* @ngx_http_charset_get_buffer(%struct.TYPE_17__* %321, %struct.TYPE_18__* %322, i64 %323)
  store %struct.TYPE_19__* %324, %struct.TYPE_19__** %20, align 8
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %326 = icmp eq %struct.TYPE_19__* %325, null
  br i1 %326, label %327, label %328

327:                                              ; preds = %320
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %560

328:                                              ; preds = %320
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %329, %struct.TYPE_19__** %19, align 8
  %330 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_20__*, %struct.TYPE_20__** %331, align 8
  store %struct.TYPE_20__* %332, %struct.TYPE_20__** %17, align 8
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  store i32* %335, i32** %13, align 8
  %336 = load i32, i32* %10, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %328
  %339 = load i32, i32* %10, align 4
  %340 = load i32*, i32** %13, align 8
  %341 = getelementptr inbounds i32, i32* %340, i32 1
  store i32* %341, i32** %13, align 8
  store i32 %339, i32* %340, align 4
  br label %375

342:                                              ; preds = %328
  %343 = load i32, i32* %16, align 4
  %344 = icmp eq i32 %343, -2
  br i1 %344, label %345, label %358

345:                                              ; preds = %342
  %346 = load i32*, i32** %13, align 8
  %347 = getelementptr inbounds i32, i32* %346, i32 1
  store i32* %347, i32** %13, align 8
  store i32 63, i32* %346, align 4
  %348 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %349 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @ngx_log_debug0(i32 %348, i32 %351, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 1
  %355 = load i32*, i32** %354, align 8
  %356 = load i64, i64* @NGX_UTF_LEN, align 8
  %357 = getelementptr inbounds i32, i32* %355, i64 %356
  store i32* %357, i32** %14, align 8
  br label %374

358:                                              ; preds = %342
  %359 = load i32, i32* %16, align 4
  %360 = icmp sgt i32 %359, 1114111
  br i1 %360, label %361, label %369

361:                                              ; preds = %358
  %362 = load i32*, i32** %13, align 8
  %363 = getelementptr inbounds i32, i32* %362, i32 1
  store i32* %363, i32** %13, align 8
  store i32 63, i32* %362, align 4
  %364 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %365 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @ngx_log_debug0(i32 %364, i32 %367, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %373

369:                                              ; preds = %358
  %370 = load i32*, i32** %13, align 8
  %371 = load i32, i32* %16, align 4
  %372 = call i32* @ngx_sprintf(i32* %370, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %371)
  store i32* %372, i32** %13, align 8
  br label %373

373:                                              ; preds = %369, %361
  br label %374

374:                                              ; preds = %373, %345
  br label %375

375:                                              ; preds = %374, %338
  %376 = load i32*, i32** %14, align 8
  %377 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %377, i32 0, i32 1
  %379 = load i32*, i32** %378, align 8
  %380 = ptrtoint i32* %376 to i64
  %381 = ptrtoint i32* %379 to i64
  %382 = sub i64 %380, %381
  %383 = sdiv exact i64 %382, 4
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = sub i64 %383, %386
  %388 = load i32*, i32** %12, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 %387
  store i32* %389, i32** %12, align 8
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 0
  store i64 0, i64* %391, align 8
  br label %392

392:                                              ; preds = %375, %163
  %393 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %393, i32 0, i32 1
  store %struct.TYPE_19__** %394, %struct.TYPE_19__*** %21, align 8
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = inttoptr i64 %397 to i32**
  store i32** %398, i32*** %15, align 8
  br label %399

399:                                              ; preds = %533, %525, %494, %489, %452, %392
  %400 = load i32*, i32** %12, align 8
  %401 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %401, i32 0, i32 1
  %403 = load i32*, i32** %402, align 8
  %404 = icmp ult i32* %400, %403
  br i1 %404, label %405, label %537

405:                                              ; preds = %399
  %406 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %407 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %406, i32 0, i32 3
  %408 = load i32*, i32** %407, align 8
  %409 = load i32*, i32** %13, align 8
  %410 = ptrtoint i32* %408 to i64
  %411 = ptrtoint i32* %409 to i64
  %412 = sub i64 %410, %411
  %413 = sdiv exact i64 %412, 4
  %414 = load i64, i64* @NGX_HTML_ENTITY_LEN, align 8
  %415 = icmp ult i64 %413, %414
  br i1 %415, label %416, label %448

416:                                              ; preds = %405
  %417 = load i32*, i32** %13, align 8
  %418 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %419 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %418, i32 0, i32 1
  store i32* %417, i32** %419, align 8
  %420 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %420, i32 0, i32 1
  %422 = load i32*, i32** %421, align 8
  %423 = load i32*, i32** %12, align 8
  %424 = ptrtoint i32* %422 to i64
  %425 = ptrtoint i32* %423 to i64
  %426 = sub i64 %424, %425
  %427 = sdiv exact i64 %426, 4
  %428 = load i64, i64* @NGX_HTML_ENTITY_LEN, align 8
  %429 = add i64 %427, %428
  store i64 %429, i64* %9, align 8
  %430 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %431 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %432 = load i64, i64* %9, align 8
  %433 = call %struct.TYPE_19__* @ngx_http_charset_get_buffer(%struct.TYPE_17__* %430, %struct.TYPE_18__* %431, i64 %432)
  store %struct.TYPE_19__* %433, %struct.TYPE_19__** %20, align 8
  %434 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %435 = icmp eq %struct.TYPE_19__* %434, null
  br i1 %435, label %436, label %437

436:                                              ; preds = %416
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %560

437:                                              ; preds = %416
  %438 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %439 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %21, align 8
  store %struct.TYPE_19__* %438, %struct.TYPE_19__** %439, align 8
  %440 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %441 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %440, i32 0, i32 1
  store %struct.TYPE_19__** %441, %struct.TYPE_19__*** %21, align 8
  %442 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %442, i32 0, i32 0
  %444 = load %struct.TYPE_20__*, %struct.TYPE_20__** %443, align 8
  store %struct.TYPE_20__* %444, %struct.TYPE_20__** %17, align 8
  %445 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %446 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %445, i32 0, i32 0
  %447 = load i32*, i32** %446, align 8
  store i32* %447, i32** %13, align 8
  br label %448

448:                                              ; preds = %437, %405
  %449 = load i32*, i32** %12, align 8
  %450 = load i32, i32* %449, align 4
  %451 = icmp slt i32 %450, 128
  br i1 %451, label %452, label %458

452:                                              ; preds = %448
  %453 = load i32*, i32** %12, align 8
  %454 = getelementptr inbounds i32, i32* %453, i32 1
  store i32* %454, i32** %12, align 8
  %455 = load i32, i32* %453, align 4
  %456 = load i32*, i32** %13, align 8
  %457 = getelementptr inbounds i32, i32* %456, i32 1
  store i32* %457, i32** %13, align 8
  store i32 %455, i32* %456, align 4
  br label %399

458:                                              ; preds = %448
  %459 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %460 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %459, i32 0, i32 1
  %461 = load i32*, i32** %460, align 8
  %462 = load i32*, i32** %12, align 8
  %463 = ptrtoint i32* %461 to i64
  %464 = ptrtoint i32* %462 to i64
  %465 = sub i64 %463, %464
  %466 = sdiv exact i64 %465, 4
  store i64 %466, i64* %8, align 8
  %467 = load i64, i64* %8, align 8
  %468 = call i32 @ngx_utf8_decode(i32** %12, i64 %467)
  store i32 %468, i32* %16, align 4
  %469 = load i32, i32* %16, align 4
  %470 = icmp slt i32 %469, 65536
  br i1 %470, label %471, label %498

471:                                              ; preds = %458
  %472 = load i32**, i32*** %15, align 8
  %473 = load i32, i32* %16, align 4
  %474 = ashr i32 %473, 8
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32*, i32** %472, i64 %475
  %477 = load i32*, i32** %476, align 8
  store i32* %477, i32** %11, align 8
  %478 = load i32*, i32** %11, align 8
  %479 = icmp ne i32* %478, null
  br i1 %479, label %480, label %494

480:                                              ; preds = %471
  %481 = load i32*, i32** %11, align 8
  %482 = load i32, i32* %16, align 4
  %483 = and i32 %482, 255
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %481, i64 %484
  %486 = load i32, i32* %485, align 4
  store i32 %486, i32* %10, align 4
  %487 = load i32, i32* %10, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %493

489:                                              ; preds = %480
  %490 = load i32, i32* %10, align 4
  %491 = load i32*, i32** %13, align 8
  %492 = getelementptr inbounds i32, i32* %491, i32 1
  store i32* %492, i32** %13, align 8
  store i32 %490, i32* %491, align 4
  br label %399

493:                                              ; preds = %480
  br label %494

494:                                              ; preds = %493, %471
  %495 = load i32*, i32** %13, align 8
  %496 = load i32, i32* %16, align 4
  %497 = call i32* @ngx_sprintf(i32* %495, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %496)
  store i32* %497, i32** %13, align 8
  br label %399

498:                                              ; preds = %458
  %499 = load i32, i32* %16, align 4
  %500 = icmp eq i32 %499, -2
  br i1 %500, label %501, label %522

501:                                              ; preds = %498
  %502 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %503 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %502, i32 0, i32 1
  %504 = load i32*, i32** %503, align 8
  %505 = load i32*, i32** %12, align 8
  %506 = load i64, i64* %8, align 8
  %507 = call i32 @ngx_memcpy(i32* %504, i32* %505, i64 %506)
  %508 = load i64, i64* %8, align 8
  %509 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %510 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %509, i32 0, i32 0
  store i64 %508, i64* %510, align 8
  %511 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %512 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %511, i32 0, i32 0
  %513 = load i32*, i32** %512, align 8
  %514 = load i32*, i32** %13, align 8
  %515 = icmp eq i32* %513, %514
  br i1 %515, label %516, label %521

516:                                              ; preds = %501
  %517 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %518 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %517, i32 0, i32 2
  store i32 1, i32* %518, align 8
  %519 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %520 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %519, i32 0, i32 8
  store i64 0, i64* %520, align 8
  br label %521

521:                                              ; preds = %516, %501
  br label %537

522:                                              ; preds = %498
  %523 = load i32, i32* %16, align 4
  %524 = icmp sgt i32 %523, 1114111
  br i1 %524, label %525, label %533

525:                                              ; preds = %522
  %526 = load i32*, i32** %13, align 8
  %527 = getelementptr inbounds i32, i32* %526, i32 1
  store i32* %527, i32** %13, align 8
  store i32 63, i32* %526, align 4
  %528 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %529 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %530 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 4
  %532 = call i32 @ngx_log_debug0(i32 %528, i32 %531, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %399

533:                                              ; preds = %522
  %534 = load i32*, i32** %13, align 8
  %535 = load i32, i32* %16, align 4
  %536 = call i32* @ngx_sprintf(i32* %534, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %535)
  store i32* %536, i32** %13, align 8
  br label %399

537:                                              ; preds = %521, %399
  %538 = load i32*, i32** %13, align 8
  %539 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %540 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %539, i32 0, i32 1
  store i32* %538, i32** %540, align 8
  %541 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %542 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %541, i32 0, i32 7
  %543 = load i32, i32* %542, align 8
  %544 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %545 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %544, i32 0, i32 7
  store i32 %543, i32* %545, align 8
  %546 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %547 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %546, i32 0, i32 6
  %548 = load i32, i32* %547, align 4
  %549 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %550 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %549, i32 0, i32 6
  store i32 %548, i32* %550, align 4
  %551 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %552 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %551, i32 0, i32 5
  %553 = load i32, i32* %552, align 8
  %554 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %555 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %554, i32 0, i32 5
  store i32 %553, i32* %555, align 8
  %556 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %557 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %558 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %557, i32 0, i32 4
  store %struct.TYPE_20__* %556, %struct.TYPE_20__** %558, align 8
  %559 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %559, %struct.TYPE_19__** %4, align 8
  br label %560

560:                                              ; preds = %537, %436, %327, %265, %264, %179, %178, %153, %109, %58
  %561 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %561
}

declare dso_local %struct.TYPE_19__* @ngx_http_charset_get_buf(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_utf8_decode(i32**, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #1

declare dso_local %struct.TYPE_19__* @ngx_http_charset_get_buffer(%struct.TYPE_17__*, %struct.TYPE_18__*, i64) #1

declare dso_local %struct.TYPE_19__* @ngx_alloc_chain_link(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32* @ngx_sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

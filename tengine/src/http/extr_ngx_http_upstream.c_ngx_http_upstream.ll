; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__*, i32, %struct.TYPE_24__*, %struct.TYPE_22__* }
%struct.TYPE_28__ = type { i8**, %struct.TYPE_26__**, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_21__*, %struct.TYPE_26__** }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__** }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i8* (%struct.TYPE_29__*)*, i8* (%struct.TYPE_29__*)* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_25__ = type { i32, i32, i32 }

@NGX_HTTP_UPSTREAM_CREATE = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_WEIGHT = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_MAX_CONNS = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_MAX_FAILS = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_FAIL_TIMEOUT = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_DOWN = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_BACKUP = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_max_module = common dso_local global i32 0, align 4
@ngx_http_upstream_module = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@NGX_HTTP_MODULE = common dso_local global i64 0, align 8
@NGX_HTTP_UPS_CONF = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"no servers are inside upstream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_29__*, i32*, i8*)* @ngx_http_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_upstream(%struct.TYPE_29__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_25__, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_29__, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = call i32 @ngx_memzero(%struct.TYPE_25__* %11, i32 12)
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %31 = load i32, i32* @NGX_HTTP_UPSTREAM_CREATE, align 4
  %32 = load i32, i32* @NGX_HTTP_UPSTREAM_WEIGHT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @NGX_HTTP_UPSTREAM_MAX_CONNS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NGX_HTTP_UPSTREAM_MAX_FAILS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NGX_HTTP_UPSTREAM_FAIL_TIMEOUT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NGX_HTTP_UPSTREAM_DOWN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NGX_HTTP_UPSTREAM_BACKUP, align 4
  %43 = or i32 %41, %42
  %44 = call %struct.TYPE_26__* @ngx_http_upstream_add(%struct.TYPE_29__* %30, %struct.TYPE_25__* %11, i32 %43)
  store %struct.TYPE_26__* %44, %struct.TYPE_26__** %17, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %46 = icmp eq %struct.TYPE_26__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %48, i8** %4, align 8
  br label %263

49:                                               ; preds = %3
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @ngx_pcalloc(i32 %52, i32 24)
  %54 = bitcast i8* %53 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %54, %struct.TYPE_28__** %15, align 8
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %56 = icmp eq %struct.TYPE_28__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %58, i8** %4, align 8
  br label %263

59:                                               ; preds = %49
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %61, align 8
  store %struct.TYPE_28__* %62, %struct.TYPE_28__** %16, align 8
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ngx_http_max_module, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 8, %72
  %74 = trunc i64 %73 to i32
  %75 = call i8* @ngx_pcalloc(i32 %70, i32 %74)
  %76 = bitcast i8* %75 to %struct.TYPE_26__**
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 1
  store %struct.TYPE_26__** %76, %struct.TYPE_26__*** %78, align 8
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %80, align 8
  %82 = icmp eq %struct.TYPE_26__** %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %59
  %84 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %84, i8** %4, align 8
  br label %263

85:                                               ; preds = %59
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %88, align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ngx_http_upstream_module, i32 0, i32 0), align 8
  %91 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %89, i64 %90
  store %struct.TYPE_26__* %86, %struct.TYPE_26__** %91, align 8
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %93, align 8
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 1
  store %struct.TYPE_26__** %94, %struct.TYPE_26__*** %96, align 8
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ngx_http_max_module, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 8, %101
  %103 = trunc i64 %102 to i32
  %104 = call i8* @ngx_pcalloc(i32 %99, i32 %103)
  %105 = bitcast i8* %104 to i8**
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  store i8** %105, i8*** %107, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = icmp eq i8** %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %85
  %113 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %113, i8** %4, align 8
  br label %263

114:                                              ; preds = %85
  store i64 0, i64* %12, align 8
  br label %115

115:                                              ; preds = %213, %114
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %120, i64 %121
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %122, align 8
  %124 = icmp ne %struct.TYPE_23__* %123, null
  br i1 %124, label %125, label %216

125:                                              ; preds = %115
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %129, align 8
  %131 = load i64, i64* %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %130, i64 %131
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @NGX_HTTP_MODULE, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  br label %213

139:                                              ; preds = %125
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %143, align 8
  %145 = load i64, i64* %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %144, i64 %145
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %148, align 8
  store %struct.TYPE_27__* %149, %struct.TYPE_27__** %14, align 8
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 1
  %152 = load i8* (%struct.TYPE_29__*)*, i8* (%struct.TYPE_29__*)** %151, align 8
  %153 = icmp ne i8* (%struct.TYPE_29__*)* %152, null
  br i1 %153, label %154, label %181

154:                                              ; preds = %139
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 1
  %157 = load i8* (%struct.TYPE_29__*)*, i8* (%struct.TYPE_29__*)** %156, align 8
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %159 = call i8* %157(%struct.TYPE_29__* %158)
  store i8* %159, i8** %9, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %163, i8** %4, align 8
  br label %263

164:                                              ; preds = %154
  %165 = load i8*, i8** %9, align 8
  %166 = bitcast i8* %165 to %struct.TYPE_26__*
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %168, align 8
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %173, align 8
  %175 = load i64, i64* %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %174, i64 %175
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %169, i64 %179
  store %struct.TYPE_26__* %166, %struct.TYPE_26__** %180, align 8
  br label %181

181:                                              ; preds = %164, %139
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 0
  %184 = load i8* (%struct.TYPE_29__*)*, i8* (%struct.TYPE_29__*)** %183, align 8
  %185 = icmp ne i8* (%struct.TYPE_29__*)* %184, null
  br i1 %185, label %186, label %212

186:                                              ; preds = %181
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 0
  %189 = load i8* (%struct.TYPE_29__*)*, i8* (%struct.TYPE_29__*)** %188, align 8
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %191 = call i8* %189(%struct.TYPE_29__* %190)
  store i8* %191, i8** %9, align 8
  %192 = load i8*, i8** %9, align 8
  %193 = icmp eq i8* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %186
  %195 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %195, i8** %4, align 8
  br label %263

196:                                              ; preds = %186
  %197 = load i8*, i8** %9, align 8
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 0
  %200 = load i8**, i8*** %199, align 8
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %204, align 8
  %206 = load i64, i64* %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %205, i64 %206
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds i8*, i8** %200, i64 %210
  store i8* %197, i8** %211, align 8
  br label %212

212:                                              ; preds = %196, %181
  br label %213

213:                                              ; preds = %212, %138
  %214 = load i64, i64* %12, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %12, align 8
  br label %115

216:                                              ; preds = %115
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call %struct.TYPE_21__* @ngx_array_create(i32 %219, i32 4, i32 4)
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 0
  store %struct.TYPE_21__* %220, %struct.TYPE_21__** %222, align 8
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %224, align 8
  %226 = icmp eq %struct.TYPE_21__* %225, null
  br i1 %226, label %227, label %229

227:                                              ; preds = %216
  %228 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %228, i8** %4, align 8
  br label %263

229:                                              ; preds = %216
  %230 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %231 = bitcast %struct.TYPE_29__* %13 to i8*
  %232 = bitcast %struct.TYPE_29__* %230 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %231, i8* align 8 %232, i64 40, i1 false)
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 1
  store %struct.TYPE_28__* %233, %struct.TYPE_28__** %235, align 8
  %236 = load i32, i32* @NGX_HTTP_UPS_CONF, align 4
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %240 = call i8* @ngx_conf_parse(%struct.TYPE_29__* %239, i32* null)
  store i8* %240, i8** %8, align 8
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %242 = bitcast %struct.TYPE_29__* %241 to i8*
  %243 = bitcast %struct.TYPE_29__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %242, i8* align 8 %243, i64 40, i1 false)
  %244 = load i8*, i8** %8, align 8
  %245 = load i8*, i8** @NGX_CONF_OK, align 8
  %246 = icmp ne i8* %244, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %229
  %248 = load i8*, i8** %8, align 8
  store i8* %248, i8** %4, align 8
  br label %263

249:                                              ; preds = %229
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %249
  %257 = load i32, i32* @NGX_LOG_EMERG, align 4
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %259 = call i32 @ngx_conf_log_error(i32 %257, %struct.TYPE_29__* %258, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %260 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %260, i8** %4, align 8
  br label %263

261:                                              ; preds = %249
  %262 = load i8*, i8** %8, align 8
  store i8* %262, i8** %4, align 8
  br label %263

263:                                              ; preds = %261, %256, %247, %227, %194, %162, %112, %83, %57, %47
  %264 = load i8*, i8** %4, align 8
  ret i8* %264
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_26__* @ngx_http_upstream_add(%struct.TYPE_29__*, %struct.TYPE_25__*, i32) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_array_create(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_29__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

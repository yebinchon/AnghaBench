; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_recv_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_recv_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32*, i32)*, i32, i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32 (%struct.TYPE_18__*)*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32*, i32*, i32*, i32* }

@NGX_HTTP_CHECK_SEND_DONE = common dso_local global i64 0, align 8
@ngx_pagesize = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"http check parse rc: %i, peer: %V \00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"check protocol %V error with peer: %V \00", align 1
@NGX_HTTP_CHECK_RECV_DONE = common dso_local global i64 0, align 8
@ngx_socket_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @ngx_http_upstream_check_recv_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_check_recv_handler(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %10 = call i64 (...) @ngx_http_upstream_check_need_exit()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %247

13:                                               ; preds = %1
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %7, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %9, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NGX_HTTP_CHECK_SEND_DONE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %13
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ngx_handle_read_event(i32 %28, i32 0)
  %30 = icmp ne i64 %29, 128
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %242

32:                                               ; preds = %25
  br label %247

33:                                               ; preds = %13
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  store %struct.TYPE_19__* %36, %struct.TYPE_19__** %8, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %81

42:                                               ; preds = %33
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ngx_pagesize, align 4
  %47 = sdiv i32 %46, 2
  %48 = call i8* @ngx_palloc(i32 %45, i32 %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  store i32* %49, i32** %52, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  br label %242

59:                                               ; preds = %42
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  store i32* %63, i32** %66, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store i32* %63, i32** %69, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @ngx_pagesize, align 4
  %75 = sdiv i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  store i32* %77, i32** %80, align 8
  br label %81

81:                                               ; preds = %59, %33
  br label %82

82:                                               ; preds = %81, %178
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = ptrtoint i32* %86 to i64
  %92 = ptrtoint i32* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 4
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %165

98:                                               ; preds = %82
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = ptrtoint i32* %102 to i64
  %108 = ptrtoint i32* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %4, align 4
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = mul nsw i32 %115, 2
  %117 = call i8* @ngx_palloc(i32 %114, i32 %116)
  %118 = bitcast i8* %117 to i32*
  store i32* %118, i32** %3, align 8
  %119 = load i32*, i32** %3, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %98
  br label %242

122:                                              ; preds = %98
  %123 = load i32*, i32** %3, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @ngx_memcpy(i32* %123, i32* %127, i32 %128)
  %130 = load i32*, i32** %3, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  store i32* %130, i32** %133, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 3
  store i32* %130, i32** %136, align 8
  %137 = load i32*, i32** %3, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i32* %140, i32** %143, align 8
  %144 = load i32*, i32** %3, align 8
  %145 = load i32, i32* %4, align 4
  %146 = mul nsw i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  store i32* %148, i32** %151, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = ptrtoint i32* %155 to i64
  %161 = ptrtoint i32* %159 to i64
  %162 = sub i64 %160, %161
  %163 = sdiv exact i64 %162, 4
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %122, %82
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load i32 (%struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_21__*, i32*, i32)** %167, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = call i32 %168(%struct.TYPE_21__* %169, i32* %173, i32 %174)
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* %4, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %165
  %179 = load i32, i32* %4, align 4
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = sext i32 %179 to i64
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %182, align 8
  br label %82

186:                                              ; preds = %165
  %187 = load i32, i32* %4, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %4, align 4
  %191 = icmp eq i32 %190, 130
  br i1 %191, label %192, label %193

192:                                              ; preds = %189, %186
  br label %196

193:                                              ; preds = %189
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 1
  store i32 1, i32* %195, align 8
  br label %242

196:                                              ; preds = %192
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %198, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %201 = call i32 %199(%struct.TYPE_18__* %200)
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %6, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 0
  %211 = call i32 @ngx_log_debug2(i32 %202, i32 %205, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %206, i32* %210)
  %212 = load i32, i32* %6, align 4
  switch i32 %212, label %233 [
    i32 130, label %213
    i32 129, label %214
    i32 128, label %232
  ]

213:                                              ; preds = %196
  br label %247

214:                                              ; preds = %196
  %215 = load i32, i32* @NGX_LOG_ERR, align 4
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  %229 = call i32 @ngx_log_error(i32 %215, i32 %218, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* %224, i32* %228)
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %231 = call i32 @ngx_http_upstream_check_status_update(%struct.TYPE_18__* %230, i32 0)
  br label %236

232:                                              ; preds = %196
  br label %233

233:                                              ; preds = %196, %232
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %235 = call i32 @ngx_http_upstream_check_status_update(%struct.TYPE_18__* %234, i32 1)
  br label %236

236:                                              ; preds = %233, %214
  %237 = load i64, i64* @NGX_HTTP_CHECK_RECV_DONE, align 8
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  store i64 %237, i64* %239, align 8
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %241 = call i32 @ngx_http_upstream_check_clean_event(%struct.TYPE_18__* %240)
  br label %247

242:                                              ; preds = %193, %121, %58, %31
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %244 = call i32 @ngx_http_upstream_check_status_update(%struct.TYPE_18__* %243, i32 0)
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %246 = call i32 @ngx_http_upstream_check_clean_event(%struct.TYPE_18__* %245)
  br label %247

247:                                              ; preds = %242, %236, %213, %32, %12
  ret void
}

declare dso_local i64 @ngx_http_upstream_check_need_exit(...) #1

declare dso_local i64 @ngx_handle_read_event(i32, i32) #1

declare dso_local i8* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @ngx_http_upstream_check_status_update(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_http_upstream_check_clean_event(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

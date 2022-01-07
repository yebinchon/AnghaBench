; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_session_sticky_header_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_session_sticky_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_27__*, %struct.TYPE_24__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64, %struct.TYPE_29__*, i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_30__ = type { i64 }

@NGX_HTTP_BAD_REQUEST = common dso_local global i64 0, align 8
@ngx_http_upstream_session_sticky_module = common dso_local global i32 0, align 4
@NGX_CONF_UNSET_PTR = common dso_local global i64 0, align 8
@NGX_HTTP_SESSION_STICKY_PREFIX = common dso_local global i32 0, align 4
@NGX_HTTP_SESSION_STICKY_INDIRECT = common dso_local global i32 0, align 4
@NGX_HTTP_SESSION_STICKY_REWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"set-cookie\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"session_sticky [rewrite]set-cookie failed\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"session_sticky [rewrite] set-cookie:%V\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"session_sticky [prefix]set-cookie failed\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"session_sticky [prefix]set-cookie: %V\00", align 1
@NGX_HTTP_SESSION_STICKY_INSERT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"session_sticky [insert]\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"session_sticky [insert] failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*)* @ngx_http_session_sticky_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_session_sticky_header_filter(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NGX_HTTP_BAD_REQUEST, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %18 = call i64 @ngx_http_ss_next_header_filter(%struct.TYPE_22__* %17)
  store i64 %18, i64* %2, align 8
  br label %251

19:                                               ; preds = %1
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %21 = load i32, i32* @ngx_http_upstream_session_sticky_module, align 4
  %22 = call %struct.TYPE_30__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__* %20, i32 %21)
  store %struct.TYPE_30__* %22, %struct.TYPE_30__** %9, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %24 = load i32, i32* @ngx_http_upstream_session_sticky_module, align 4
  %25 = call %struct.TYPE_31__* @ngx_http_get_module_ctx(%struct.TYPE_22__* %23, i32 %24)
  store %struct.TYPE_31__* %25, %struct.TYPE_31__** %8, align 8
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %27 = icmp eq %struct.TYPE_31__* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %19
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %32 = icmp eq %struct.TYPE_26__* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %28, %19
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %42 = call i64 @ngx_http_ss_next_header_filter(%struct.TYPE_22__* %41)
  store i64 %42, i64* %2, align 8
  br label %251

43:                                               ; preds = %33
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NGX_CONF_UNSET_PTR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NGX_HTTP_SESSION_STICKY_PREFIX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %49
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NGX_HTTP_SESSION_STICKY_INDIRECT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58, %49
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %69 = call i64 @ngx_http_ss_next_header_filter(%struct.TYPE_22__* %68)
  store i64 %69, i64* %2, align 8
  br label %251

70:                                               ; preds = %58, %43
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NGX_HTTP_SESSION_STICKY_PREFIX, align 4
  %77 = load i32, i32* @NGX_HTTP_SESSION_STICKY_REWRITE, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %216

81:                                               ; preds = %70
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  store %struct.TYPE_29__* %85, %struct.TYPE_29__** %6, align 8
  br label %86

86:                                               ; preds = %211, %81
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %88 = icmp ne %struct.TYPE_29__* %87, null
  br i1 %88, label %89, label %215

89:                                               ; preds = %86
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %93, %struct.TYPE_28__** %7, align 8
  store i64 0, i64* %5, align 8
  br label %94

94:                                               ; preds = %208, %89
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %95, %98
  br i1 %99, label %100, label %211

100:                                              ; preds = %94
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp eq i64 %107, 10
  br i1 %108, label %109, label %207

109:                                              ; preds = %100
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %117 = load i64, i64* %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @ngx_strncasecmp(i32 %115, i32* bitcast ([11 x i8]* @.str to i32*), i32 %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %207

124:                                              ; preds = %109
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @NGX_HTTP_SESSION_STICKY_REWRITE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %170

133:                                              ; preds = %124
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %136 = load i64, i64* %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i64 %136
  %138 = call i64 @ngx_http_session_sticky_rewrite(%struct.TYPE_22__* %134, %struct.TYPE_28__* %137)
  store i64 %138, i64* %4, align 8
  %139 = load i64, i64* %4, align 8
  %140 = load i64, i64* @NGX_AGAIN, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %208

143:                                              ; preds = %133
  %144 = load i64, i64* %4, align 8
  %145 = load i64, i64* @NGX_ERROR, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = load i32, i32* @NGX_LOG_ERR, align 4
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ngx_log_error(i32 %148, i32 %153, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %155

155:                                              ; preds = %147, %143
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %164 = load i64, i64* %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  %167 = call i32 @ngx_log_debug1(i32 %157, i32 %162, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32* %166)
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %169 = call i64 @ngx_http_ss_next_header_filter(%struct.TYPE_22__* %168)
  store i64 %169, i64* %2, align 8
  br label %251

170:                                              ; preds = %124
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %173 = load i64, i64* %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i64 %173
  %175 = call i64 @ngx_http_session_sticky_prefix(%struct.TYPE_22__* %171, %struct.TYPE_28__* %174)
  store i64 %175, i64* %4, align 8
  %176 = load i64, i64* %4, align 8
  %177 = load i64, i64* @NGX_AGAIN, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %170
  br label %208

180:                                              ; preds = %170
  %181 = load i64, i64* %4, align 8
  %182 = load i64, i64* @NGX_ERROR, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = load i32, i32* @NGX_LOG_ERR, align 4
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @ngx_log_error(i32 %185, i32 %190, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %192

192:                                              ; preds = %184, %180
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %201 = load i64, i64* %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 0
  %204 = call i32 @ngx_log_debug1(i32 %194, i32 %199, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32* %203)
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %206 = call i64 @ngx_http_ss_next_header_filter(%struct.TYPE_22__* %205)
  store i64 %206, i64* %2, align 8
  br label %251

207:                                              ; preds = %109, %100
  br label %208

208:                                              ; preds = %207, %179, %142
  %209 = load i64, i64* %5, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %5, align 8
  br label %94

211:                                              ; preds = %94
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %213, align 8
  store %struct.TYPE_29__* %214, %struct.TYPE_29__** %6, align 8
  br label %86

215:                                              ; preds = %86
  br label %248

216:                                              ; preds = %70
  %217 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @NGX_HTTP_SESSION_STICKY_INSERT, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %247

225:                                              ; preds = %216
  %226 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @ngx_log_debug0(i32 %226, i32 %231, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %234 = call i64 @ngx_http_session_sticky_insert(%struct.TYPE_22__* %233)
  store i64 %234, i64* %4, align 8
  %235 = load i64, i64* %4, align 8
  %236 = load i64, i64* @NGX_OK, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %246

238:                                              ; preds = %225
  %239 = load i32, i32* @NGX_LOG_ERR, align 4
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @ngx_log_error(i32 %239, i32 %244, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %246

246:                                              ; preds = %238, %225
  br label %247

247:                                              ; preds = %246, %216
  br label %248

248:                                              ; preds = %247, %215
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %250 = call i64 @ngx_http_ss_next_header_filter(%struct.TYPE_22__* %249)
  store i64 %250, i64* %2, align 8
  br label %251

251:                                              ; preds = %248, %193, %156, %67, %40, %16
  %252 = load i64, i64* %2, align 8
  ret i64 %252
}

declare dso_local i64 @ngx_http_ss_next_header_filter(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_30__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_31__* @ngx_http_get_module_ctx(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32*, i32) #1

declare dso_local i64 @ngx_http_session_sticky_rewrite(%struct.TYPE_22__*, %struct.TYPE_28__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

declare dso_local i64 @ngx_http_session_sticky_prefix(%struct.TYPE_22__*, %struct.TYPE_28__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_session_sticky_insert(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

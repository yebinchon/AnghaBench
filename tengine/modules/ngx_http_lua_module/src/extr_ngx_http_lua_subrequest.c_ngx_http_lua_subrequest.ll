; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_subrequest.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_subrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_24__*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_26__*, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_23__, i32, i32, i32, i32, %struct.TYPE_21__, i32*, %struct.TYPE_28__*, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32 }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"lua subrequests cycle while processing \22%V\22\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_MODULE = common dso_local global i32 0, align 4
@ngx_http_max_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_GET = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"lua http subrequest \22%V?%V\22\00", align 1
@NGX_HTTP_SUBREQUEST_IN_MEMORY = common dso_local global i32 0, align 4
@NGX_HTTP_SUBREQUEST_WAITED = common dso_local global i32 0, align 4
@ngx_http_core_get_method = common dso_local global i32 0, align 4
@ngx_http_request_empty_handler = common dso_local global i32 0, align 4
@ngx_http_handler = common dso_local global i32 0, align 4
@NGX_HTTP_MAX_URI_CHANGES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i8**, i8**, %struct.TYPE_26__**, i32*, i32)* @ngx_http_lua_subrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_subrequest(%struct.TYPE_26__* %0, i8** %1, i8** %2, %struct.TYPE_26__** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_26__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store %struct.TYPE_26__** %3, %struct.TYPE_26__*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %6
  %31 = load i32, i32* @NGX_LOG_ERR, align 4
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 37
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8**, i8*** %9, align 8
  %38 = call i32 @ngx_log_error(i32 %31, i32 %36, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8** %37)
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* @NGX_ERROR, align 4
  store i32 %43, i32* %7, align 4
  br label %268

44:                                               ; preds = %6
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 31
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @ngx_pcalloc(i32 %47, i32 208)
  %49 = bitcast i8* %48 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %49, %struct.TYPE_26__** %16, align 8
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %51 = icmp eq %struct.TYPE_26__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @NGX_ERROR, align 4
  store i32 %53, i32* %7, align 4
  br label %268

54:                                               ; preds = %44
  %55 = load i32, i32* @NGX_HTTP_MODULE, align 4
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 38
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 37
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %59, align 8
  store %struct.TYPE_28__* %60, %struct.TYPE_28__** %15, align 8
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 37
  store %struct.TYPE_28__* %61, %struct.TYPE_28__** %63, align 8
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 31
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ngx_http_max_module, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 8, %68
  %70 = trunc i64 %69 to i32
  %71 = call i8* @ngx_pcalloc(i32 %66, i32 %70)
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 36
  store i32* %72, i32** %74, align 8
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 36
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %54
  %80 = load i32, i32* @NGX_ERROR, align 4
  store i32 %80, i32* %7, align 4
  br label %268

81:                                               ; preds = %54
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 35
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 31
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @ngx_list_init(i32* %84, i32 %87, i32 20, i32 4)
  %89 = load i64, i64* @NGX_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* @NGX_ERROR, align 4
  store i32 %92, i32* %7, align 4
  br label %268

93:                                               ; preds = %81
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %95 = load i32, i32* @ngx_http_core_module, align 4
  %96 = call %struct.TYPE_27__* @ngx_http_get_module_srv_conf(%struct.TYPE_26__* %94, i32 %95)
  store %struct.TYPE_27__* %96, %struct.TYPE_27__** %17, align 8
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 34
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 33
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 32
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 31
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 31
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 30
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  store i32 -1, i32* %125, align 8
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 30
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 1
  store i32 -1, i32* %128, align 4
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %130 = call i32 @ngx_http_clear_content_length(%struct.TYPE_26__* %129)
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %132 = call i32 @ngx_http_clear_accept_ranges(%struct.TYPE_26__* %131)
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %134 = call i32 @ngx_http_clear_last_modified(%struct.TYPE_26__* %133)
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 29
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 29
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @NGX_HTTP_GET, align 4
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 26
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 25
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 25
  store i32 %145, i32* %147, align 4
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 24
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 24
  store i32 %150, i32* %152, align 8
  %153 = load i8**, i8*** %9, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 23
  store i8* %154, i8** %156, align 8
  %157 = load i8**, i8*** %10, align 8
  %158 = icmp ne i8** %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %93
  %160 = load i8**, i8*** %10, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 22
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %159, %93
  %165 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i8**, i8*** %9, align 8
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 22
  %172 = call i32 @ngx_log_debug2(i32 %165, i32 %168, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %169, i8** %171)
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @NGX_HTTP_SUBREQUEST_IN_MEMORY, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* @NGX_HTTP_SUBREQUEST_WAITED, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  %184 = zext i1 %183 to i32
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 20
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 20
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* @ngx_http_core_get_method, align 4
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 19
  store i32 %192, i32* %194, align 4
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 18
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 18
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %201 = call i32 @ngx_http_set_exten(%struct.TYPE_26__* %200)
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 6
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %203, align 8
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 6
  store %struct.TYPE_24__* %204, %struct.TYPE_24__** %206, align 8
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 17
  store %struct.TYPE_26__* %207, %struct.TYPE_26__** %209, align 8
  %210 = load i32*, i32** %12, align 8
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 16
  store i32* %210, i32** %212, align 8
  %213 = load i32, i32* @ngx_http_request_empty_handler, align 4
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 15
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* @ngx_http_handler, align 4
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 14
  store i32 %216, i32* %218, align 8
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 13
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 13
  store i32 %221, i32* %223, align 4
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 12
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 12
  store i32 %226, i32* %228, align 8
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 4
  store i32 1, i32* %230, align 4
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 11
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 11
  store i32 %233, i32* %235, align 4
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 5
  store i32 1, i32* %237, align 8
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 10
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i32 0, i32 10
  store i32 %240, i32* %242, align 8
  %243 = load i64, i64* @NGX_HTTP_MAX_URI_CHANGES, align 8
  %244 = add nsw i64 %243, 1
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 9
  store i64 %244, i64* %246, align 8
  %247 = call %struct.TYPE_25__* (...) @ngx_timeofday()
  store %struct.TYPE_25__* %247, %struct.TYPE_25__** %14, align 8
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 8
  store i32 %250, i32* %252, align 4
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 7
  store i32 %255, i32* %257, align 8
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 6
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %261, align 4
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %265 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  store %struct.TYPE_26__* %264, %struct.TYPE_26__** %265, align 8
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %267 = call i32 @ngx_http_post_request(%struct.TYPE_26__* %266, i32* null)
  store i32 %267, i32* %7, align 4
  br label %268

268:                                              ; preds = %164, %91, %79, %52, %30
  %269 = load i32, i32* %7, align 4
  ret i32 %269
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i8**) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_list_init(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_27__* @ngx_http_get_module_srv_conf(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ngx_http_clear_content_length(%struct.TYPE_26__*) #1

declare dso_local i32 @ngx_http_clear_accept_ranges(%struct.TYPE_26__*) #1

declare dso_local i32 @ngx_http_clear_last_modified(%struct.TYPE_26__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i8**, i8**) #1

declare dso_local i32 @ngx_http_set_exten(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_25__* @ngx_timeofday(...) #1

declare dso_local i32 @ngx_http_post_request(%struct.TYPE_26__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

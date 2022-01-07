; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_post_subrequest.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_post_subrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_30__, %struct.TYPE_29__*, i32, %struct.TYPE_28__, i32, %struct.TYPE_33__*, %struct.TYPE_27__* }
%struct.TYPE_30__ = type { i32, i64, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_33__*, i32 }
%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_23__ = type { i32, i64, i32, %struct.TYPE_25__*, i32, i64, i32, i64, %struct.TYPE_24__*, i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_31__*, %struct.TYPE_25__* }
%struct.TYPE_31__ = type { i32, i64, i64 }
%struct.TYPE_24__ = type { i64, i32*, %struct.TYPE_32__*, %struct.TYPE_30__**, i32* }
%struct.TYPE_32__ = type { i64, i32* }
%struct.TYPE_34__ = type { %struct.TYPE_24__*, %struct.TYPE_23__* }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"lua run post subrequest handler, rc:%i c:%ud\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"all subrequests are done\00", align 1
@ngx_http_lua_subrequest_resume = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"lua restoring write event handler\00", align 1
@ngx_http_lua_content_wev_handler = common dso_local global i32 0, align 4
@ngx_http_core_run_phases = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"status rc = %d\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"status headers_out.status = %d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"uri: %.*s\00", align 1
@NGX_HTTP_OK = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_SUBREQ_TRUNCATED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"pr_coctx status: %d\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"failed to set default content type: %i\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"free bufs: %p\00", align 1
@NGX_HTTP_CREATED = common dso_local global i32 0, align 4
@NGX_HTTP_NO_CONTENT = common dso_local global i32 0, align 4
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i32 0, align 4
@NGX_HTTP_CLOSE = common dso_local global i32 0, align 4
@NGX_HTTP_REQUEST_TIME_OUT = common dso_local global i32 0, align 4
@NGX_HTTP_CLIENT_CLOSED_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_post_subrequest(%struct.TYPE_33__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %18, %struct.TYPE_34__** %16, align 8
  %19 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %20 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %10, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %28 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %33 = icmp ne %struct.TYPE_33__* %27, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %36 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 0
  store %struct.TYPE_33__* %35, %struct.TYPE_33__** %39, align 8
  br label %40

40:                                               ; preds = %34, %26
  %41 = load i32, i32* @NGX_OK, align 4
  store i32 %41, i32* %4, align 4
  br label %420

42:                                               ; preds = %3
  %43 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 8
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ngx_log_debug2(i32 %43, i32 %48, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %54)
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 7
  %60 = load %struct.TYPE_33__*, %struct.TYPE_33__** %59, align 8
  store %struct.TYPE_33__* %60, %struct.TYPE_33__** %8, align 8
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %62 = load i32, i32* @ngx_http_lua_module, align 4
  %63 = call %struct.TYPE_23__* @ngx_http_get_module_ctx(%struct.TYPE_33__* %61, i32 %62)
  store %struct.TYPE_23__* %63, %struct.TYPE_23__** %9, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %65 = icmp eq %struct.TYPE_23__* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %42
  %67 = load i32, i32* @NGX_ERROR, align 4
  store i32 %67, i32* %4, align 4
  br label %420

68:                                               ; preds = %42
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %70, align 8
  store %struct.TYPE_24__* %71, %struct.TYPE_24__** %11, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %68
  %81 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 10
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* @ngx_http_lua_subrequest_resume, align 4
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 9
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 8
  store %struct.TYPE_24__* %87, %struct.TYPE_24__** %89, align 8
  br label %90

90:                                               ; preds = %80, %68
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ngx_log_debug0(i32 %96, i32 %101, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @ngx_http_lua_content_wev_handler, align 4
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 8
  br label %110

106:                                              ; preds = %90
  %107 = load i32, i32* @ngx_http_core_run_phases, align 4
  %108 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %95
  %111 = load i32, i32* %7, align 4
  %112 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %122, i32 %126)
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 %131, i32* %138, align 4
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %173

148:                                              ; preds = %110
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @NGX_OK, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32, i32* @NGX_HTTP_OK, align 4
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %152, %148
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @NGX_ERROR, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %158, %154
  %161 = load i32, i32* %7, align 4
  %162 = icmp sge i32 %161, 100
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  store i32 %164, i32* %171, align 4
  br label %172

172:                                              ; preds = %163, %160
  br label %173

173:                                              ; preds = %172, %110
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %173
  %179 = load i32, i32* @NGX_HTTP_LUA_SUBREQ_TRUNCATED, align 4
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %179
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %178, %173
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %197)
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 5
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %221

203:                                              ; preds = %189
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %206 = call i32 @ngx_http_lua_set_content_type(%struct.TYPE_33__* %204, %struct.TYPE_23__* %205)
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* @NGX_OK, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %220

210:                                              ; preds = %203
  %211 = load i32, i32* @NGX_LOG_ERR, align 4
  %212 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @ngx_log_error(i32 %211, i32 %216, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* @NGX_ERROR, align 4
  store i32 %219, i32* %4, align 4
  br label %420

220:                                              ; preds = %203
  br label %221

221:                                              ; preds = %220, %189
  %222 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 3
  %226 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %225, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %226, i64 %229
  store %struct.TYPE_30__* %223, %struct.TYPE_30__** %230, align 8
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %232, align 8
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %233, i64 %236
  store %struct.TYPE_32__* %237, %struct.TYPE_32__** %13, align 8
  store i64 0, i64* %12, align 8
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %239, align 8
  store %struct.TYPE_25__* %240, %struct.TYPE_25__** %15, align 8
  br label %241

241:                                              ; preds = %258, %221
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %243 = icmp ne %struct.TYPE_25__* %242, null
  br i1 %243, label %244, label %262

244:                                              ; preds = %241
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_31__*, %struct.TYPE_31__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_31__*, %struct.TYPE_31__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = sub nsw i64 %249, %254
  %256 = load i64, i64* %12, align 8
  %257 = add i64 %256, %255
  store i64 %257, i64* %12, align 8
  br label %258

258:                                              ; preds = %244
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %260, align 8
  store %struct.TYPE_25__* %261, %struct.TYPE_25__** %15, align 8
  br label %241

262:                                              ; preds = %241
  %263 = load i64, i64* %12, align 8
  %264 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 0
  store i64 %263, i64* %265, align 8
  %266 = load i64, i64* %12, align 8
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %262
  %269 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %269, i32 0, i32 1
  store i32* null, i32** %270, align 8
  br label %324

271:                                              ; preds = %262
  %272 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = load i64, i64* %12, align 8
  %276 = call i32* @ngx_palloc(i32 %274, i64 %275)
  store i32* %276, i32** %14, align 8
  %277 = load i32*, i32** %14, align 8
  %278 = icmp eq i32* %277, null
  br i1 %278, label %279, label %281

279:                                              ; preds = %271
  %280 = load i32, i32* @NGX_ERROR, align 4
  store i32 %280, i32* %4, align 4
  br label %420

281:                                              ; preds = %271
  %282 = load i32*, i32** %14, align 8
  %283 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %283, i32 0, i32 1
  store i32* %282, i32** %284, align 8
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 3
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %286, align 8
  store %struct.TYPE_25__* %287, %struct.TYPE_25__** %15, align 8
  br label %288

288:                                              ; preds = %319, %281
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %290 = icmp ne %struct.TYPE_25__* %289, null
  br i1 %290, label %291, label %323

291:                                              ; preds = %288
  %292 = load i32*, i32** %14, align 8
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_31__*, %struct.TYPE_31__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_31__*, %struct.TYPE_31__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %304 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_31__*, %struct.TYPE_31__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = sub nsw i64 %302, %307
  %309 = call i32* @ngx_copy(i32* %292, i64 %297, i64 %308)
  store i32* %309, i32** %14, align 8
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %311 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_31__*, %struct.TYPE_31__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_31__*, %struct.TYPE_31__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %317, i32 0, i32 2
  store i64 %314, i64* %318, align 8
  br label %319

319:                                              ; preds = %291
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %321, align 8
  store %struct.TYPE_25__* %322, %struct.TYPE_25__** %15, align 8
  br label %288

323:                                              ; preds = %288
  br label %324

324:                                              ; preds = %323, %268
  %325 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %325, i32 0, i32 3
  %327 = load %struct.TYPE_25__*, %struct.TYPE_25__** %326, align 8
  %328 = icmp ne %struct.TYPE_25__* %327, null
  br i1 %328, label %329, label %342

329:                                              ; preds = %324
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %331 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i32 0, i32 2
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 4
  %334 = ptrtoint i32* %333 to i32
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 3
  %337 = call i32 (i32*, i32, ...) @ngx_chain_update_chains(i32* %331, i32 %334, %struct.TYPE_25__** %336, i32 ptrtoint (i32* @ngx_http_lua_module to i32))
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %340)
  br label %342

342:                                              ; preds = %329, %324
  %343 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %344 = call i32 @ngx_http_post_request_to_head(%struct.TYPE_33__* %343)
  %345 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %346 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %346, i32 0, i32 3
  %348 = load %struct.TYPE_29__*, %struct.TYPE_29__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_33__*, %struct.TYPE_33__** %349, align 8
  %351 = icmp ne %struct.TYPE_33__* %345, %350
  br i1 %351, label %352, label %358

352:                                              ; preds = %342
  %353 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %354 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %354, i32 0, i32 3
  %356 = load %struct.TYPE_29__*, %struct.TYPE_29__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %356, i32 0, i32 0
  store %struct.TYPE_33__* %353, %struct.TYPE_33__** %357, align 8
  br label %358

358:                                              ; preds = %352, %342
  %359 = load i32, i32* %7, align 4
  %360 = load i32, i32* @NGX_ERROR, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %386, label %362

362:                                              ; preds = %358
  %363 = load i32, i32* %7, align 4
  %364 = load i32, i32* @NGX_HTTP_CREATED, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %386, label %366

366:                                              ; preds = %362
  %367 = load i32, i32* %7, align 4
  %368 = load i32, i32* @NGX_HTTP_NO_CONTENT, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %386, label %370

370:                                              ; preds = %366
  %371 = load i32, i32* %7, align 4
  %372 = load i32, i32* @NGX_HTTP_SPECIAL_RESPONSE, align 4
  %373 = icmp sge i32 %371, %372
  br i1 %373, label %374, label %418

374:                                              ; preds = %370
  %375 = load i32, i32* %7, align 4
  %376 = load i32, i32* @NGX_HTTP_CLOSE, align 4
  %377 = icmp ne i32 %375, %376
  br i1 %377, label %378, label %418

378:                                              ; preds = %374
  %379 = load i32, i32* %7, align 4
  %380 = load i32, i32* @NGX_HTTP_REQUEST_TIME_OUT, align 4
  %381 = icmp ne i32 %379, %380
  br i1 %381, label %382, label %418

382:                                              ; preds = %378
  %383 = load i32, i32* %7, align 4
  %384 = load i32, i32* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 4
  %385 = icmp ne i32 %383, %384
  br i1 %385, label %386, label %418

386:                                              ; preds = %382, %366, %362, %358
  %387 = load i32, i32* %7, align 4
  %388 = load i32, i32* @NGX_OK, align 4
  %389 = icmp sgt i32 %387, %388
  br i1 %389, label %390, label %416

390:                                              ; preds = %386
  %391 = load i32, i32* %7, align 4
  %392 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %392, i32 0, i32 0
  store i32 %391, i32* %393, align 8
  %394 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %394, i32 0, i32 1
  store i32 1, i32* %395, align 4
  %396 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %398, i32 0, i32 0
  store i64 0, i64* %399, align 8
  %400 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %400, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %401, i32 0, i32 1
  store i64 0, i64* %402, align 8
  %403 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %404 = call i32 @ngx_http_clear_accept_ranges(%struct.TYPE_33__* %403)
  %405 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %406 = call i32 @ngx_http_clear_last_modified(%struct.TYPE_33__* %405)
  %407 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %408 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %409 = call i32 @ngx_http_lua_send_header_if_needed(%struct.TYPE_33__* %407, %struct.TYPE_23__* %408)
  store i32 %409, i32* %7, align 4
  %410 = load i32, i32* %7, align 4
  %411 = load i32, i32* @NGX_ERROR, align 4
  %412 = icmp eq i32 %410, %411
  br i1 %412, label %413, label %415

413:                                              ; preds = %390
  %414 = load i32, i32* @NGX_ERROR, align 4
  store i32 %414, i32* %4, align 4
  br label %420

415:                                              ; preds = %390
  br label %416

416:                                              ; preds = %415, %386
  %417 = load i32, i32* @NGX_OK, align 4
  store i32 %417, i32* %4, align 4
  br label %420

418:                                              ; preds = %382, %378, %374, %370
  %419 = load i32, i32* %7, align 4
  store i32 %419, i32* %4, align 4
  br label %420

420:                                              ; preds = %418, %416, %413, %279, %210, %66, %40
  %421 = load i32, i32* %4, align 4
  ret i32 %421
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_ctx(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_lua_set_content_type(%struct.TYPE_33__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i32* @ngx_palloc(i32, i64) #1

declare dso_local i32* @ngx_copy(i32*, i64, i64) #1

declare dso_local i32 @ngx_chain_update_chains(i32*, i32, ...) #1

declare dso_local i32 @ngx_http_post_request_to_head(%struct.TYPE_33__*) #1

declare dso_local i32 @ngx_http_clear_accept_ranges(%struct.TYPE_33__*) #1

declare dso_local i32 @ngx_http_clear_last_modified(%struct.TYPE_33__*) #1

declare dso_local i32 @ngx_http_lua_send_header_if_needed(%struct.TYPE_33__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

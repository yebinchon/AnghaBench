; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_handle_subreq_responses.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_handle_subreq_responses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_28__, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32*, %struct.TYPE_23__**, %struct.TYPE_18__*, i32*, i64, i32* }
%struct.TYPE_23__ = type { i64, i32, i64, i32*, %struct.TYPE_26__*, i32*, %struct.TYPE_24__, %struct.TYPE_29__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_32__*, %struct.TYPE_19__* }
%struct.TYPE_32__ = type { i64, %struct.TYPE_31__, %struct.TYPE_30__ }
%struct.TYPE_31__ = type { i32, i64 }
%struct.TYPE_30__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32, i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"lua handle subrequest responses\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"summary: reqs %d, subquery %d, pending %d, req %.*s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"captured subrequest flags: %d\00", align 1
@NGX_HTTP_LUA_SUBREQ_TRUNCATED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"free body buffer ASAP\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"saving subrequest response headers\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"checking sr header %.*s\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"pushing sr header %.*s\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@NGX_HTTP_PARTIAL_CONTENT = common dso_local global i64 0, align 8
@NGX_HTTP_NOT_MODIFIED = common dso_local global i64 0, align 8
@NGX_HTTP_NO_CONTENT = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"Last-Modified\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_21__*)* @ngx_http_lua_handle_subreq_responses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_handle_subreq_responses(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca [29 x i32], align 16
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %15 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ngx_log_debug0(i32 %15, i32 %20, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %13, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %8, align 8
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %461, %2
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %464

34:                                               ; preds = %28
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40, i32 %44, i32 %49, i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @lua_createtable(i32* %55, i32 0, i64 4)
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @lua_pushinteger(i32* %57, i32 %63)
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @lua_setfield(i32* %65, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NGX_HTTP_LUA_SUBREQ_TRUNCATED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %34
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @lua_pushboolean(i32* %84, i32 1)
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @lua_setfield(i32* %86, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %93

88:                                               ; preds = %34
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @lua_pushboolean(i32* %89, i32 0)
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @lua_setfield(i32* %91, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i64 %97
  store %struct.TYPE_18__* %98, %struct.TYPE_18__** %9, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @lua_pushlstring(i32* %99, i8* %103, i32 %106)
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @lua_setfield(i32* %108, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %93
  %115 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @ngx_pfree(i32 %118, i64 %121)
  br label %123

123:                                              ; preds = %114, %93
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %125, align 8
  %127 = load i64, i64* %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %126, i64 %127
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %128, align 8
  store %struct.TYPE_23__* %129, %struct.TYPE_23__** %12, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 0
  store %struct.TYPE_19__* %132, %struct.TYPE_19__** %11, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %6, align 8
  br label %136

136:                                              ; preds = %141, %123
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = icmp ne %struct.TYPE_19__* %139, null
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %143, align 8
  store %struct.TYPE_19__* %144, %struct.TYPE_19__** %11, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %6, align 8
  br label %136

150:                                              ; preds = %136
  %151 = load i32*, i32** %8, align 8
  %152 = load i64, i64* %6, align 8
  %153 = add i64 %152, 5
  %154 = call i32 @lua_createtable(i32* %151, i32 0, i64 %153)
  %155 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 0
  store %struct.TYPE_19__* %158, %struct.TYPE_19__** %11, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %160, align 8
  store %struct.TYPE_32__* %161, %struct.TYPE_32__** %10, align 8
  store i64 0, i64* %5, align 8
  br label %162

162:                                              ; preds = %320, %150
  %163 = load i64, i64* %5, align 8
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp uge i64 %163, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %162
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %170, align 8
  %172 = icmp eq %struct.TYPE_19__* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %323

174:                                              ; preds = %168
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  store %struct.TYPE_19__* %177, %struct.TYPE_19__** %11, align 8
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %179, align 8
  store %struct.TYPE_32__* %180, %struct.TYPE_32__** %10, align 8
  store i64 0, i64* %5, align 8
  br label %181

181:                                              ; preds = %174, %162
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %183 = load i64, i64* %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %189 = load i64, i64* %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %187, i64 %193)
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %196 = load i64, i64* %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %181
  br label %320

202:                                              ; preds = %181
  %203 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %204 = load i64, i64* %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %205, i32 0, i32 0
  store i64 0, i64* %206, align 8
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %208 = load i64, i64* %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %214 = load i64, i64* %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %212, i64 %218)
  %220 = load i32*, i32** %8, align 8
  %221 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %222 = load i64, i64* %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = inttoptr i64 %226 to i8*
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %229 = load i64, i64* %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @lua_pushlstring(i32* %220, i8* %227, i32 %233)
  %235 = load i32*, i32** %8, align 8
  %236 = call i32 @lua_pushvalue(i32* %235, i32 -1)
  %237 = load i32*, i32** %8, align 8
  %238 = call i32 @lua_rawget(i32* %237, i32 -3)
  %239 = load i32*, i32** %8, align 8
  %240 = call i64 @lua_isnil(i32* %239, i32 -1)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %262

242:                                              ; preds = %202
  %243 = load i32*, i32** %8, align 8
  %244 = call i32 @lua_pop(i32* %243, i32 1)
  %245 = load i32*, i32** %8, align 8
  %246 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %247 = load i64, i64* %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = inttoptr i64 %251 to i8*
  %253 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %254 = load i64, i64* %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @lua_pushlstring(i32* %245, i8* %252, i32 %258)
  %260 = load i32*, i32** %8, align 8
  %261 = call i32 @lua_rawset(i32* %260, i32 -3)
  br label %319

262:                                              ; preds = %202
  %263 = load i32*, i32** %8, align 8
  %264 = call i32 @lua_istable(i32* %263, i32 -1)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %295, label %266

266:                                              ; preds = %262
  %267 = load i32*, i32** %8, align 8
  %268 = call i32 @lua_createtable(i32* %267, i32 4, i64 0)
  %269 = load i32*, i32** %8, align 8
  %270 = call i32 @lua_insert(i32* %269, i32 -2)
  %271 = load i32*, i32** %8, align 8
  %272 = call i32 @lua_rawseti(i32* %271, i32 -2, i32 1)
  %273 = load i32*, i32** %8, align 8
  %274 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %275 = load i64, i64* %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %274, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = inttoptr i64 %279 to i8*
  %281 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %282 = load i64, i64* %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %281, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @lua_pushlstring(i32* %273, i8* %280, i32 %286)
  %288 = load i32*, i32** %8, align 8
  %289 = load i32*, i32** %8, align 8
  %290 = call i32 @lua_objlen(i32* %289, i32 -2)
  %291 = add nsw i32 %290, 1
  %292 = call i32 @lua_rawseti(i32* %288, i32 -2, i32 %291)
  %293 = load i32*, i32** %8, align 8
  %294 = call i32 @lua_rawset(i32* %293, i32 -3)
  br label %318

295:                                              ; preds = %262
  %296 = load i32*, i32** %8, align 8
  %297 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %298 = load i64, i64* %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %297, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = inttoptr i64 %302 to i8*
  %304 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %305 = load i64, i64* %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %304, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @lua_pushlstring(i32* %296, i8* %303, i32 %309)
  %311 = load i32*, i32** %8, align 8
  %312 = load i32*, i32** %8, align 8
  %313 = call i32 @lua_objlen(i32* %312, i32 -2)
  %314 = add nsw i32 %313, 1
  %315 = call i32 @lua_rawseti(i32* %311, i32 -2, i32 %314)
  %316 = load i32*, i32** %8, align 8
  %317 = call i32 @lua_pop(i32* %316, i32 2)
  br label %318

318:                                              ; preds = %295, %266
  br label %319

319:                                              ; preds = %318, %242
  br label %320

320:                                              ; preds = %319, %201
  %321 = load i64, i64* %5, align 8
  %322 = add i64 %321, 1
  store i64 %322, i64* %5, align 8
  br label %162

323:                                              ; preds = %173
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %325 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i32 0, i32 6
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %345

329:                                              ; preds = %323
  %330 = load i32*, i32** %8, align 8
  %331 = call i32 @lua_pushliteral(i32* %330, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %332 = load i32*, i32** %8, align 8
  %333 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %333, i32 0, i32 6
  %335 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = inttoptr i64 %336 to i8*
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 6
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @lua_pushlstring(i32* %332, i8* %337, i32 %341)
  %343 = load i32*, i32** %8, align 8
  %344 = call i32 @lua_rawset(i32* %343, i32 -3)
  br label %345

345:                                              ; preds = %329, %323
  %346 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %347 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %346, i32 0, i32 5
  %348 = load i32*, i32** %347, align 8
  %349 = icmp eq i32* %348, null
  br i1 %349, label %350, label %366

350:                                              ; preds = %345
  %351 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = icmp sge i64 %353, 0
  br i1 %354, label %355, label %366

355:                                              ; preds = %350
  %356 = load i32*, i32** %8, align 8
  %357 = call i32 @lua_pushliteral(i32* %356, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %358 = load i32*, i32** %8, align 8
  %359 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = trunc i64 %361 to i32
  %363 = call i32 @lua_pushnumber(i32* %358, i32 %362)
  %364 = load i32*, i32** %8, align 8
  %365 = call i32 @lua_rawset(i32* %364, i32 -3)
  br label %366

366:                                              ; preds = %355, %350, %345
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %368 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %367, i32 0, i32 4
  %369 = load %struct.TYPE_26__*, %struct.TYPE_26__** %368, align 8
  %370 = icmp ne %struct.TYPE_26__* %369, null
  br i1 %370, label %371, label %399

371:                                              ; preds = %366
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %373 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %372, i32 0, i32 4
  %374 = load %struct.TYPE_26__*, %struct.TYPE_26__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %399

379:                                              ; preds = %371
  %380 = load i32*, i32** %8, align 8
  %381 = call i32 @lua_pushliteral(i32* %380, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %382 = load i32*, i32** %8, align 8
  %383 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %384 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %383, i32 0, i32 4
  %385 = load %struct.TYPE_26__*, %struct.TYPE_26__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = inttoptr i64 %388 to i8*
  %390 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %391 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %390, i32 0, i32 4
  %392 = load %struct.TYPE_26__*, %struct.TYPE_26__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = call i32 @lua_pushlstring(i32* %382, i8* %389, i32 %395)
  %397 = load i32*, i32** %8, align 8
  %398 = call i32 @lua_rawset(i32* %397, i32 -3)
  br label %399

399:                                              ; preds = %379, %371, %366
  %400 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %401 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = icmp ne i32 %402, -1
  br i1 %403, label %404, label %434

404:                                              ; preds = %399
  %405 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %406 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %405, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @NGX_HTTP_OK, align 8
  %409 = icmp ne i64 %407, %408
  br i1 %409, label %410, label %433

410:                                              ; preds = %404
  %411 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %412 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %411, i32 0, i32 2
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* @NGX_HTTP_PARTIAL_CONTENT, align 8
  %415 = icmp ne i64 %413, %414
  br i1 %415, label %416, label %433

416:                                              ; preds = %410
  %417 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %418 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %417, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @NGX_HTTP_NOT_MODIFIED, align 8
  %421 = icmp ne i64 %419, %420
  br i1 %421, label %422, label %433

422:                                              ; preds = %416
  %423 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %424 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %423, i32 0, i32 2
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* @NGX_HTTP_NO_CONTENT, align 8
  %427 = icmp ne i64 %425, %426
  br i1 %427, label %428, label %433

428:                                              ; preds = %422
  %429 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %430 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %429, i32 0, i32 1
  store i32 -1, i32* %430, align 8
  %431 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %432 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %431, i32 0, i32 3
  store i32* null, i32** %432, align 8
  br label %433

433:                                              ; preds = %428, %422, %416, %410, %404
  br label %434

434:                                              ; preds = %433, %399
  %435 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %436 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %435, i32 0, i32 3
  %437 = load i32*, i32** %436, align 8
  %438 = icmp eq i32* %437, null
  br i1 %438, label %439, label %458

439:                                              ; preds = %434
  %440 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %441 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 8
  %443 = icmp ne i32 %442, -1
  br i1 %443, label %444, label %458

444:                                              ; preds = %439
  %445 = getelementptr inbounds [29 x i32], [29 x i32]* %14, i64 0, i64 0
  %446 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %447 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 8
  %449 = call i32 @ngx_http_time(i32* %445, i32 %448)
  %450 = load i32*, i32** %8, align 8
  %451 = call i32 @lua_pushliteral(i32* %450, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %452 = load i32*, i32** %8, align 8
  %453 = getelementptr inbounds [29 x i32], [29 x i32]* %14, i64 0, i64 0
  %454 = bitcast i32* %453 to i8*
  %455 = call i32 @lua_pushlstring(i32* %452, i8* %454, i32 116)
  %456 = load i32*, i32** %8, align 8
  %457 = call i32 @lua_rawset(i32* %456, i32 -3)
  br label %458

458:                                              ; preds = %444, %439, %434
  %459 = load i32*, i32** %8, align 8
  %460 = call i32 @lua_setfield(i32* %459, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %461

461:                                              ; preds = %458
  %462 = load i64, i64* %7, align 8
  %463 = add i64 %462, 1
  store i64 %463, i64* %7, align 8
  br label %28

464:                                              ; preds = %28
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @lua_createtable(i32*, i32, i64) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @ngx_pfree(i32, i64) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @lua_objlen(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @ngx_http_time(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

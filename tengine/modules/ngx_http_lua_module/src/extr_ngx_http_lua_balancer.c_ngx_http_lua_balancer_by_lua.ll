; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_balancer.c_ngx_http_lua_balancer_by_lua.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_balancer.c_ngx_http_lua_balancer_by_lua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8*, i32 }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_17__, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@ngx_http_lua_balancer_handler_file = common dso_local global i32* null, align 8
@NGX_HTTP_LUA_FILE_KEY_LEN = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_FILE_TAG = common dso_local global i8* null, align 8
@NGX_HTTP_LUA_FILE_TAG_LEN = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_INLINE_KEY_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"balancer_by_lua\00", align 1
@NGX_HTTP_LUA_INLINE_TAG = common dso_local global i8* null, align 8
@NGX_HTTP_LUA_INLINE_TAG_LEN = common dso_local global i32 0, align 4
@ngx_http_upstream_module = common dso_local global i32 0, align 4
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"load balancing method redefined\00", align 1
@ngx_http_lua_balancer_init = common dso_local global i64 0, align 8
@NGX_HTTP_UPSTREAM_CREATE = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_WEIGHT = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_MAX_FAILS = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_FAIL_TIMEOUT = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_DOWN = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_http_lua_balancer_by_lua(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %11, align 8
  %15 = call i32 @dd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %21, i8** %4, align 8
  br label %178

22:                                               ; preds = %3
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %178

29:                                               ; preds = %22
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %10, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = ptrtoint i32* %37 to i64
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  store i64 %38, i64* %41, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** @ngx_http_lua_balancer_handler_file, align 8
  %46 = icmp eq i32* %44, %45
  br i1 %46, label %47, label %106

47:                                               ; preds = %29
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @ngx_http_lua_rebase_path(i32 %50, i8* %54, i32 %58)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %63, i8** %4, align 8
  br label %178

64:                                               ; preds = %47
  %65 = load i8*, i8** %9, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  store i8* %65, i8** %69, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @ngx_strlen(i8* %70)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @NGX_HTTP_LUA_FILE_KEY_LEN, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i8* @ngx_palloc(i32 %78, i32 %80)
  store i8* %81, i8** %8, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %64
  %85 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %85, i8** %4, align 8
  br label %178

86:                                               ; preds = %64
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** @NGX_HTTP_LUA_FILE_TAG, align 8
  %93 = load i32, i32* @NGX_HTTP_LUA_FILE_TAG_LEN, align 4
  %94 = call i8* @ngx_copy(i8* %91, i8* %92, i32 %93)
  store i8* %94, i8** %8, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i64 1
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @ngx_http_lua_digest_hex(i8* %95, i8* %99, i32 %103)
  store i8* %104, i8** %8, align 8
  %105 = load i8*, i8** %8, align 8
  store i8 0, i8* %105, align 1
  br label %148

106:                                              ; preds = %29
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i64 1
  %112 = bitcast %struct.TYPE_17__* %109 to i8*
  %113 = bitcast %struct.TYPE_17__* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 16, i1 false)
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @NGX_HTTP_LUA_INLINE_KEY_LEN, align 4
  %118 = sext i32 %117 to i64
  %119 = add i64 16, %118
  %120 = trunc i64 %119 to i32
  %121 = call i8* @ngx_palloc(i32 %116, i32 %120)
  store i8* %121, i8** %8, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %106
  %125 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %125, i8** %4, align 8
  br label %178

126:                                              ; preds = %106
  %127 = load i8*, i8** %8, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  store i8* %127, i8** %130, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = call i8* @ngx_copy(i8* %131, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 15)
  store i8* %132, i8** %8, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load i8*, i8** @NGX_HTTP_LUA_INLINE_TAG, align 8
  %135 = load i32, i32* @NGX_HTTP_LUA_INLINE_TAG_LEN, align 4
  %136 = call i8* @ngx_copy(i8* %133, i8* %134, i32 %135)
  store i8* %136, i8** %8, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i64 1
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @ngx_http_lua_digest_hex(i8* %137, i8* %141, i32 %145)
  store i8* %146, i8** %8, align 8
  %147 = load i8*, i8** %8, align 8
  store i8 0, i8* %147, align 1
  br label %148

148:                                              ; preds = %126, %86
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %150 = load i32, i32* @ngx_http_upstream_module, align 4
  %151 = call %struct.TYPE_18__* @ngx_http_conf_get_module_srv_conf(%struct.TYPE_20__* %149, i32 %150)
  store %struct.TYPE_18__* %151, %struct.TYPE_18__** %12, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = load i32, i32* @NGX_LOG_WARN, align 4
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %160 = call i32 @ngx_conf_log_error(i32 %158, %struct.TYPE_20__* %159, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %161

161:                                              ; preds = %157, %148
  %162 = load i64, i64* @ngx_http_lua_balancer_init, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  store i64 %162, i64* %165, align 8
  %166 = load i32, i32* @NGX_HTTP_UPSTREAM_CREATE, align 4
  %167 = load i32, i32* @NGX_HTTP_UPSTREAM_WEIGHT, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @NGX_HTTP_UPSTREAM_MAX_FAILS, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @NGX_HTTP_UPSTREAM_FAIL_TIMEOUT, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @NGX_HTTP_UPSTREAM_DOWN, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %177, i8** %4, align 8
  br label %178

178:                                              ; preds = %161, %124, %84, %62, %28, %20
  %179 = load i8*, i8** %4, align 8
  ret i8* %179
}

declare dso_local i32 @dd(i8*) #1

declare dso_local i8* @ngx_http_lua_rebase_path(i32, i8*, i32) #1

declare dso_local i32 @ngx_strlen(i8*) #1

declare dso_local i8* @ngx_palloc(i32, i32) #1

declare dso_local i8* @ngx_copy(i8*, i8*, i32) #1

declare dso_local i8* @ngx_http_lua_digest_hex(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_18__* @ngx_http_conf_get_module_srv_conf(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_20__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

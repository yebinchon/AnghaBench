; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_directive.c_ngx_http_lua_body_filter_by_lua.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_directive.c_ngx_http_lua_body_filter_by_lua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i8*, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_22__* }

@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"invalid location config: no runnable Lua code\00", align 1
@ngx_http_lua_body_filter_inline = common dso_local global i32* null, align 8
@NGX_HTTP_LUA_INLINE_KEY_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"body_filter_by_lua\00", align 1
@NGX_HTTP_LUA_INLINE_TAG = common dso_local global i8* null, align 8
@NGX_HTTP_LUA_INLINE_TAG_LEN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_LUA_FILE_KEY_LEN = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_FILE_TAG = common dso_local global i8* null, align 8
@NGX_HTTP_LUA_FILE_TAG_LEN = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_http_lua_body_filter_by_lua(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %11, align 8
  %15 = call i32 @dd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %21, i8** %4, align 8
  br label %159

22:                                               ; preds = %3
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %159

28:                                               ; preds = %22
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %9, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i32, i32* @NGX_LOG_ERR, align 4
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %42 = call i32 @ngx_conf_log_error(i32 %40, %struct.TYPE_22__* %41, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %43, i8** %4, align 8
  br label %159

44:                                               ; preds = %28
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** @ngx_http_lua_body_filter_inline, align 8
  %49 = icmp eq i32* %47, %48
  br i1 %49, label %50, label %92

50:                                               ; preds = %44
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i64 1
  %56 = bitcast %struct.TYPE_18__* %53 to i8*
  %57 = bitcast %struct.TYPE_18__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NGX_HTTP_LUA_INLINE_KEY_LEN, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 19, %62
  %64 = add i64 %63, 1
  %65 = trunc i64 %64 to i32
  %66 = call i8* @ngx_palloc(i32 %60, i32 %65)
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %50
  %70 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %70, i8** %4, align 8
  br label %159

71:                                               ; preds = %50
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i8* @ngx_copy(i8* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 18)
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** @NGX_HTTP_LUA_INLINE_TAG, align 8
  %79 = load i32, i32* @NGX_HTTP_LUA_INLINE_TAG_LEN, align 4
  %80 = call i8* @ngx_copy(i8* %77, i8* %78, i32 %79)
  store i8* %80, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @ngx_http_lua_digest_hex(i8* %81, i32 %85, i64 %89)
  store i8* %90, i8** %8, align 8
  %91 = load i8*, i8** %8, align 8
  store i8 0, i8* %91, align 1
  br label %144

92:                                               ; preds = %44
  %93 = call i32 @ngx_memzero(%struct.TYPE_21__* %12, i32 24)
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  store %struct.TYPE_22__* %94, %struct.TYPE_22__** %95, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i64 1
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store %struct.TYPE_18__* %97, %struct.TYPE_18__** %98, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  store %struct.TYPE_17__* %100, %struct.TYPE_17__** %101, align 8
  %102 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_21__* %12)
  %103 = load i64, i64* @NGX_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %92
  %106 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %106, i8** %4, align 8
  br label %159

107:                                              ; preds = %92
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %143

113:                                              ; preds = %107
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @NGX_HTTP_LUA_FILE_KEY_LEN, align 4
  %118 = add nsw i32 %117, 1
  %119 = call i8* @ngx_palloc(i32 %116, i32 %118)
  store i8* %119, i8** %8, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %123, i8** %4, align 8
  br label %159

124:                                              ; preds = %113
  %125 = load i8*, i8** %8, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load i8*, i8** @NGX_HTTP_LUA_FILE_TAG, align 8
  %130 = load i32, i32* @NGX_HTTP_LUA_FILE_TAG_LEN, align 4
  %131 = call i8* @ngx_copy(i8* %128, i8* %129, i32 %130)
  store i8* %131, i8** %8, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i64 1
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i64 1
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i8* @ngx_http_lua_digest_hex(i8* %132, i32 %136, i64 %140)
  store i8* %141, i8** %8, align 8
  %142 = load i8*, i8** %8, align 8
  store i8 0, i8* %142, align 1
  br label %143

143:                                              ; preds = %124, %107
  br label %144

144:                                              ; preds = %143, %71
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = ptrtoint i32* %147 to i64
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %152 = load i32, i32* @ngx_http_lua_module, align 4
  %153 = call %struct.TYPE_19__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_22__* %151, i32 %152)
  store %struct.TYPE_19__* %153, %struct.TYPE_19__** %10, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 4
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  store i32 1, i32* %157, align 4
  %158 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %158, i8** %4, align 8
  br label %159

159:                                              ; preds = %144, %122, %105, %69, %39, %27, %20
  %160 = load i8*, i8** %4, align 8
  ret i8* %160
}

declare dso_local i32 @dd(i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_22__*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_palloc(i32, i32) #1

declare dso_local i8* @ngx_copy(i8*, i8*, i32) #1

declare dso_local i8* @ngx_http_lua_digest_hex(i8*, i32, i64) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_19__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

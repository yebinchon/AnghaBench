; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_directive.c_ngx_http_lua_access_by_lua.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_directive.c_ngx_http_lua_access_by_lua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i8*, i8*, i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { %struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_23__* }

@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"invalid location config: no runnable Lua code\00", align 1
@ngx_http_lua_access_handler_inline = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"access_by_lua\00", align 1
@NGX_HTTP_LUA_INLINE_KEY_LEN = common dso_local global i64 0, align 8
@NGX_HTTP_LUA_INLINE_TAG = common dso_local global i8* null, align 8
@NGX_HTTP_LUA_INLINE_TAG_LEN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_LUA_FILE_KEY_LEN = common dso_local global i64 0, align 8
@NGX_HTTP_LUA_FILE_TAG = common dso_local global i8* null, align 8
@NGX_HTTP_LUA_FILE_TAG_LEN = common dso_local global i64 0, align 8
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_http_lua_access_by_lua(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %13, align 8
  %17 = call i32 @dd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %23, i8** %4, align 8
  br label %172

24:                                               ; preds = %3
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %172

30:                                               ; preds = %24
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %11, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load i32, i32* @NGX_LOG_ERR, align 4
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %44 = call i32 @ngx_conf_log_error(i32 %42, %struct.TYPE_23__* %43, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %45, i8** %4, align 8
  br label %172

46:                                               ; preds = %30
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** @ngx_http_lua_access_handler_inline, align 8
  %51 = icmp eq i32* %49, %50
  br i1 %51, label %52, label %105

52:                                               ; preds = %46
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = call i8* @ngx_http_lua_gen_chunk_name(%struct.TYPE_23__* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 13, i64* %8)
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %58, i8** %4, align 8
  br label %172

59:                                               ; preds = %52
  %60 = load i8*, i8** %10, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i64 1
  %68 = bitcast %struct.TYPE_19__* %65 to i8*
  %69 = bitcast %struct.TYPE_19__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @NGX_HTTP_LUA_INLINE_KEY_LEN, align 8
  %75 = add i64 %73, %74
  %76 = add i64 %75, 1
  %77 = call i8* @ngx_palloc(i32 %72, i64 %76)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %59
  %81 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %81, i8** %4, align 8
  br label %172

82:                                               ; preds = %59
  %83 = load i8*, i8** %9, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i8* @ngx_copy(i8* %86, i8* %87, i64 %88)
  store i8* %89, i8** %9, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** @NGX_HTTP_LUA_INLINE_TAG, align 8
  %92 = load i64, i64* @NGX_HTTP_LUA_INLINE_TAG_LEN, align 8
  %93 = call i8* @ngx_copy(i8* %90, i8* %91, i64 %92)
  store i8* %93, i8** %9, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i8* @ngx_http_lua_digest_hex(i8* %94, i32 %98, i64 %102)
  store i8* %103, i8** %9, align 8
  %104 = load i8*, i8** %9, align 8
  store i8 0, i8* %104, align 1
  br label %157

105:                                              ; preds = %46
  %106 = call i32 @ngx_memzero(%struct.TYPE_22__* %14, i32 24)
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  store %struct.TYPE_23__* %107, %struct.TYPE_23__** %108, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  store %struct.TYPE_19__* %110, %struct.TYPE_19__** %111, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  store %struct.TYPE_18__* %113, %struct.TYPE_18__** %114, align 8
  %115 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_22__* %14)
  %116 = load i64, i64* @NGX_OK, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %105
  %119 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %119, i8** %4, align 8
  br label %172

120:                                              ; preds = %105
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %156

126:                                              ; preds = %120
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i64, i64* @NGX_HTTP_LUA_FILE_KEY_LEN, align 8
  %131 = add nsw i64 %130, 1
  %132 = call i8* @ngx_palloc(i32 %129, i64 %131)
  store i8* %132, i8** %9, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %136, i8** %4, align 8
  br label %172

137:                                              ; preds = %126
  %138 = load i8*, i8** %9, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = load i8*, i8** @NGX_HTTP_LUA_FILE_TAG, align 8
  %143 = load i64, i64* @NGX_HTTP_LUA_FILE_TAG_LEN, align 8
  %144 = call i8* @ngx_copy(i8* %141, i8* %142, i64 %143)
  store i8* %144, i8** %9, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i64 1
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i8* @ngx_http_lua_digest_hex(i8* %145, i32 %149, i64 %153)
  store i8* %154, i8** %9, align 8
  %155 = load i8*, i8** %9, align 8
  store i8 0, i8* %155, align 1
  br label %156

156:                                              ; preds = %137, %120
  br label %157

157:                                              ; preds = %156, %82
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = ptrtoint i32* %160 to i64
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %165 = load i32, i32* @ngx_http_lua_module, align 4
  %166 = call %struct.TYPE_20__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_23__* %164, i32 %165)
  store %struct.TYPE_20__* %166, %struct.TYPE_20__** %12, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  store i32 1, i32* %168, align 4
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 1
  store i32 1, i32* %170, align 4
  %171 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %171, i8** %4, align 8
  br label %172

172:                                              ; preds = %157, %135, %118, %80, %57, %41, %29, %22
  %173 = load i8*, i8** %4, align 8
  ret i8* %173
}

declare dso_local i32 @dd(i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_23__*, i32, i8*) #1

declare dso_local i8* @ngx_http_lua_gen_chunk_name(%struct.TYPE_23__*, i8*, i32, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_palloc(i32, i64) #1

declare dso_local i8* @ngx_copy(i8*, i8*, i64) #1

declare dso_local i8* @ngx_http_lua_digest_hex(i8*, i32, i64) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_20__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_create_headers_metatable.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_create_headers_metatable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.ngx_http_lua_create_headers_metatable.buf = private unnamed_addr constant [139 x i8] c"local tb, key = ...\0Alocal new_key = string.gsub(string.lower(key), '_', '-')\0Aif new_key ~= key then return tb[new_key] else return nil end\00", align 16
@headers_metatable_key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"=headers metatable\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"failed to load Lua code for the metamethod for headers: %i: %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_create_headers_metatable(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [139 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = bitcast [139 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([139 x i8], [139 x i8]* @__const.ngx_http_lua_create_headers_metatable.buf, i32 0, i32 0), i64 139, i1 false)
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @headers_metatable_key, align 4
  %10 = call i32 @ngx_http_lua_lightudata_mask(i32 %9)
  %11 = call i32 @lua_pushlightuserdata(i32* %8, i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @lua_createtable(i32* %12, i32 0, i32 1)
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds [139 x i8], [139 x i8]* %6, i64 0, i64 0
  %16 = call i32 @luaL_loadbuffer(i32* %14, i8* %15, i32 138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @NGX_LOG_ERR, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @lua_tostring(i32* %23, i32 -1)
  %25 = call i32 @ngx_log_error(i32 %20, i32* %21, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @lua_pop(i32* %26, i32 3)
  br label %34

28:                                               ; preds = %2
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @lua_setfield(i32* %29, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %33 = call i32 @lua_rawset(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #2

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #2

declare dso_local i32 @lua_createtable(i32*, i32, i32) #2

declare dso_local i32 @luaL_loadbuffer(i32*, i8*, i32, i8*) #2

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*, i32, i32) #2

declare dso_local i32 @lua_tostring(i32*, i32) #2

declare dso_local i32 @lua_pop(i32*, i32) #2

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #2

declare dso_local i32 @lua_rawset(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

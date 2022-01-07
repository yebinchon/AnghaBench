; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_coroutine.c_ngx_http_lua_inject_coroutine_api.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_coroutine.c_ngx_http_lua_inject_coroutine_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"coroutine\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"_create\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"_resume\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"yield\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"_yield\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"_status\00", align 1
@ngx_http_lua_coroutine_create = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"__create\00", align 1
@ngx_http_lua_coroutine_resume = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"__resume\00", align 1
@ngx_http_lua_coroutine_yield = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"__yield\00", align 1
@ngx_http_lua_coroutine_status = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"__status\00", align 1
@__const.ngx_http_lua_inject_coroutine_api.buf = private unnamed_addr constant [606 x i8] c"local keys = {'create', 'yield', 'resume', 'status'}\0Alocal getfenv = getfenv\0Afor _, key in ipairs(keys) do\0Alocal std = coroutine['_' .. key]\0Alocal ours = coroutine['__' .. key]\0Alocal raw_ctx = ngx._phase_ctx\0Acoroutine[key] = function (...)\0Alocal r = getfenv(0).__ngx_req\0Aif r ~= nil then\0Alocal ctx = raw_ctx(r)\0Aif ctx ~= 0x020 and ctx ~= 0x040 then\0Areturn ours(...)\0Aend\0Aend\0Areturn std(...)\0Aend\0Aend\0Alocal create, resume = coroutine.create, coroutine.resume\0Acoroutine.wrap = function(f)\0Alocal co = create(f)\0Areturn function(...) return select(2, resume(co, ...)) end\0Aend\0Apackage.loaded.coroutine = coroutine\00", align 16
@.str.14 = private unnamed_addr constant [16 x i8] c"=coroutine.wrap\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [53 x i8] c"failed to load Lua code for coroutine.wrap(): %i: %s\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"failed to run the Lua code for coroutine.wrap(): %i: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_inject_coroutine_api(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [606 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @lua_createtable(i32* %7, i32 0, i32 14)
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @lua_getglobal(i32* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @lua_getfield(i32* %11, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @lua_setfield(i32* %13, i32 -3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @lua_getfield(i32* %15, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @lua_setfield(i32* %17, i32 -3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @lua_getfield(i32* %19, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @lua_setfield(i32* %21, i32 -3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @lua_getfield(i32* %23, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @lua_setfield(i32* %25, i32 -3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @lua_getfield(i32* %27, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @lua_setfield(i32* %29, i32 -3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @lua_pop(i32* %31, i32 1)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @ngx_http_lua_coroutine_create, align 4
  %35 = call i32 @lua_pushcfunction(i32* %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @lua_setfield(i32* %36, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @ngx_http_lua_coroutine_resume, align 4
  %40 = call i32 @lua_pushcfunction(i32* %38, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @lua_setfield(i32* %41, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @ngx_http_lua_coroutine_yield, align 4
  %45 = call i32 @lua_pushcfunction(i32* %43, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @lua_setfield(i32* %46, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @ngx_http_lua_coroutine_status, align 4
  %50 = call i32 @lua_pushcfunction(i32* %48, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @lua_setfield(i32* %51, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @lua_setglobal(i32* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %55 = bitcast [606 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %55, i8* align 16 getelementptr inbounds ([606 x i8], [606 x i8]* @__const.ngx_http_lua_inject_coroutine_api.buf, i32 0, i32 0), i64 606, i1 false)
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds [606 x i8], [606 x i8]* %6, i64 0, i64 0
  %58 = call i32 @luaL_loadbuffer(i32* %56, i8* %57, i32 605, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %2
  %62 = load i32, i32* @NGX_LOG_ERR, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @lua_tostring(i32* %65, i32 -1)
  %67 = call i32 @ngx_log_error(i32 %62, i32* %63, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i32 %64, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @lua_pop(i32* %68, i32 1)
  br label %84

70:                                               ; preds = %2
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @lua_pcall(i32* %71, i32 0, i32 0, i32 0)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load i32, i32* @NGX_LOG_ERR, align 4
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @lua_tostring(i32* %79, i32 -1)
  %81 = call i32 @ngx_log_error(i32 %76, i32* %77, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i32 %78, i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @lua_pop(i32* %82, i32 1)
  br label %84

84:                                               ; preds = %61, %75, %70
  ret void
}

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setglobal(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @luaL_loadbuffer(i32*, i8*, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

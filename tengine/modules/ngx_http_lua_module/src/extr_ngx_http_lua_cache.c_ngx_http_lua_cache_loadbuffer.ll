; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_cache.c_ngx_http_lua_cache_loadbuffer.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_cache.c_ngx_http_lua_cache_loadbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"looking up Lua code cache with key '%s'\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"Code cache hit! cache key='%s', stack top=%d, script='%.*s'\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"Code cache missed! cache key='%s', stack top=%d, script='%.*s'\00", align 1
@LUA_ERRMEM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"memory allocation error\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"fail to generate new closure from the closure factory\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to load inlined Lua code: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_cache_loadbuffer(i32* %0, i32* %1, i32* %2, i64 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* null, i8** %16, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @lua_gettop(i32* %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 @ngx_log_debug1(i32 %19, i32* %20, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %21)
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = call i64 @ngx_http_lua_cache_load_code(i32* %23, i32* %24, i8* %26)
  store i64 %27, i64* %15, align 8
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* @NGX_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %6
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @lua_gettop(i32* %33)
  %35 = load i64, i64* %11, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @dd(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32* %32, i32 %34, i32 %36, i32* %37)
  %39 = load i64, i64* @NGX_OK, align 8
  store i64 %39, i64* %7, align 8
  br label %97

40:                                               ; preds = %6
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* @NGX_ERROR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* @NGX_ERROR, align 8
  store i64 %45, i64* %7, align 8
  br label %97

46:                                               ; preds = %40
  %47 = load i32*, i32** %12, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @lua_gettop(i32* %48)
  %50 = load i64, i64* %11, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @dd(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32* %47, i32 %49, i32 %51, i32* %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = load i64, i64* %11, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i64 @ngx_http_lua_clfactory_loadbuffer(i32* %54, i8* %56, i64 %57, i8* %58)
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* %15, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %46
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* @LUA_ERRMEM, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  br label %76

67:                                               ; preds = %62
  %68 = load i32*, i32** %9, align 8
  %69 = call i64 @lua_isstring(i32* %68, i32 -1)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32*, i32** %9, align 8
  %73 = call i8* @lua_tostring(i32* %72, i32 -1)
  store i8* %73, i8** %16, align 8
  br label %75

74:                                               ; preds = %67
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %75

75:                                               ; preds = %74, %71
  br label %76

76:                                               ; preds = %75, %66
  br label %88

77:                                               ; preds = %46
  %78 = load i32*, i32** %9, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = bitcast i32* %79 to i8*
  %81 = call i64 @ngx_http_lua_cache_store_code(i32* %78, i8* %80)
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* @NGX_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %88

86:                                               ; preds = %77
  %87 = load i64, i64* @NGX_OK, align 8
  store i64 %87, i64* %7, align 8
  br label %97

88:                                               ; preds = %85, %76
  %89 = load i32, i32* @NGX_LOG_ERR, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = call i32 @ngx_log_error(i32 %89, i32* %90, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %91)
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @lua_settop(i32* %93, i32 %94)
  %96 = load i64, i64* @NGX_ERROR, align 8
  store i64 %96, i64* %7, align 8
  br label %97

97:                                               ; preds = %88, %86, %44, %31
  %98 = load i64, i64* %7, align 8
  ret i64 %98
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32*, i32, i8*, i32*) #1

declare dso_local i64 @ngx_http_lua_cache_load_code(i32*, i32*, i8*) #1

declare dso_local i32 @dd(i8*, i32*, i32, i32, i32*) #1

declare dso_local i64 @ngx_http_lua_clfactory_loadbuffer(i32*, i8*, i64, i8*) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i64 @ngx_http_lua_cache_store_code(i32*, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*, i8*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_cache.c_ngx_http_lua_cache_loadfile.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_cache.c_ngx_http_lua_cache_loadfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_FILE_KEY_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"CACHE file key not pre-calculated...calculating\00", align 1
@NGX_HTTP_LUA_FILE_TAG = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_FILE_TAG_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"CACHE file key already pre-calculated\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"looking up Lua code cache with key '%s'\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"Code cache hit! cache key='%s', stack top=%d, file path='%s'\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Code cache missed! cache key='%s', stack top=%d, file path='%s'\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"loadfile returns %d (%d)\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"memory allocation error\00", align 1
@NGX_HTTP_NOT_FOUND = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"fail to generate new closure from the closure factory\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"failed to load external Lua file \22%s\22: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_cache_loadfile(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i32, i32* @NGX_ERROR, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @NGX_HTTP_LUA_FILE_KEY_LEN, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  store i8* null, i8** %16, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @lua_gettop(i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %4
  %29 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @NGX_HTTP_LUA_FILE_TAG, align 4
  %31 = load i32, i32* @NGX_HTTP_LUA_FILE_TAG_LEN, align 4
  %32 = call i8* @ngx_copy(i8* %23, i32 %30, i32 %31)
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @ngx_strlen(i8* %35)
  %37 = call i8* @ngx_http_lua_digest_hex(i8* %33, i8* %34, i32 %36)
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  store i8 0, i8* %38, align 1
  store i8* %23, i8** %9, align 8
  br label %41

39:                                               ; preds = %4
  %40 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %28
  %42 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @ngx_log_debug1(i32 %42, i32* %43, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @ngx_http_lua_cache_load_code(i32* %46, i32* %47, i8* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @NGX_OK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %41
  %54 = load i8*, i8** %9, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @lua_gettop(i32* %55)
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8* %54, i32 %56, i8* %57)
  %59 = load i32, i32* @NGX_OK, align 4
  store i32 %59, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %114

60:                                               ; preds = %41
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @NGX_ERROR, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @NGX_ERROR, align 4
  store i32 %65, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %114

66:                                               ; preds = %60
  %67 = load i8*, i8** %9, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @lua_gettop(i32* %68)
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i8* %67, i32 %69, i8* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @ngx_http_lua_clfactory_loadfile(i32* %72, i8* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 129)
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %66
  %80 = load i32, i32* %11, align 4
  switch i32 %80, label %84 [
    i32 128, label %81
    i32 129, label %82
  ]

81:                                               ; preds = %79
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  br label %93

82:                                               ; preds = %79
  %83 = load i32, i32* @NGX_HTTP_NOT_FOUND, align 4
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %79, %82
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @lua_isstring(i32* %85, i32 -1)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32*, i32** %7, align 8
  %90 = call i8* @lua_tostring(i32* %89, i32 -1)
  store i8* %90, i8** %16, align 8
  br label %92

91:                                               ; preds = %84
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %16, align 8
  br label %92

92:                                               ; preds = %91, %88
  br label %93

93:                                               ; preds = %92, %81
  br label %104

94:                                               ; preds = %66
  %95 = load i32*, i32** %7, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @ngx_http_lua_cache_store_code(i32* %95, i8* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @NGX_OK, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i8** %16, align 8
  br label %104

102:                                              ; preds = %94
  %103 = load i32, i32* @NGX_OK, align 4
  store i32 %103, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %114

104:                                              ; preds = %101, %93
  %105 = load i32, i32* @NGX_LOG_ERR, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i8*, i8** %16, align 8
  %109 = call i32 @ngx_log_error(i32 %105, i32* %106, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8* %107, i8* %108)
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @lua_settop(i32* %110, i32 %111)
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %114

114:                                              ; preds = %104, %102, %64, %53
  %115 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lua_gettop(i32*) #2

declare dso_local i32 @dd(i8*, ...) #2

declare dso_local i8* @ngx_copy(i8*, i32, i32) #2

declare dso_local i8* @ngx_http_lua_digest_hex(i8*, i8*, i32) #2

declare dso_local i32 @ngx_strlen(i8*) #2

declare dso_local i32 @ngx_log_debug1(i32, i32*, i32, i8*, i8*) #2

declare dso_local i32 @ngx_http_lua_cache_load_code(i32*, i32*, i8*) #2

declare dso_local i32 @ngx_http_lua_clfactory_loadfile(i32*, i8*) #2

declare dso_local i32 @lua_isstring(i32*, i32) #2

declare dso_local i8* @lua_tostring(i32*, i32) #2

declare dso_local i32 @ngx_http_lua_cache_store_code(i32*, i8*) #2

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @lua_settop(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

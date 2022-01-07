; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_cache.c_ngx_http_lua_cache_store_code.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_cache.c_ngx_http_lua_cache_store_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@code_cache_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Code cache table to store: %p\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Error: code cache table to load did not exist!!\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Error: failed to call closure factory!!\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @ngx_http_lua_cache_store_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_cache_store_code(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @code_cache_key, align 4
  %9 = call i32 @ngx_http_lua_lightudata_mask(i32 %8)
  %10 = call i32 @lua_pushlightuserdata(i32* %7, i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %13 = call i32 @lua_rawget(i32* %11, i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @lua_topointer(i32* %14, i32 -1)
  %16 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @lua_istable(i32* %17, i32 -1)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @NGX_ERROR, align 4
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @lua_pushvalue(i32* %24, i32 -2)
  %26 = load i32*, i32** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @lua_setfield(i32* %26, i32 -2, i8* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @lua_pop(i32* %29, i32 1)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @lua_pcall(i32* %31, i32 0, i32 1, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @NGX_ERROR, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %23
  %39 = load i32, i32* @NGX_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %35, %20
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @lua_topointer(i32*, i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

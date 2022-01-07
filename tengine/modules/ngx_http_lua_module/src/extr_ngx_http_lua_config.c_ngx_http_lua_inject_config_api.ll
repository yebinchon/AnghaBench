; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_config.c_ngx_http_lua_inject_config_api.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_config.c_ngx_http_lua_inject_config_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@ngx_http_lua_config_prefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@nginx_version = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"nginx_version\00", align 1
@ngx_http_lua_version = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"ngx_lua_version\00", align 1
@ngx_http_lua_config_configure = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"nginx_configure\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"config\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_inject_config_api(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @lua_createtable(i32* %3, i32 0, i32 6)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @lua_pushboolean(i32* %5, i32 0)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_setfield(i32* %7, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @ngx_http_lua_config_prefix, align 4
  %11 = call i32 @lua_pushcfunction(i32* %9, i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @lua_setfield(i32* %12, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @nginx_version, align 4
  %16 = call i32 @lua_pushinteger(i32* %14, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_setfield(i32* %17, i32 -2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @ngx_http_lua_version, align 4
  %21 = call i32 @lua_pushinteger(i32* %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @lua_setfield(i32* %22, i32 -2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @ngx_http_lua_config_configure, align 4
  %26 = call i32 @lua_pushcfunction(i32* %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @lua_setfield(i32* %27, i32 -2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @lua_pushliteral(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_setfield(i32* %31, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @lua_setfield(i32* %33, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

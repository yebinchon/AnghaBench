; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_inject_arg_api.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_inject_arg_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@ngx_http_lua_param_get = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@ngx_http_lua_param_set = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"top: %d, type -1: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ngx_http_lua_inject_arg_api to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_inject_arg_api(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @lua_pushliteral(i32* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @lua_newtable(i32* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_createtable(i32* %7, i32 0, i32 2)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @ngx_http_lua_param_get, align 4
  %11 = call i32 @lua_pushcfunction(i32* %9, i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @lua_setfield(i32* %12, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @ngx_http_lua_param_set, align 4
  %16 = call i32 @lua_pushcfunction(i32* %14, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_setfield(i32* %17, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @lua_setmetatable(i32* %19, i32 -2)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @lua_gettop(i32* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @luaL_typename(i32* %23, i32 -1)
  %25 = call i32 @dd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @lua_rawset(i32* %26, i32 -3)
  ret void
}

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @dd(i8*, i32, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

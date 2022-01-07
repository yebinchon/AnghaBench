; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-skynet.c_lcallback.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-skynet.c_lcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }

@LUA_TFUNCTION = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@_cb = common dso_local global i32 0, align 4
@LUA_RIDX_MAINTHREAD = common dso_local global i32 0, align 4
@forward_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lcallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcallback(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.skynet_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @lua_upvalueindex(i32 1)
  %8 = call %struct.skynet_context* @lua_touserdata(i32* %6, i32 %7)
  store %struct.skynet_context* %8, %struct.skynet_context** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @lua_toboolean(i32* %9, i32 2)
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @LUA_TFUNCTION, align 4
  %13 = call i32 @luaL_checktype(i32* %11, i32 1, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @lua_settop(i32* %14, i32 1)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %18 = load i32, i32* @_cb, align 4
  %19 = call i32 @lua_rawsetp(i32* %16, i32 %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %22 = load i32, i32* @LUA_RIDX_MAINTHREAD, align 4
  %23 = call i32 @lua_rawgeti(i32* %20, i32 %21, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32* @lua_tothread(i32* %24, i32 -1)
  store i32* %25, i32** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @forward_cb, align 4
  %32 = call i32 @skynet_callback(%struct.skynet_context* %29, i32* %30, i32 %31)
  br label %38

33:                                               ; preds = %1
  %34 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @_cb, align 4
  %37 = call i32 @skynet_callback(%struct.skynet_context* %34, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  ret i32 0
}

declare dso_local %struct.skynet_context* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_rawsetp(i32*, i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32* @lua_tothread(i32*, i32) #1

declare dso_local i32 @skynet_callback(%struct.skynet_context*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_xlua.c_profiler_set_hook.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_xlua.c_profiler_set_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hook_index = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_TFUNCTION = common dso_local global i32 0, align 4
@hook = common dso_local global i32 0, align 4
@LUA_MASKCALL = common dso_local global i32 0, align 4
@LUA_MASKRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @profiler_set_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profiler_set_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i64 @lua_isnoneornil(i32* %3, i32 1)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_pushlightuserdata(i32* %7, i32* @hook_index)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @lua_pushnil(i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %13 = call i32 @lua_rawset(i32* %11, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @lua_sethook(i32* %14, i32 0, i32 0, i32 0)
  br label %33

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @LUA_TFUNCTION, align 4
  %19 = call i32 @luaL_checktype(i32* %17, i32 1, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @lua_pushlightuserdata(i32* %20, i32* @hook_index)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @lua_pushvalue(i32* %22, i32 1)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %26 = call i32 @lua_rawset(i32* %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @hook, align 4
  %29 = load i32, i32* @LUA_MASKCALL, align 4
  %30 = load i32, i32* @LUA_MASKRET, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @lua_sethook(i32* %27, i32 %28, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %16, %6
  ret i32 0
}

declare dso_local i64 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_sethook(i32*, i32, i32, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

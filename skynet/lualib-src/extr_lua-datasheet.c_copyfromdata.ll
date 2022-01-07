; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-datasheet.c_copyfromdata.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-datasheet.c_copyfromdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proxy = type { i32 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@PROXYCACHE = common dso_local global i32 0, align 4
@LUA_TUSERDATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Invalid proxy table %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @copyfromdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copyfromdata(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.proxy*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %6 = load i32, i32* @PROXYCACHE, align 4
  %7 = call i32 @lua_getfield(i32* %4, i32 %5, i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @lua_pushvalue(i32* %8, i32 1)
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @lua_rawget(i32* %10, i32 -2)
  %12 = load i64, i64* @LUA_TUSERDATA, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @lua_topointer(i32* %16, i32 1)
  %18 = call i32 @luaL_error(i32* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32*, i32** %2, align 8
  %21 = call %struct.proxy* @lua_touserdata(i32* %20, i32 -1)
  store %struct.proxy* %21, %struct.proxy** %3, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @lua_pop(i32* %22, i32 2)
  %24 = load i32*, i32** %2, align 8
  %25 = load %struct.proxy*, %struct.proxy** %3, align 8
  %26 = call i32 @copytable(i32* %24, i32 1, %struct.proxy* %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @lua_pushnil(i32* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @lua_setmetatable(i32* %29, i32 1)
  ret void
}

declare dso_local i32 @lua_getfield(i32*, i32, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @lua_rawget(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_topointer(i32*, i32) #1

declare dso_local %struct.proxy* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @copytable(i32*, i32, %struct.proxy*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_loadlib_rel.c_ll_require.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_loadlib_rel.c_ll_require.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@LUA_TNIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ll_require to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_require(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i8* @luaL_checkstring(i32* %5, i32 1)
  store i8* %6, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @lua_settop(i32* %7, i32 1)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %11 = call i64 @lua_getfield(i32* %9, i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @lua_getfield(i32* %12, i32 2, i8* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @lua_toboolean(i32* %15, i32 -1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %54

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_pop(i32* %20, i32 1)
  %22 = load i32*, i32** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @findloader(i32* %22, i8* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @lua_pushstring(i32* %25, i8* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_insert(i32* %28, i32 -2)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_call(i32* %30, i32 2, i32 1)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_isnil(i32* %32, i32 -1)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %19
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @lua_setfield(i32* %36, i32 2, i8* %37)
  br label %39

39:                                               ; preds = %35, %19
  %40 = load i32*, i32** %3, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @lua_getfield(i32* %40, i32 2, i8* %41)
  %43 = load i64, i64* @LUA_TNIL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_pushboolean(i32* %46, i32 1)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @lua_pushvalue(i32* %48, i32 -1)
  %50 = load i32*, i32** %3, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @lua_setfield(i32* %50, i32 2, i8* %51)
  br label %53

53:                                               ; preds = %45, %39
  store i32 1, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i64 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @findloader(i32*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

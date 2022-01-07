; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_package.c_lj_cf_package_module.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_package.c_lj_cf_package_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@LUA_GLOBALSINDEX = common dso_local global i32 0, align 4
@LJ_ERR_BADMODN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"_NAME\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lj_cf_package_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lj_cf_package_module(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i8* @luaL_checkstring(i32* %5, i32 1)
  store i8* %6, i8** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_gettop(i32* %7)
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %4, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %12 = call i32 @lua_getfield(i32* %10, i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @lua_getfield(i32* %13, i32 %14, i8* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_istable(i32* %17, i32 -1)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %1
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @lua_pop(i32* %21, i32 1)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @LUA_GLOBALSINDEX, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = call i32* @luaL_findtable(i32* %23, i32 %24, i8* %25, i32 1)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @LJ_ERR_BADMODN, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @lj_err_callerv(i32* %29, i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %28, %20
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @lua_pushvalue(i32* %34, i32 -1)
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @lua_setfield(i32* %36, i32 %37, i8* %38)
  br label %40

40:                                               ; preds = %33, %1
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @lua_getfield(i32* %41, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @lua_isnil(i32* %43, i32 -1)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @lua_pop(i32* %47, i32 1)
  br label %55

49:                                               ; preds = %40
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @lua_pop(i32* %50, i32 1)
  %52 = load i32*, i32** %2, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @modinit(i32* %52, i8* %53)
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @lua_pushvalue(i32* %56, i32 -1)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @setfenv(i32* %58)
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @dooptions(i32* %60, i32 %62)
  ret i32 0
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32* @luaL_findtable(i32*, i32, i8*, i32) #1

declare dso_local i32 @lj_err_callerv(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @modinit(i32*, i8*) #1

declare dso_local i32 @setfenv(i32*) #1

declare dso_local i32 @dooptions(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

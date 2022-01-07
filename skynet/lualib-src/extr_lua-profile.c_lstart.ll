; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-profile.c_lstart.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-profile.c_lstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTHREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Thread %p start profile more than once\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lstart(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @lua_gettop(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_settop(i32* %9, i32 1)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @LUA_TTHREAD, align 4
  %13 = call i32 @luaL_checktype(i32* %11, i32 1, i32 %12)
  br label %17

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_pushthread(i32* %15)
  br label %17

17:                                               ; preds = %14, %8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @lua_pushvalue(i32* %18, i32 1)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_upvalueindex(i32 2)
  %22 = call i32 @lua_rawget(i32* %20, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_isnil(i32* %23, i32 -1)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_topointer(i32* %28, i32 1)
  %30 = call i32 @luaL_error(i32* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %2, align 4
  br label %48

31:                                               ; preds = %17
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_pushvalue(i32* %32, i32 1)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_pushnumber(i32* %34, double 0.000000e+00)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_upvalueindex(i32 2)
  %38 = call i32 @lua_rawset(i32* %36, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @lua_pushvalue(i32* %39, i32 1)
  %41 = call double (...) @get_time()
  store double %41, double* %4, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = load double, double* %4, align 8
  %44 = call i32 @lua_pushnumber(i32* %42, double %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @lua_upvalueindex(i32 1)
  %47 = call i32 @lua_rawset(i32* %45, i32 %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %31, %26
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @lua_gettop(i32*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_pushthread(i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_topointer(i32*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, double) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local double @get_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

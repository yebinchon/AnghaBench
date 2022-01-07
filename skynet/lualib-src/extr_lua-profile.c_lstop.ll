; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-profile.c_lstop.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-profile.c_lstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTHREAD = common dso_local global i32 0, align 4
@LUA_TNUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Call profile.start() before profile.stop()\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lstop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lstop(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @lua_gettop(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_settop(i32* %10, i32 1)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @LUA_TTHREAD, align 4
  %14 = call i32 @luaL_checktype(i32* %12, i32 1, i32 %13)
  br label %18

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_pushthread(i32* %16)
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_pushvalue(i32* %19, i32 1)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_upvalueindex(i32 1)
  %23 = call i32 @lua_rawget(i32* %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @lua_type(i32* %24, i32 -1)
  %26 = load i64, i64* @LUA_TNUMBER, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @luaL_error(i32* %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  br label %62

31:                                               ; preds = %18
  %32 = load i32*, i32** %3, align 8
  %33 = call double @lua_tonumber(i32* %32, i32 -1)
  %34 = call double @diff_time(double %33)
  store double %34, double* %4, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @lua_pushvalue(i32* %35, i32 1)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @lua_upvalueindex(i32 2)
  %39 = call i32 @lua_rawget(i32* %37, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call double @lua_tonumber(i32* %40, i32 -1)
  store double %41, double* %5, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @lua_pushvalue(i32* %42, i32 1)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @lua_pushnil(i32* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_upvalueindex(i32 1)
  %48 = call i32 @lua_rawset(i32* %46, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @lua_pushvalue(i32* %49, i32 1)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @lua_pushnil(i32* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @lua_upvalueindex(i32 2)
  %55 = call i32 @lua_rawset(i32* %53, i32 %54)
  %56 = load double, double* %4, align 8
  %57 = load double, double* %5, align 8
  %58 = fadd double %57, %56
  store double %58, double* %5, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = load double, double* %5, align 8
  %61 = call i32 @lua_pushnumber(i32* %59, double %60)
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %31, %28
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @lua_gettop(i32*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_pushthread(i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local double @diff_time(double) #1

declare dso_local double @lua_tonumber(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_lappend.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_lappend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Need lightuserdata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lappend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lappend(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @LUA_TTABLE, align 4
  %9 = call i32 @luaL_checktype(i32* %7, i32 1, i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_rawlen(i32* %10, i32 1)
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @lua_isnil(i32* %12, i32 2)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_settop(i32* %16, i32 3)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32 @lua_seti(i32* %18, i32 1, i32 %20)
  store i32 0, i32* %2, align 4
  br label %43

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i8* @lua_touserdata(i32* %23, i32 2)
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @luaL_error(i32* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %2, align 4
  br label %43

30:                                               ; preds = %22
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @luaL_checkinteger(i32* %31, i32 3)
  store i32 %32, i32* %6, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @lua_pushlstring(i32* %33, i8* %34, i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @skynet_free(i8* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @lua_seti(i32* %39, i32 1, i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %30, %27, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_rawlen(i32*, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_seti(i32*, i32, i32) #1

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @skynet_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

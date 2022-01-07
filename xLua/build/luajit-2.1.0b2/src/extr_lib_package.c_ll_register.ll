; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_package.c_ll_register.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_package.c_ll_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"LOADLIB: %s\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"_LOADLIB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i32*, i8*)* @ll_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @ll_register(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @lua_pushfstring(i32* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %11 = call i32 @lua_gettable(i32* %9, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lua_isnil(i32* %12, i32 -1)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @lua_touserdata(i32* %16, i32 -1)
  %18 = inttoptr i64 %17 to i8**
  store i8** %18, i8*** %5, align 8
  br label %38

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_pop(i32* %20, i32 1)
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @lua_newuserdata(i32* %22, i32 8)
  %24 = inttoptr i64 %23 to i8**
  store i8** %24, i8*** %5, align 8
  %25 = load i8**, i8*** %5, align 8
  store i8* null, i8** %25, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @luaL_getmetatable(i32* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_setmetatable(i32* %28, i32 -2)
  %30 = load i32*, i32** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @lua_pushfstring(i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_pushvalue(i32* %33, i32 -2)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %37 = call i32 @lua_settable(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %19, %15
  %39 = load i8**, i8*** %5, align 8
  ret i8** %39
}

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

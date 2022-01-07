; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_lregex.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_lregex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BSON_REGEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lregex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lregex(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @luaL_checkstring(i32* %4, i32 1)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @lua_gettop(i32* %6)
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @lua_pushliteral(i32* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @luaL_buffinit(i32* %13, i32* %3)
  %15 = call i32 @luaL_addchar(i32* %3, i32 0)
  %16 = load i32, i32* @BSON_REGEX, align 4
  %17 = call i32 @luaL_addchar(i32* %3, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @lua_pushvalue(i32* %18, i32 1)
  %20 = call i32 @luaL_addvalue(i32* %3)
  %21 = call i32 @luaL_addchar(i32* %3, i32 0)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @lua_pushvalue(i32* %22, i32 2)
  %24 = call i32 @luaL_addvalue(i32* %3)
  %25 = call i32 @luaL_addchar(i32* %3, i32 0)
  %26 = call i32 @luaL_pushresult(i32* %3)
  ret i32 1
}

declare dso_local i32 @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @luaL_addchar(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_addvalue(i32*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

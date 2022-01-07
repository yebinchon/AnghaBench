; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_loadlib.c_addtoclib.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_loadlib.c_addtoclib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@CLIBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @addtoclib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addtoclib(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %9 = call i32 @lua_rawgetp(i32* %7, i32 %8, i32* @CLIBS)
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @lua_pushlightuserdata(i32* %10, i8* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @lua_pushvalue(i32* %13, i32 -1)
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @lua_setfield(i32* %15, i32 -3, i8* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @luaL_len(i32* %19, i32 -2)
  %21 = add nsw i64 %20, 1
  %22 = call i32 @lua_rawseti(i32* %18, i32 -2, i64 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @lua_pop(i32* %23, i32 1)
  ret void
}

declare dso_local i32 @lua_rawgetp(i32*, i32, i32*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i64) #1

declare dso_local i64 @luaL_len(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-datasheet.c_lupdate.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-datasheet.c_lupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proxy = type { i32 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@PROXYCACHE = common dso_local global i32 0, align 4
@LUA_TUSERDATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Invalid proxy table %p\00", align 1
@LUA_TLIGHTUSERDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lupdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lupdate(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.proxy*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %7 = load i32, i32* @PROXYCACHE, align 4
  %8 = call i32 @lua_getfield(i32* %5, i32 %6, i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @lua_pushvalue(i32* %9, i32 1)
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @lua_rawget(i32* %11, i32 -2)
  %13 = load i64, i64* @LUA_TUSERDATA, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_topointer(i32* %17, i32 1)
  %19 = call i32 @luaL_error(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32*, i32** %2, align 8
  %22 = call i8* @lua_touserdata(i32* %21, i32 -1)
  %23 = bitcast i8* %22 to %struct.proxy*
  store %struct.proxy* %23, %struct.proxy** %3, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @LUA_TLIGHTUSERDATA, align 4
  %26 = call i32 @luaL_checktype(i32* %24, i32 2, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i8* @lua_touserdata(i32* %27, i32 2)
  store i8* %28, i8** %4, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = load %struct.proxy*, %struct.proxy** %3, align 8
  %31 = getelementptr inbounds %struct.proxy, %struct.proxy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @update_cache(i32* %29, i32 %32, i8* %33)
  ret i32 1
}

declare dso_local i32 @lua_getfield(i32*, i32, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @lua_rawget(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_topointer(i32*, i32) #1

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @update_cache(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

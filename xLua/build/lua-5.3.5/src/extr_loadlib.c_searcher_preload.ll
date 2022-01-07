; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_loadlib.c_searcher_preload.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_loadlib.c_searcher_preload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_PRELOAD_TABLE = common dso_local global i8* null, align 8
@LUA_TNIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"\0A\09no field package.preload['%s']\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @searcher_preload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @searcher_preload(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i8* @luaL_checkstring(i32* %4, i32 1)
  store i8* %5, i8** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %8 = load i8*, i8** @LUA_PRELOAD_TABLE, align 8
  %9 = call i64 @lua_getfield(i32* %6, i32 %7, i8* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @lua_getfield(i32* %10, i32 -1, i8* %11)
  %13 = load i64, i64* @LUA_TNIL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @lua_pushfstring(i32* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %1
  ret i32 1
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i64 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lua.c_l_print.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lua.c_l_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_MINSTACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"too many results to print\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@LUA_OK = common dso_local global i64 0, align 8
@progname = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"error calling 'print' (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @l_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l_print(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @lua_gettop(i32* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @LUA_MINSTACK, align 4
  %11 = call i32 @luaL_checkstack(i32* %9, i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @lua_getglobal(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @lua_insert(i32* %14, i32 1)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @lua_pcall(i32* %16, i32 %17, i32 0, i32 0)
  %19 = load i64, i64* @LUA_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %8
  %22 = load i32, i32* @progname, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @lua_tostring(i32* %24, i32 -1)
  %26 = call i32 @lua_pushfstring(i32* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = call i32 @l_message(i32 %22, i32 %26)
  br label %28

28:                                               ; preds = %21, %8
  br label %29

29:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @l_message(i32, i32) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

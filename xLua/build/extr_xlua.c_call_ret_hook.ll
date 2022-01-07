; ModuleID = '/home/carl/AnghaBench/xLua/build/extr_xlua.c_call_ret_hook.c'
source_filename = "/home/carl/AnghaBench/xLua/build/extr_xlua.c_call_ret_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@hook_index = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"[?%s]\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"[C#]\00", align 1
@hook = common dso_local global i32 0, align 4
@LUA_MASKCALL = common dso_local global i32 0, align 4
@LUA_MASKRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @call_ret_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_ret_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @lua_gethook(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @lua_getstack(i32* %8, i32 0, %struct.TYPE_4__* %3)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @lua_getinfo(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %3)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @lua_pushlightuserdata(i32* %12, i32* @hook_index)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %16 = call i32 @lua_rawget(i32* %14, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @lua_type(i32* %17, i32 -1)
  %19 = load i64, i64* @LUA_TFUNCTION, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @lua_pop(i32* %22, i32 1)
  br label %43

24:                                               ; preds = %7
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @lua_pushliteral(i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @lua_pushfstring(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_pushliteral(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @lua_sethook(i32* %33, i32 0, i32 0, i32 0)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @lua_call(i32* %35, i32 3, i32 0)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @hook, align 4
  %39 = load i32, i32* @LUA_MASKCALL, align 4
  %40 = load i32, i32* @LUA_MASKRET, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @lua_sethook(i32* %37, i32 %38, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %21, %24, %1
  ret void
}

declare dso_local i64 @lua_gethook(i32*) #1

declare dso_local i32 @lua_getstack(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @lua_getinfo(i32*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_sethook(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

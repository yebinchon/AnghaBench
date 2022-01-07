; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lbaselib.c_luaB_collectgarbage.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lbaselib.c_luaB_collectgarbage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luaB_collectgarbage.opts = internal constant [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"collect\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"setpause\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"setstepmul\00", align 1
@luaB_collectgarbage.optsnum = internal constant [7 x i32] [i32 128, i32 132, i32 134, i32 133, i32 129, i32 131, i32 130], align 16
@LUA_GCCOUNTB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_collectgarbage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_collectgarbage(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @luaL_checkoption(i32* %8, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @luaB_collectgarbage.opts, i64 0, i64 0))
  store i32 %9, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_optint(i32* %10, i32 2, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [7 x i32], [7 x i32]* @luaB_collectgarbage.optsnum, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @lua_gc(i32* %12, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [7 x i32], [7 x i32]* @luaB_collectgarbage.optsnum, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %37 [
    i32 133, label %23
    i32 129, label %33
  ]

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @LUA_GCCOUNTB, align 4
  %26 = call i32 @lua_gc(i32* %24, i32 %25, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sdiv i32 %29, 1024
  %31 = add nsw i32 %28, %30
  %32 = call i32 @lua_pushnumber(i32* %27, i32 %31)
  store i32 1, i32* %2, align 4
  br label %41

33:                                               ; preds = %1
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @lua_pushboolean(i32* %34, i32 %35)
  store i32 1, i32* %2, align 4
  br label %41

37:                                               ; preds = %1
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @lua_pushnumber(i32* %38, i32 %39)
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %33, %23
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @luaL_checkoption(i32*, i32, i8*, i8**) #1

declare dso_local i32 @luaL_optint(i32*, i32, i32) #1

declare dso_local i32 @lua_gc(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

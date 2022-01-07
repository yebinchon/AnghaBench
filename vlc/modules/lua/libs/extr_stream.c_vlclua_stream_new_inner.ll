; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_stream.c_vlclua_stream_new_inner.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_stream.c_vlclua_stream_new_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Error when opening stream\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@vlclua_stream_reg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@vlclua_stream_delete = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @vlclua_stream_new_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_stream_new_inner(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @lua_pushnil(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @lua_pushliteral(i32* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32** @lua_newuserdata(i32* %15, i32 8)
  store i32** %16, i32*** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32**, i32*** %6, align 8
  store i32* %17, i32** %18, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @luaL_newmetatable(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %14
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @lua_newtable(i32* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @vlclua_stream_reg, align 4
  %27 = call i32 @luaL_register(i32* %25, i32* null, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @lua_setfield(i32* %28, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @vlclua_stream_delete, align 4
  %32 = call i32 @lua_pushcfunction(i32* %30, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @lua_setfield(i32* %33, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %22, %14
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @lua_setmetatable(i32* %36, i32 -2)
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %9
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32** @lua_newuserdata(i32*, i32) #1

declare dso_local i64 @luaL_newmetatable(i32*, i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @luaL_register(i32*, i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_lua_metatype.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_lua_metatype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"expecting: string table [ctype]\00", align 1
@LUA_TTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"could not register cdata type -- missing ffi library?\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaT_lua_metatype(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @lua_gettop(i32* %3)
  %5 = icmp ne i32 %4, 2
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_gettop(i32* %7)
  %9 = icmp ne i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @luaL_error(i32* %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %6, %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @luaL_checkstring(i32* %14, i32 1)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @LUA_TTABLE, align 4
  %18 = call i32 @luaL_checktype(i32* %16, i32 2, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @lua_gettop(i32* %19)
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load i32*, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @lua_tostring(i32* %24, i32 1)
  %26 = call i32 @luaT_cdataname(i32* %23, i32 3, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @luaL_error(i32* %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %22
  br label %32

32:                                               ; preds = %31, %13
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @lua_pushvalue(i32* %33, i32 1)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @lua_pushvalue(i32* %35, i32 2)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %39 = call i32 @lua_rawset(i32* %37, i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @lua_pushvalue(i32* %40, i32 2)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @lua_pushvalue(i32* %42, i32 1)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %46 = call i32 @lua_rawset(i32* %44, i32 %45)
  ret i32 0
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @luaT_cdataname(i32*, i32, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

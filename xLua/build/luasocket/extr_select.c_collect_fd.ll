; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_select.c_collect_fd.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_select.c_collect_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTABLE = common dso_local global i32 0, align 4
@SOCKET_INVALID = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"descriptor too large for set size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i32*)* @collect_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_fd(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @lua_isnil(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %83

19:                                               ; preds = %5
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @LUA_TTABLE, align 4
  %23 = call i32 @luaL_checktype(i32* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %78, %19
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @lua_pushnumber(i32* %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @lua_gettable(i32* %28, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @lua_isnil(i32* %31, i32 -1)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @lua_pop(i32* %35, i32 1)
  br label %83

37:                                               ; preds = %24
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @getfd(i32* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @SOCKET_INVALID, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %37
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @FD_SETSIZE, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @luaL_argerror(i32* %48, i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %13, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @FD_SET(i32 %52, i32* %53)
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SOCKET_INVALID, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %51
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %51
  %67 = load i32, i32* %13, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @lua_pushnumber(i32* %70, i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @lua_pushvalue(i32* %73, i32 -2)
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @lua_settable(i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %37
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @lua_pop(i32* %79, i32 1)
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %24

83:                                               ; preds = %18, %34
  ret void
}

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @getfd(i32*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

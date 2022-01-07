; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_collectrules.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_collectrules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"rule '%s' is not a pattern\00", align 1
@LUA_MINSTACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"grammar has too many rules\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @collectrules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collectrules(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @lua_gettop(i32* %10)
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @lua_newtable(i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @getfirstrule(i32* %15, i32 %16, i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 2
  %22 = call i32 @getsize(i32* %19, i32 %21)
  %23 = add nsw i32 2, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @lua_pushnil(i32* %24)
  br label %26

26:                                               ; preds = %53, %41, %3
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @lua_next(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @lua_tonumber(i32* %32, i32 -2)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i64 @lp_equal(i32* %36, i32 -2, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %31
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @lua_pop(i32* %42, i32 1)
  br label %26

44:                                               ; preds = %35
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @testpattern(i32* %45, i32 -1)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @val2str(i32* %50, i32 -2)
  %52 = call i32 @luaL_error(i32* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @LUA_MINSTACK, align 4
  %56 = call i32 @luaL_checkstack(i32* %54, i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @lua_pushvalue(i32* %57, i32 -2)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @lua_pushinteger(i32* %59, i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @lua_settable(i32* %62, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @getsize(i32* %65, i32 -1)
  %67 = add nsw i32 1, %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @lua_pushvalue(i32* %70, i32 -2)
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %26

74:                                               ; preds = %26
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32*, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @getfirstrule(i32*, i32, i32) #1

declare dso_local i32 @getsize(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i64 @lp_equal(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @testpattern(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @val2str(i32*, i32) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

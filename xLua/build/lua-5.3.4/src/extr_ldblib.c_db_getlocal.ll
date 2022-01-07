; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_ldblib.c_db_getlocal.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_ldblib.c_db_getlocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"level out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_getlocal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_getlocal(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @getthread(i32* %10, i32* %4)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 2
  %15 = call i64 @luaL_checkinteger(i32* %12, i32 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i64 @lua_isfunction(i32* %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @lua_pushvalue(i32* %23, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @lua_getlocal(i32* %28, i32* null, i32 %29)
  %31 = call i32 @lua_pushstring(i32* %27, i8* %30)
  store i32 1, i32* %2, align 4
  br label %68

32:                                               ; preds = %1
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i64 @luaL_checkinteger(i32* %33, i32 %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @lua_getstack(i32* %38, i32 %39, i32* %6)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %32
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @luaL_argerror(i32* %43, i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %46, i32* %2, align 4
  br label %68

47:                                               ; preds = %32
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @checkstack(i32* %48, i32* %49, i32 1)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i8* @lua_getlocal(i32* %51, i32* %6, i32 %52)
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %47
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @lua_xmove(i32* %57, i32* %58, i32 1)
  %60 = load i32*, i32** %3, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @lua_pushstring(i32* %60, i8* %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @lua_rotate(i32* %63, i32 -2, i32 1)
  store i32 2, i32* %2, align 4
  br label %68

65:                                               ; preds = %47
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @lua_pushnil(i32* %66)
  store i32 1, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %56, %42, %22
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32* @getthread(i32*, i32*) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i64 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i8* @lua_getlocal(i32*, i32*, i32) #1

declare dso_local i32 @lua_getstack(i32*, i32, i32*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @checkstack(i32*, i32*, i32) #1

declare dso_local i32 @lua_xmove(i32*, i32*, i32) #1

declare dso_local i32 @lua_rotate(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

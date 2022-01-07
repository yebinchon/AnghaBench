; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_mt__newindex.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_mt__newindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"critical internal indexing error: no metatable found\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"critical internal indexing error: not a metatable\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"__newindex__\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"critical internal indexing error: __newindex__ is not a function\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"the class %s cannot be indexed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaT_mt__newindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaT_mt__newindex(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @lua_getmetatable(i32* %5, i32 1)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 (i32*, i8*, ...) @luaL_error(i32* %9, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @lua_istable(i32* %12, i32 -1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 (i32*, i8*, ...) @luaL_error(i32* %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_getfield(i32* %19, i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_isnil(i32* %21, i32 -1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_isfunction(i32* %25, i32 -1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 (i32*, i8*, ...) @luaL_error(i32* %29, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_pushvalue(i32* %32, i32 1)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_pushvalue(i32* %34, i32 2)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_pushvalue(i32* %36, i32 3)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_call(i32* %38, i32 3, i32 1)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @lua_toboolean(i32* %40, i32 -1)
  store i32 %41, i32* %4, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @lua_pop(i32* %42, i32 1)
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %66

47:                                               ; preds = %31
  br label %51

48:                                               ; preds = %18
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @lua_pop(i32* %49, i32 1)
  br label %51

51:                                               ; preds = %48, %47
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @lua_pop(i32* %52, i32 1)
  %54 = load i32*, i32** %3, align 8
  %55 = call i64 @lua_istable(i32* %54, i32 1)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @lua_rawset(i32* %58, i32 1)
  br label %65

60:                                               ; preds = %51
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @luaT_typename(i32* %62, i32 1)
  %64 = call i32 (i32*, i8*, ...) @luaL_error(i32* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %57
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @lua_getmetatable(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @luaT_typename(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

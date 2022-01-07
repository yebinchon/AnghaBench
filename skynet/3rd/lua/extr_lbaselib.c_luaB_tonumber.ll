; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lbaselib.c_luaB_tonumber.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lbaselib.c_luaB_tonumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TNUMBER = common dso_local global i64 0, align 8
@LUA_TSTRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"base out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_tonumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_tonumber(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @lua_isnoneornil(i32* %10, i32 2)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @luaL_checkany(i32* %14, i32 1)
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @lua_type(i32* %16, i32 1)
  %18 = load i64, i64* @LUA_TNUMBER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_settop(i32* %21, i32 1)
  store i32 1, i32* %2, align 4
  br label %71

23:                                               ; preds = %13
  %24 = load i32*, i32** %3, align 8
  %25 = call i8* @lua_tolstring(i32* %24, i32 1, i64* %4)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @lua_stringtonumber(i32* %29, i8* %30)
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %71

36:                                               ; preds = %28, %23
  br label %37

37:                                               ; preds = %36
  br label %68

38:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @luaL_checkinteger(i32* %39, i32 2)
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @LUA_TSTRING, align 4
  %43 = call i32 @luaL_checktype(i32* %41, i32 1, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i8* @lua_tolstring(i32* %44, i32 1, i64* %6)
  store i8* %45, i8** %7, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp sle i32 2, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* %9, align 4
  %51 = icmp sle i32 %50, 36
  br label %52

52:                                               ; preds = %49, %38
  %53 = phi i1 [ false, %38 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @luaL_argcheck(i32* %46, i32 %54, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i8* @b_str2int(i8* %56, i32 %57, i32* %8)
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = icmp eq i8* %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @lua_pushinteger(i32* %64, i32 %65)
  store i32 1, i32* %2, align 4
  br label %71

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67, %37
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @lua_pushnil(i32* %69)
  store i32 1, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %63, %35, %20
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @luaL_checkany(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i64 @lua_stringtonumber(i32*, i8*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i8* @b_str2int(i8*, i32, i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

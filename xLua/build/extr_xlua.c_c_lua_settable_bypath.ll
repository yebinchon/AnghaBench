; ModuleID = '/home/carl/AnghaBench/xLua/build/extr_xlua.c_c_lua_settable_bypath.c'
source_filename = "/home/carl/AnghaBench/xLua/build/extr_xlua.c_c_lua_settable_bypath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"can not set value to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @c_lua_settable_bypath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_lua_settable_bypath(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  store i8* null, i8** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @lua_tolstring(i32* %7, i32 2, i64* %4)
  store i8* %8, i8** %6, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_pushvalue(i32* %9, i32 1)
  br label %11

11:                                               ; preds = %63, %1
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 46)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* null, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @lua_pushlstring(i32* %17, i8* %18, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_pushvalue(i32* %22, i32 3)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_settable(i32* %24, i32 -3)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_pop(i32* %26, i32 1)
  br label %66

28:                                               ; preds = %11
  %29 = load i32*, i32** %3, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @lua_pushlstring(i32* %29, i8* %30, i32 %36)
  %38 = load i64, i64* %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = add nsw i64 %43, 1
  %45 = sub i64 %38, %44
  store i64 %45, i64* %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %6, align 8
  br label %48

48:                                               ; preds = %28
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @lua_gettable(i32* %49, i32 -2)
  %51 = load i32*, i32** %3, align 8
  %52 = call i64 @lua_type(i32* %51, i32 -1)
  %53 = load i64, i64* @LUA_TTABLE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32*, i32** %3, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @lua_tostring(i32* %57, i32 2)
  %59 = call i32 @luaL_error(i32* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i32 %59, i32* %2, align 4
  br label %67

60:                                               ; preds = %48
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @lua_remove(i32* %61, i32 -2)
  br label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %5, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %11, label %66

66:                                               ; preds = %63, %16
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

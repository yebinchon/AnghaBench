; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_cdataname.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_cdataname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"__cdataname\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@cdataname = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"internal error (could not load cdataname): %s\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"internal error (cdataname is not a function)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"internal error (cdataname): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i8*)* @luaT_cdataname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @luaT_cdataname(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @lua_pushstring(i32* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %11 = call i32 @lua_rawget(i32* %9, i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @lua_isnil(i32* %12, i32 -1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @lua_pop(i32* %16, i32 1)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @cdataname, align 4
  %20 = call i64 @luaL_dostring(i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i8* @lua_tostring(i32* %24, i32 -1)
  %26 = call i32 (i32*, i8*, ...) @luaL_error(i32* %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %22, %15
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @lua_pushstring(i32* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @lua_pushvalue(i32* %30, i32 -2)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %34 = call i32 @lua_rawset(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %27, %3
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @lua_isfunction(i32* %36, i32 -1)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 (i32*, i8*, ...) @luaL_error(i32* %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @lua_pushvalue(i32* %43, i32 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32*, i32** %4, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @lua_pushstring(i32* %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %42
  %53 = load i32*, i32** %4, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 2, i32 1
  %58 = call i64 @lua_pcall(i32* %53, i32 %57, i32 1, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i8* @lua_tostring(i32* %62, i32 -1)
  %64 = call i32 (i32*, i8*, ...) @luaL_error(i32* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %60, %52
  %66 = load i32*, i32** %4, align 8
  %67 = call i8* @lua_tostring(i32* %66, i32 -1)
  store i8* %67, i8** %6, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @lua_pop(i32* %68, i32 1)
  %70 = load i8*, i8** %6, align 8
  ret i8* %70
}

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @luaL_dostring(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lauxlib.c_pushglobalfuncname.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lauxlib.c_pushglobalfuncname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"_G.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @pushglobalfuncname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pushglobalfuncname(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @lua_gettop(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @lua_getinfo(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %15 = call i32 @lua_getfield(i32* %13, i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i64 @findfield(i32* %16, i32 %18, i32 2)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @lua_tostring(i32* %22, i32 -1)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  %31 = call i32 @lua_pushstring(i32* %28, i8* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @lua_remove(i32* %32, i32 -2)
  br label %34

34:                                               ; preds = %27, %21
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 @lua_copy(i32* %35, i32 -1, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @lua_pop(i32* %39, i32 2)
  store i32 1, i32* %3, align 4
  br label %45

41:                                               ; preds = %2
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @lua_settop(i32* %42, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_getinfo(i32*, i8*, i32*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @findfield(i32*, i32, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @lua_copy(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

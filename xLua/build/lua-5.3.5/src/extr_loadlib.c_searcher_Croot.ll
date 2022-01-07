; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_loadlib.c_searcher_Croot.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_loadlib.c_searcher_Croot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"cpath\00", align 1
@LUA_CSUBSEP = common dso_local global i32 0, align 4
@ERRFUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"\0A\09no module '%s' in file '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @searcher_Croot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @searcher_Croot(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i8* @luaL_checkstring(i32* %8, i32 1)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @strchr(i8* %10, i8 signext 46)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @lua_pushlstring(i32* %16, i8* %17, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_tostring(i32* %26, i32 -1)
  %28 = load i32, i32* @LUA_CSUBSEP, align 4
  %29 = call i8* @findfile(i32* %25, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %56

33:                                               ; preds = %15
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @loadfunc(i32* %34, i8* %35, i8* %36)
  store i32 %37, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ERRFUNC, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32*, i32** %3, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @checkload(i32* %44, i32 0, i8* %45)
  store i32 %46, i32* %2, align 4
  br label %56

47:                                               ; preds = %39
  %48 = load i32*, i32** %3, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @lua_pushfstring(i32* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %50)
  store i32 1, i32* %2, align 4
  br label %56

52:                                               ; preds = %33
  %53 = load i32*, i32** %3, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @lua_pushstring(i32* %53, i8* %54)
  store i32 2, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %47, %43, %32, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i8* @findfile(i32*, i32, i8*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @loadfunc(i32*, i8*, i8*) #1

declare dso_local i32 @checkload(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

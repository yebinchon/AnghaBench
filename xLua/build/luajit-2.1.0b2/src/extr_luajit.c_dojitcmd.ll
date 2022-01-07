; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_luajit.c_dojitcmd.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_luajit.c_dojitcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"jit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @dojitcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dojitcmd(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 61)
  store i8* %8, i8** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  br label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strlen(i8* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i64 [ %18, %13 ], [ %21, %19 ]
  %24 = call i32 @lua_pushlstring(i32* %9, i8* %10, i64 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %27 = call i32 @lua_getfield(i32* %25, i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @lua_getfield(i32* %28, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @lua_remove(i32* %30, i32 -2)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @lua_pushvalue(i32* %32, i32 -2)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @lua_gettable(i32* %34, i32 -2)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @lua_isfunction(i32* %36, i32 -1)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %22
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @lua_pop(i32* %40, i32 2)
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @loadjitmodule(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %64

46:                                               ; preds = %39
  br label %50

47:                                               ; preds = %22
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @lua_remove(i32* %48, i32 -2)
  br label %50

50:                                               ; preds = %47, %46
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @lua_remove(i32* %51, i32 -2)
  %53 = load i32*, i32** %4, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  br label %61

59:                                               ; preds = %50
  %60 = load i8*, i8** %6, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i8* [ %58, %56 ], [ %60, %59 ]
  %63 = call i32 @runcmdopt(i32* %53, i8* %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %45
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @loadjitmodule(i32*) #1

declare dso_local i32 @runcmdopt(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

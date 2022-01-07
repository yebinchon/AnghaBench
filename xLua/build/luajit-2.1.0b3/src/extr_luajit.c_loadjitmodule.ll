; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_luajit.c_loadjitmodule.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_luajit.c_loadjitmodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"jit.\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"module \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@progname = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"unknown luaJIT command or jit.* modules not installed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @loadjitmodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadjitmodule(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @lua_getglobal(i32* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @lua_pushliteral(i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_pushvalue(i32* %9, i32 -3)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_concat(i32* %11, i32 2)
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @lua_pcall(i32* %13, i32 1, i32 1, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @lua_tostring(i32* %17, i32 -1)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %36

26:                                               ; preds = %21, %16
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @report(i32* %27, i32 1)
  store i32 %28, i32* %2, align 4
  br label %42

29:                                               ; preds = %1
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_getfield(i32* %30, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @lua_isnil(i32* %32, i32 -1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i32, i32* @progname, align 4
  %38 = call i32 @l_message(i32 %37, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %42

39:                                               ; preds = %29
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @lua_remove(i32* %40, i32 -2)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %36, %26
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_concat(i32*, i32) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @report(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @l_message(i32, i8*) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

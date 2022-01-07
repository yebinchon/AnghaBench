; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua.c_docall.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua.c_docall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@traceback = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@laction = common dso_local global i32 0, align 4
@LUA_MULTRET = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@LUA_GCCOLLECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @docall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @docall(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @lua_gettop(i32* %9)
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @traceback, align 4
  %15 = call i32 @lua_pushcfunction(i32* %13, i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @lua_insert(i32* %16, i32 %17)
  %19 = load i32, i32* @SIGINT, align 4
  %20 = load i32, i32* @laction, align 4
  %21 = call i32 @signal(i32 %19, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @LUA_MULTRET, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 0, %26 ], [ %28, %27 ]
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @lua_pcall(i32* %22, i32 %23, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @SIGINT, align 4
  %34 = load i32, i32* @SIG_DFL, align 4
  %35 = call i32 @signal(i32 %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @lua_remove(i32* %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @LUA_GCCOLLECT, align 4
  %44 = call i32 @lua_gc(i32* %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %41, %29
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @lua_gc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

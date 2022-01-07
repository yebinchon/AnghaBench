; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua.c_traceback.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua.c_traceback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_GLOBALSINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"traceback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @traceback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traceback(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @lua_isstring(i32* %4, i32 1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %34

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @LUA_GLOBALSINDEX, align 4
  %11 = call i32 @lua_getfield(i32* %9, i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lua_istable(i32* %12, i32 -1)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_pop(i32* %16, i32 1)
  store i32 1, i32* %2, align 4
  br label %34

18:                                               ; preds = %8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_getfield(i32* %19, i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_isfunction(i32* %21, i32 -1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_pop(i32* %25, i32 2)
  store i32 1, i32* %2, align 4
  br label %34

27:                                               ; preds = %18
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_pushvalue(i32* %28, i32 1)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_pushinteger(i32* %30, i32 2)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_call(i32* %32, i32 2, i32 1)
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %27, %24, %15, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

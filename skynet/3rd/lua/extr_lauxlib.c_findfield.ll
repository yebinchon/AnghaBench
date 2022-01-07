; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lauxlib.c_findfield.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lauxlib.c_findfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TSTRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @findfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findfield(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @lua_istable(i32* %11, i32 -1)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %57

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @lua_pushnil(i32* %16)
  br label %18

18:                                               ; preds = %53, %15
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @lua_next(i32* %19, i32 -2)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @lua_type(i32* %23, i32 -2)
  %25 = load i64, i64* @LUA_TSTRING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @lua_rawequal(i32* %28, i32 %29, i32 -1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @lua_pop(i32* %33, i32 1)
  store i32 1, i32* %4, align 4
  br label %57

35:                                               ; preds = %27
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @findfield(i32* %36, i32 %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @lua_remove(i32* %43, i32 -2)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @lua_pushliteral(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @lua_insert(i32* %47, i32 -2)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @lua_concat(i32* %49, i32 3)
  store i32 1, i32* %4, align 4
  br label %57

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %22
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @lua_pop(i32* %54, i32 1)
  br label %18

56:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %42, %32, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_rawequal(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_concat(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

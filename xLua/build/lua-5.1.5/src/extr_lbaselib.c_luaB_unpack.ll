; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lbaselib.c_luaB_unpack.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lbaselib.c_luaB_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTABLE = common dso_local global i32 0, align 4
@luaL_checkint = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"too many results to unpack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_unpack(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @LUA_TTABLE, align 4
  %9 = call i32 @luaL_checktype(i32* %7, i32 1, i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_optint(i32* %10, i32 2, i32 1)
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @luaL_checkint, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @luaL_getn(i32* %14, i32 1)
  %16 = call i32 @luaL_opt(i32* %12, i32 %13, i32 3, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @lua_checkstack(i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %21
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @luaL_error(i32* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %2, align 4
  br label %51

36:                                               ; preds = %28
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @lua_rawgeti(i32* %37, i32 1, i32 %38)
  br label %40

40:                                               ; preds = %45, %36
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @lua_rawgeti(i32* %46, i32 1, i32 %47)
  br label %40

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %33, %20
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @luaL_optint(i32*, i32, i32) #1

declare dso_local i32 @luaL_opt(i32*, i32, i32, i32) #1

declare dso_local i32 @luaL_getn(i32*, i32) #1

declare dso_local i32 @lua_checkstack(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

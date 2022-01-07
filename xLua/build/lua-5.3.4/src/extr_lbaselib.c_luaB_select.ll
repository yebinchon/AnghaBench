; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lbaselib.c_luaB_select.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lbaselib.c_luaB_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TSTRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_select(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_gettop(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @lua_type(i32* %8, i32 1)
  %10 = load i64, i64* @LUA_TSTRING, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @lua_tostring(i32* %13, i32 1)
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 35
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @lua_pushinteger(i32* %19, i32 %21)
  store i32 1, i32* %2, align 4
  br label %48

23:                                               ; preds = %12, %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @luaL_checkinteger(i32* %24, i32 1)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %5, align 4
  br label %39

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %32
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp sle i32 1, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @luaL_argcheck(i32* %40, i32 %43, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %39, %18
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

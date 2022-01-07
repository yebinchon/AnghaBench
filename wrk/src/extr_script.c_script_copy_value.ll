; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_script.c_script_copy_value.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_script.c_script_copy_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"cannot transfer '%s' to thread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @script_copy_value(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @lua_type(i32* %7, i32 %8)
  switch i32 %9, label %54 [
    i32 132, label %10
    i32 131, label %16
    i32 130, label %19
    i32 129, label %25
    i32 128, label %31
  ]

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @lua_toboolean(i32* %12, i32 %13)
  %15 = call i32 @lua_pushboolean(i32* %11, i32 %14)
  br label %60

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @lua_pushnil(i32* %17)
  br label %60

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @lua_tonumber(i32* %21, i32 %22)
  %24 = call i32 @lua_pushnumber(i32* %20, i32 %23)
  br label %60

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @lua_tostring(i32* %27, i32 %28)
  %30 = call i32 @lua_pushstring(i32* %26, i32 %29)
  br label %60

31:                                               ; preds = %3
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @lua_newtable(i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @lua_pushnil(i32* %34)
  br label %36

36:                                               ; preds = %42, %31
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @lua_next(i32* %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %5, align 8
  call void @script_copy_value(i32* %43, i32* %44, i32 -2)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %5, align 8
  call void @script_copy_value(i32* %45, i32* %46, i32 -1)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @lua_settable(i32* %47, i32 -3)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @lua_pop(i32* %49, i32 1)
  br label %36

51:                                               ; preds = %36
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @lua_pop(i32* %52, i32 1)
  br label %60

54:                                               ; preds = %3
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @luaL_typename(i32* %56, i32 %57)
  %59 = call i32 @luaL_error(i32* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %51, %25, %19, %16, %10
  ret void
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

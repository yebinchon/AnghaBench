; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cmsgpack.c_table_is_an_array.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cmsgpack.c_table_is_an_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TNUMBER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @table_is_an_array(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_gettop(i32* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_pushnil(i32* %10)
  br label %12

12:                                               ; preds = %43, %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @lua_next(i32* %13, i32 -2)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_pop(i32* %17, i32 1)
  %19 = load i64, i64* @LUA_TNUMBER, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @lua_type(i32* %20, i32 -1)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_tonumber(i32* %24, i32 -1)
  store i32 %25, i32* %6, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @IS_INT_EQUIVALENT(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %23, %16
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @lua_settop(i32* %32, i32 %33)
  store i32 0, i32* %2, align 4
  br label %55

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %12

47:                                               ; preds = %12
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @lua_settop(i32* %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %47, %31
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @IS_INT_EQUIVALENT(i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

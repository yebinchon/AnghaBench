; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_pushvalue.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_pushvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.value = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %union.value*)* @pushvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushvalue(i32* %0, i32* %1, i32 %2, %union.value* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.value*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.value* %3, %union.value** %8, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %46 [
    i32 130, label %12
    i32 131, label %18
    i32 129, label %24
    i32 132, label %34
    i32 128, label %40
  ]

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  %14 = load %union.value*, %union.value** %8, align 8
  %15 = bitcast %union.value* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @lua_pushnumber(i32* %13, i32 %16)
  br label %49

18:                                               ; preds = %4
  %19 = load i32*, i32** %5, align 8
  %20 = load %union.value*, %union.value** %8, align 8
  %21 = bitcast %union.value* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @lua_pushinteger(i32* %19, i32 %22)
  br label %49

24:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load %union.value*, %union.value** %8, align 8
  %27 = bitcast %union.value* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @lua_tolstring(i32* %25, i32 %28, i64* %9)
  store i8* %29, i8** %10, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @lua_pushlstring(i32* %30, i8* %31, i64 %32)
  br label %49

34:                                               ; preds = %4
  %35 = load i32*, i32** %5, align 8
  %36 = load %union.value*, %union.value** %8, align 8
  %37 = bitcast %union.value* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lua_pushboolean(i32* %35, i32 %38)
  br label %49

40:                                               ; preds = %4
  %41 = load i32*, i32** %5, align 8
  %42 = load %union.value*, %union.value** %8, align 8
  %43 = bitcast %union.value* %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lua_pushlightuserdata(i32* %41, i32 %44)
  br label %49

46:                                               ; preds = %4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @lua_pushnil(i32* %47)
  br label %49

49:                                               ; preds = %46, %40, %34, %24, %18, %12
  ret void
}

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

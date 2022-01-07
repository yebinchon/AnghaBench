; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_liolib.c_io_lines.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_liolib.c_io_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@IO_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @io_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_lines(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @lua_isnone(i32* %5, i32 1)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @lua_pushnil(i32* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @lua_isnil(i32* %12, i32 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %18 = load i32, i32* @IO_INPUT, align 4
  %19 = call i32 @lua_getfield(i32* %16, i32 %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @lua_replace(i32* %20, i32 1)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @tofile(i32* %22)
  store i32 0, i32* %3, align 4
  br label %32

24:                                               ; preds = %11
  %25 = load i32*, i32** %2, align 8
  %26 = call i8* @luaL_checkstring(i32* %25, i32 1)
  store i8* %26, i8** %4, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @opencheck(i32* %27, i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @lua_replace(i32* %30, i32 1)
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %15
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @aux_lines(i32* %33, i32 %34)
  ret i32 1
}

declare dso_local i64 @lua_isnone(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i32 @tofile(i32*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @opencheck(i32*, i8*, i8*) #1

declare dso_local i32 @aux_lines(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

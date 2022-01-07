; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_liolib.c_io_lines.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_liolib.c_io_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_ENVIRONINDEX = common dso_local global i32 0, align 4
@IO_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @io_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_lines(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @lua_isnoneornil(i32* %6, i32 1)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @LUA_ENVIRONINDEX, align 4
  %12 = load i32, i32* @IO_INPUT, align 4
  %13 = call i32 @lua_rawgeti(i32* %10, i32 %11, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @f_lines(i32* %14)
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @luaL_checkstring(i32* %17, i32 1)
  store i8* %18, i8** %4, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32** @newfile(i32* %19)
  store i32** %20, i32*** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load i32**, i32*** %5, align 8
  store i32* %22, i32** %23, align 8
  %24 = load i32**, i32*** %5, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load i32*, i32** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @fileerror(i32* %28, i32 1, i8* %29)
  br label %31

31:                                               ; preds = %27, %16
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_gettop(i32* %33)
  %35 = call i32 @aux_lines(i32* %32, i32 %34, i32 1)
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @f_lines(i32*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32** @newfile(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fileerror(i32*, i32, i8*) #1

declare dso_local i32 @aux_lines(i32*, i32, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

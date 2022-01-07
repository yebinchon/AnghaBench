; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_liolib.c_g_iofile.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_liolib.c_g_iofile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_ENVIRONINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @g_iofile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_iofile(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @lua_isnoneornil(i32* %9, i32 1)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @lua_tostring(i32* %13, i32 1)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = call i32** @newfile(i32* %18)
  store i32** %19, i32*** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32* @fopen(i8* %20, i8* %21)
  %23 = load i32**, i32*** %8, align 8
  store i32* %22, i32** %23, align 8
  %24 = load i32**, i32*** %8, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @fileerror(i32* %28, i32 1, i8* %29)
  br label %31

31:                                               ; preds = %27, %17
  br label %37

32:                                               ; preds = %12
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @tofile(i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @lua_pushvalue(i32* %35, i32 1)
  br label %37

37:                                               ; preds = %32, %31
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @LUA_ENVIRONINDEX, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @lua_rawseti(i32* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %3
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @LUA_ENVIRONINDEX, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @lua_rawgeti(i32* %43, i32 %44, i32 %45)
  ret i32 1
}

declare dso_local i32 @lua_isnoneornil(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32** @newfile(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fileerror(i32*, i32, i8*) #1

declare dso_local i32 @tofile(i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

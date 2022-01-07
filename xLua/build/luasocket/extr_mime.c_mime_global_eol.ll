; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_mime_global_eol.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_mime_global_eol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRLF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mime_global_eol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mime_global_eol(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_checkint(i32* %10, i32 1)
  store i32 %11, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @luaL_optlstring(i32* %12, i32 2, i32* null, i64* %5)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %7, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @CRLF, align 4
  %19 = call i8* @luaL_optstring(i32* %17, i32 3, i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @luaL_buffinit(i32* %20, i32* %9)
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_pushnil(i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @lua_pushnumber(i32* %27, i32 0)
  store i32 2, i32* %2, align 4
  br label %47

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %34, %29
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  %37 = load i8, i8* %35, align 1
  %38 = sext i8 %37 to i32
  %39 = load i32, i32* %4, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @eolprocess(i32 %38, i32 %39, i8* %40, i32* %9)
  store i32 %41, i32* %4, align 4
  br label %30

42:                                               ; preds = %30
  %43 = call i32 @luaL_pushresult(i32* %9)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @lua_pushnumber(i32* %44, i32 %45)
  store i32 2, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %24
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i8* @luaL_optlstring(i32*, i32, i32*, i64*) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @eolprocess(i32, i32, i8*, i32*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

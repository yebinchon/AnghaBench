; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_mime_global_dot.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_mime_global_dot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mime_global_dot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mime_global_dot(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @luaL_checknumber(i32* %9, i32 1)
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @luaL_optlstring(i32* %12, i32 2, i32* null, i64* %4)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_pushnil(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_pushnumber(i32* %22, i32 2)
  store i32 2, i32* %2, align 4
  br label %44

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @luaL_buffinit(i32* %25, i32* %8)
  br label %27

27:                                               ; preds = %31, %24
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  %34 = load i8, i8* %32, align 1
  %35 = sext i8 %34 to i32
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @dot(i32 %35, i64 %36, i32* %8)
  store i64 %37, i64* %5, align 8
  br label %27

38:                                               ; preds = %27
  %39 = call i32 @luaL_pushresult(i32* %8)
  %40 = load i32*, i32** %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @lua_pushnumber(i32* %40, i32 %42)
  store i32 2, i32* %2, align 4
  br label %44

44:                                               ; preds = %38, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @luaL_checknumber(i32*, i32) #1

declare dso_local i8* @luaL_optlstring(i32*, i32, i32*, i64*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i64 @dot(i32, i64, i32*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_luaB_tonumber.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_luaB_tonumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"base out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_tonumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_tonumber(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @luaL_optint(i32* %8, i32 2, i32 10)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @luaL_checkany(i32* %13, i32 1)
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @lua_isnumber(i32* %15, i32 1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_tonumber(i32* %20, i32 1)
  %22 = call i32 @lua_pushnumber(i32* %19, i32 %21)
  store i32 1, i32* %2, align 4
  br label %67

23:                                               ; preds = %12
  br label %64

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i8* @luaL_checkstring(i32* %25, i32 1)
  store i8* %26, i8** %5, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 2, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = icmp sle i32 %31, 36
  br label %33

33:                                               ; preds = %30, %24
  %34 = phi i1 [ false, %24 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @luaL_argcheck(i32* %27, i32 %35, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @strtoul(i8* %37, i8** %6, i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %49, %43
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @isspace(i8 zeroext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  br label %44

52:                                               ; preds = %44
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32*, i32** %3, align 8
  %59 = load i64, i64* %7, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @lua_pushnumber(i32* %58, i32 %60)
  store i32 1, i32* %2, align 4
  br label %67

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %33
  br label %64

64:                                               ; preds = %63, %23
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @lua_pushnil(i32* %65)
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %57, %18
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @luaL_optint(i32*, i32, i32) #1

declare dso_local i32 @luaL_checkany(i32*, i32) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

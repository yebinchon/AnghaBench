; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_mime_global_qp.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_mime_global_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRLF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mime_global_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mime_global_qp(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @luaL_optlstring(i32* %11, i32 1, i32* null, i64* %5)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @CRLF, align 4
  %19 = call i8* @luaL_optstring(i32* %17, i32 3, i32 %18)
  store i8* %19, i8** %9, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_pushnil(i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_pushnil(i32* %25)
  store i32 2, i32* %2, align 4
  br label %88

27:                                               ; preds = %1
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_settop(i32* %28, i32 3)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @luaL_buffinit(i32* %30, i32* %10)
  br label %32

32:                                               ; preds = %36, %27
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ult i32* %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %7, align 8
  %39 = load i32, i32* %37, align 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %41 = load i64, i64* %4, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i64 @qpencode(i32 %39, i32* %40, i64 %41, i8* %42, i32* %10)
  store i64 %43, i64* %4, align 8
  br label %32

44:                                               ; preds = %32
  %45 = load i32*, i32** %3, align 8
  %46 = call i64 @luaL_optlstring(i32* %45, i32 2, i32* null, i64* %5)
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %65, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @qppad(i32* %51, i64 %52, i32* %10)
  store i64 %53, i64* %4, align 8
  %54 = call i32 @luaL_pushresult(i32* %10)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32* @lua_tostring(i32* %55, i32 -1)
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %50
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @lua_pushnil(i32* %60)
  br label %62

62:                                               ; preds = %59, %50
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @lua_pushnil(i32* %63)
  store i32 2, i32* %2, align 4
  br label %88

65:                                               ; preds = %44
  %66 = load i32*, i32** %7, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %8, align 8
  br label %69

69:                                               ; preds = %73, %65
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = icmp ult i32* %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %7, align 8
  %76 = load i32, i32* %74, align 4
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %78 = load i64, i64* %4, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = call i64 @qpencode(i32 %76, i32* %77, i64 %78, i8* %79, i32* %10)
  store i64 %80, i64* %4, align 8
  br label %69

81:                                               ; preds = %69
  %82 = call i32 @luaL_pushresult(i32* %10)
  %83 = load i32*, i32** %3, align 8
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %85 = bitcast i32* %84 to i8*
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @lua_pushlstring(i32* %83, i8* %85, i64 %86)
  store i32 2, i32* %2, align 4
  br label %88

88:                                               ; preds = %81, %62, %22
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @luaL_optlstring(i32*, i32, i32*, i64*) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i64 @qpencode(i32, i32*, i64, i8*, i32*) #1

declare dso_local i64 @qppad(i32*, i64, i32*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i32* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

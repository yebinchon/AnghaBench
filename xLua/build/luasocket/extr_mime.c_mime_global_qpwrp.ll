; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_mime_global_qpwrp.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_mime_global_qpwrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EQCRLF = common dso_local global i32 0, align 4
@CRLF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mime_global_qpwrp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mime_global_qpwrp(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @luaL_checknumber(i32* %10, i32 1)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @luaL_optlstring(i32* %13, i32 2, i32* null, i64* %4)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @luaL_optnumber(i32* %19, i32 3, i32 76)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @EQCRLF, align 4
  %31 = call i32 @lua_pushstring(i32* %29, i32 %30)
  br label %35

32:                                               ; preds = %24
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_pushnil(i32* %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @lua_pushnumber(i32* %36, i32 %37)
  store i32 2, i32* %2, align 4
  br label %88

39:                                               ; preds = %1
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @luaL_buffinit(i32* %40, i32* %9)
  br label %42

42:                                               ; preds = %80, %39
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ult i32* %43, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %67 [
    i32 13, label %49
    i32 10, label %50
    i32 61, label %54
  ]

49:                                               ; preds = %46
  br label %80

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @CRLF, align 4
  %53 = call i32 @luaL_addstring(i32* %9, i32 %52)
  br label %80

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = icmp sle i32 %55, 3
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @EQCRLF, align 4
  %60 = call i32 @luaL_addstring(i32* %9, i32 %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @luaL_addchar(i32* %9, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %5, align 4
  br label %80

67:                                               ; preds = %46
  %68 = load i32, i32* %5, align 4
  %69 = icmp sle i32 %68, 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @EQCRLF, align 4
  %73 = call i32 @luaL_addstring(i32* %9, i32 %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @luaL_addchar(i32* %9, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %74, %61, %50, %49
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %6, align 8
  br label %42

83:                                               ; preds = %42
  %84 = call i32 @luaL_pushresult(i32* %9)
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @lua_pushnumber(i32* %85, i32 %86)
  store i32 2, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %35
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @luaL_checknumber(i32*, i32) #1

declare dso_local i64 @luaL_optlstring(i32*, i32, i32*, i64*) #1

declare dso_local i64 @luaL_optnumber(i32*, i32, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @luaL_addstring(i32*, i32) #1

declare dso_local i32 @luaL_addchar(i32*, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

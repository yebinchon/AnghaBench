; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_mime_global_unqp.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_mime_global_unqp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mime_global_unqp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mime_global_unqp(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @luaL_optlstring(i32* %10, i32 1, i32* null, i64* %5)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_pushnil(i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_pushnil(i32* %21)
  store i32 2, i32* %2, align 4
  br label %79

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_settop(i32* %24, i32 2)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @luaL_buffinit(i32* %26, i32* %9)
  br label %28

28:                                               ; preds = %32, %23
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ult i32* %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %7, align 8
  %35 = load i32, i32* %33, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @qpdecode(i32 %35, i32* %36, i64 %37, i32* %9)
  store i64 %38, i64* %4, align 8
  br label %28

39:                                               ; preds = %28
  %40 = load i32*, i32** %3, align 8
  %41 = call i64 @luaL_optlstring(i32* %40, i32 2, i32* null, i64* %5)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = call i32 @luaL_pushresult(i32* %9)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32* @lua_tostring(i32* %47, i32 -1)
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @lua_pushnil(i32* %52)
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @lua_pushnil(i32* %55)
  store i32 2, i32* %2, align 4
  br label %79

57:                                               ; preds = %39
  %58 = load i32*, i32** %7, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %8, align 8
  br label %61

61:                                               ; preds = %65, %57
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = icmp ult i32* %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %7, align 8
  %68 = load i32, i32* %66, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %70 = load i64, i64* %4, align 8
  %71 = call i64 @qpdecode(i32 %68, i32* %69, i64 %70, i32* %9)
  store i64 %71, i64* %4, align 8
  br label %61

72:                                               ; preds = %61
  %73 = call i32 @luaL_pushresult(i32* %9)
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %76 = bitcast i32* %75 to i8*
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @lua_pushlstring(i32* %74, i8* %76, i64 %77)
  store i32 2, i32* %2, align 4
  br label %79

79:                                               ; preds = %72, %54, %18
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @luaL_optlstring(i32*, i32, i32*, i64*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i64 @qpdecode(i32, i32*, i64, i32*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i32* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

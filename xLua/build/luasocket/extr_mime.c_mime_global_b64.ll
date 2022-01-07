; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_mime_global_b64.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_mime_global_b64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mime_global_b64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mime_global_b64(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @luaL_optlstring(i32* %11, i32 1, i32* null, i64* %5)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_pushnil(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_pushnil(i32* %22)
  store i32 2, i32* %2, align 4
  br label %83

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_settop(i32* %25, i32 2)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @luaL_buffinit(i32* %27, i32* %9)
  br label %29

29:                                               ; preds = %33, %24
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ult i32* %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %7, align 8
  %36 = load i32, i32* %34, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @b64encode(i32 %36, i32* %37, i64 %38, i32* %9)
  store i64 %39, i64* %6, align 8
  br label %29

40:                                               ; preds = %29
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @luaL_optlstring(i32* %41, i32 2, i32* null, i64* %5)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %40
  store i64 0, i64* %10, align 8
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @b64pad(i32* %47, i64 %48, i32* %9)
  store i64 %49, i64* %6, align 8
  %50 = call i32 @luaL_pushresult(i32* %9)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @lua_tolstring(i32* %51, i32 -1, i64* %10)
  %53 = load i64, i64* %10, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @lua_pushnil(i32* %56)
  br label %58

58:                                               ; preds = %55, %46
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @lua_pushnil(i32* %59)
  store i32 2, i32* %2, align 4
  br label %83

61:                                               ; preds = %40
  %62 = load i32*, i32** %7, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %8, align 8
  br label %65

65:                                               ; preds = %69, %61
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = icmp ult i32* %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %7, align 8
  %72 = load i32, i32* %70, align 4
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @b64encode(i32 %72, i32* %73, i64 %74, i32* %9)
  store i64 %75, i64* %6, align 8
  br label %65

76:                                               ; preds = %65
  %77 = call i32 @luaL_pushresult(i32* %9)
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %80 = bitcast i32* %79 to i8*
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @lua_pushlstring(i32* %78, i8* %80, i64 %81)
  store i32 2, i32* %2, align 4
  br label %83

83:                                               ; preds = %76, %58, %19
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @luaL_optlstring(i32*, i32, i32*, i64*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i64 @b64encode(i32, i32*, i64, i32*) #1

declare dso_local i64 @b64pad(i32*, i64, i32*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i32 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

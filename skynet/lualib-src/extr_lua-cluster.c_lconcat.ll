; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_lconcat.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_lconcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TNUMBER = common dso_local global i64 0, align 8
@LUA_TSTRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lconcat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lconcat(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_istable(i32* %10, i32 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @lua_geti(i32* %15, i32 1, i32 1)
  %17 = load i64, i64* @LUA_TNUMBER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %77

20:                                               ; preds = %14
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_tointeger(i32* %21, i32 -1)
  store i32 %22, i32* %4, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_pop(i32* %23, i32 1)
  %25 = load i32, i32* %4, align 4
  %26 = call i8* @skynet_malloc(i32 %25)
  store i8* %26, i8** %5, align 8
  store i32 2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %46, %20
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @lua_geti(i32* %28, i32 1, i32 %29)
  %31 = load i64, i64* @LUA_TSTRING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %27
  %34 = load i32*, i32** %3, align 8
  %35 = call i8* @lua_tolstring(i32* %34, i32 -1, i64* %8)
  store i8* %35, i8** %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %36, %38
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @skynet_free(i8* %44)
  store i32 0, i32* %2, align 4
  br label %77

46:                                               ; preds = %33
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @memcpy(i8* %50, i8* %51, i64 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @lua_pop(i32* %54, i32 1)
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %27

63:                                               ; preds = %27
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @skynet_free(i8* %68)
  store i32 0, i32* %2, align 4
  br label %77

70:                                               ; preds = %63
  %71 = load i32*, i32** %3, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @lua_pushlightuserdata(i32* %71, i8* %72)
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @lua_pushinteger(i32* %74, i32 %75)
  store i32 2, i32* %2, align 4
  br label %77

77:                                               ; preds = %70, %67, %43, %19, %13
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i64 @lua_geti(i32*, i32, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i8* @skynet_malloc(i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @skynet_free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

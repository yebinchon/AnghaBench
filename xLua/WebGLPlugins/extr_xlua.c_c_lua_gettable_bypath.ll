; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_xlua.c_c_lua_gettable_bypath.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_xlua.c_c_lua_gettable_bypath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @c_lua_gettable_bypath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_lua_gettable_bypath(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  store i8* null, i8** %4, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @lua_tolstring(i32* %6, i32 2, i64* %3)
  store i8* %7, i8** %5, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @lua_pushvalue(i32* %8, i32 1)
  br label %10

10:                                               ; preds = %58, %1
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 46)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* null, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32*, i32** %2, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %3, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @lua_pushlstring(i32* %16, i8* %17, i32 %19)
  br label %41

21:                                               ; preds = %10
  %22 = load i32*, i32** %2, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @lua_pushlstring(i32* %22, i8* %23, i32 %29)
  %31 = load i64, i64* %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = add nsw i64 %36, 1
  %38 = sub i64 %31, %37
  store i64 %38, i64* %3, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %21, %15
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @lua_gettable(i32* %42, i32 -2)
  %44 = load i32*, i32** %2, align 8
  %45 = call i64 @lua_type(i32* %44, i32 -1)
  %46 = load i64, i64* @LUA_TTABLE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load i8*, i8** %4, align 8
  %50 = icmp ne i8* null, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @lua_pushnil(i32* %52)
  br label %54

54:                                               ; preds = %51, %48
  br label %61

55:                                               ; preds = %41
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @lua_remove(i32* %56, i32 -2)
  br label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %4, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %10, label %61

61:                                               ; preds = %58, %54
  ret i32 1
}

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

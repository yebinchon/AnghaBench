; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lutf8lib.c_utflen.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lutf8lib.c_utflen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"initial position out of string\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"final position out of string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @utflen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utflen(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 1, i64* %5)
  store i8* %11, i8** %6, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @luaL_optinteger(i32* %12, i32 2, i32 1)
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @u_posrelat(i32 %13, i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @luaL_optinteger(i32* %16, i32 3, i32 -1)
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @u_posrelat(i32 %17, i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 1, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %7, align 4
  %26 = load i64, i64* %5, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp sle i32 %25, %27
  br label %29

29:                                               ; preds = %23, %1
  %30 = phi i1 [ false, %1 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @luaL_argcheck(i32* %20, i32 %31, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %8, align 4
  %36 = load i64, i64* %5, align 8
  %37 = trunc i64 %36 to i32
  %38 = icmp slt i32 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @luaL_argcheck(i32* %33, i32 %39, i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %60, %29
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = call i8* @utf8_decode(i8* %49, i32* null)
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @lua_pushnil(i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @lua_pushinteger(i32* %56, i32 %58)
  store i32 2, i32* %2, align 4
  br label %73

60:                                               ; preds = %45
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %41

69:                                               ; preds = %41
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @lua_pushinteger(i32* %70, i32 %71)
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %53
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @u_posrelat(i32, i64) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i8* @utf8_decode(i8*, i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

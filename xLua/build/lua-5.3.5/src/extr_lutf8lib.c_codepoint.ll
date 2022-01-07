; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lutf8lib.c_codepoint.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lutf8lib.c_codepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"out of range\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"string slice too long\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"invalid UTF-8 code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @codepoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codepoint(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @luaL_checklstring(i32* %11, i32 1, i64* %4)
  store i8* %12, i8** %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @luaL_optinteger(i32* %13, i32 2, i32 1)
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @u_posrelat(i32 %14, i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @luaL_optinteger(i32* %17, i32 3, i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @u_posrelat(i32 %19, i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @luaL_argcheck(i32* %22, i32 %25, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i64, i64* %4, align 8
  %30 = trunc i64 %29 to i32
  %31 = icmp sle i32 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @luaL_argcheck(i32* %27, i32 %32, i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

38:                                               ; preds = %1
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i32, i32* @INT_MAX, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @luaL_error(i32* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %2, align 4
  br label %84

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %48, %49
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @luaL_checkstack(i32* %52, i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8* %58, i8** %9, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i8*, i8** %5, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %5, align 8
  br label %64

64:                                               ; preds = %76, %47
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = icmp ult i8* %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = call i8* @utf8_decode(i8* %69, i32* %10)
  store i8* %70, i8** %5, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @luaL_error(i32* %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %75, i32* %2, align 4
  br label %84

76:                                               ; preds = %68
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @lua_pushinteger(i32* %77, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %64

82:                                               ; preds = %64
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %73, %44, %37
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @u_posrelat(i32, i64) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i8* @utf8_decode(i8*, i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

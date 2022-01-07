; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-skynet.c_lintcommand.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-skynet.c_lintcommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid result %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lintcommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lintcommand(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_upvalueindex(i32 1)
  %15 = call %struct.skynet_context* @lua_touserdata(i32* %13, i32 %14)
  store %struct.skynet_context* %15, %struct.skynet_context** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i8* @luaL_checkstring(i32* %16, i32 1)
  store i8* %17, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @lua_gettop(i32* %18)
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @lua_isnumber(i32* %22, i32 2)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @luaL_checkinteger(i32* %26, i32 2)
  store i32 %27, i32* %9, align 4
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8* %31, i8** %7, align 8
  br label %35

32:                                               ; preds = %21
  %33 = load i32*, i32** %3, align 8
  %34 = call i8* @luaL_checkstring(i32* %33, i32 2)
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %32, %25
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i8* @skynet_command(%struct.skynet_context* %37, i8* %38, i8* %39)
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %77

43:                                               ; preds = %36
  store i8* null, i8** %10, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @strtoll(i8* %44, i8** %10, i32 0)
  store i32 %45, i32* %11, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %48, %43
  %54 = load i8*, i8** %6, align 8
  %55 = call double @strtod(i8* %54, i8** %10)
  store double %55, double* %12, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58, %53
  %64 = load i32*, i32** %3, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @luaL_error(i32* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  store i32 %66, i32* %2, align 4
  br label %78

67:                                               ; preds = %58
  %68 = load i32*, i32** %3, align 8
  %69 = load double, double* %12, align 8
  %70 = call i32 @lua_pushnumber(i32* %68, double %69)
  br label %71

71:                                               ; preds = %67
  br label %76

72:                                               ; preds = %48
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @lua_pushinteger(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %71
  store i32 1, i32* %2, align 4
  br label %78

77:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %76, %63
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.skynet_context* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @skynet_command(%struct.skynet_context*, i8*, i8*) #1

declare dso_local i32 @strtoll(i8*, i8**, i32) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

declare dso_local i32 @lua_pushnumber(i32*, double) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

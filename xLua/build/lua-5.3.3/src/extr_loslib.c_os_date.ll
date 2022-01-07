; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_loslib.c_os_date.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_loslib.c_os_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@l_checktime = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"time result cannot be represented in this installation\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"*t\00", align 1
@SIZETIMEFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @os_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_date(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 4
  %6 = alloca %struct.tm*, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i8* @luaL_optstring(i32* %11, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %3, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @l_checktime, align 4
  %15 = call i32 @time(i32* null)
  %16 = call i32 @luaL_opt(i32* %13, i32 %14, i32 2, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 33
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = call %struct.tm* @l_gmtime(i32* %4, %struct.tm* %5)
  store %struct.tm* %22, %struct.tm** %6, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  br label %27

25:                                               ; preds = %1
  %26 = call %struct.tm* @l_localtime(i32* %4, %struct.tm* %5)
  store %struct.tm* %26, %struct.tm** %6, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct.tm*, %struct.tm** %6, align 8
  %29 = icmp eq %struct.tm* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @luaL_error(i32* %31, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @lua_createtable(i32* %38, i32 0, i32 9)
  %40 = load i32*, i32** %2, align 8
  %41 = load %struct.tm*, %struct.tm** %6, align 8
  %42 = call i32 @setallfields(i32* %40, %struct.tm* %41)
  br label %81

43:                                               ; preds = %33
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 37, i8* %44, align 1
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @luaL_buffinit(i32* %45, i32* %8)
  br label %47

47:                                               ; preds = %78, %43
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load i8*, i8** %3, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 37
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %3, align 8
  %59 = load i8, i8* %57, align 1
  %60 = sext i8 %59 to i32
  %61 = call i32 @luaL_addchar(i32* %8, i32 %60)
  br label %78

62:                                               ; preds = %51
  %63 = load i32, i32* @SIZETIMEFMT, align 4
  %64 = call i8* @luaL_prepbuffsize(i32* %8, i32 %63)
  store i8* %64, i8** %10, align 8
  %65 = load i32*, i32** %2, align 8
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = call i8* @checkoption(i32* %65, i8* %67, i8* %69)
  store i8* %70, i8** %3, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* @SIZETIMEFMT, align 4
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %74 = load %struct.tm*, %struct.tm** %6, align 8
  %75 = call i64 @strftime(i8* %71, i32 %72, i8* %73, %struct.tm* %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @luaL_addsize(i32* %8, i64 %76)
  br label %78

78:                                               ; preds = %62, %56
  br label %47

79:                                               ; preds = %47
  %80 = call i32 @luaL_pushresult(i32* %8)
  br label %81

81:                                               ; preds = %79, %37
  ret i32 1
}

declare dso_local i8* @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i32 @luaL_opt(i32*, i32, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @l_gmtime(i32*, %struct.tm*) #1

declare dso_local %struct.tm* @l_localtime(i32*, %struct.tm*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @setallfields(i32*, %struct.tm*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @luaL_addchar(i32*, i32) #1

declare dso_local i8* @luaL_prepbuffsize(i32*, i32) #1

declare dso_local i8* @checkoption(i32*, i8*, i8*) #1

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @luaL_addsize(i32*, i64) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_loslib.c_os_date.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_loslib.c_os_date.c"
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
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tm, align 4
  %8 = alloca %struct.tm*, align 8
  %9 = alloca [4 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @luaL_optlstring(i32* %13, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %3)
  store i8* %14, i8** %4, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @l_checktime, align 4
  %17 = call i32 @time(i32* null)
  %18 = call i32 @luaL_opt(i32* %15, i32 %16, i32 2, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 33
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = call %struct.tm* @l_gmtime(i32* %5, %struct.tm* %7)
  store %struct.tm* %27, %struct.tm** %8, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  br label %32

30:                                               ; preds = %1
  %31 = call %struct.tm* @l_localtime(i32* %5, %struct.tm* %7)
  store %struct.tm* %31, %struct.tm** %8, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.tm*, %struct.tm** %8, align 8
  %34 = icmp eq %struct.tm* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @luaL_error(i32* %36, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @lua_createtable(i32* %43, i32 0, i32 9)
  %45 = load i32*, i32** %2, align 8
  %46 = load %struct.tm*, %struct.tm** %8, align 8
  %47 = call i32 @setallfields(i32* %45, %struct.tm* %46)
  br label %93

48:                                               ; preds = %38
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  store i8 37, i8* %49, align 1
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @luaL_buffinit(i32* %50, i32* %10)
  br label %52

52:                                               ; preds = %90, %48
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %56, label %91

56:                                               ; preds = %52
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 37
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  %64 = load i8, i8* %62, align 1
  %65 = sext i8 %64 to i32
  %66 = call i32 @luaL_addchar(i32* %10, i32 %65)
  br label %90

67:                                               ; preds = %56
  %68 = load i32, i32* @SIZETIMEFMT, align 4
  %69 = call i8* @luaL_prepbuffsize(i32* %10, i32 %68)
  store i8* %69, i8** %12, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  %72 = load i32*, i32** %2, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = call i8* @checkoption(i32* %72, i8* %73, i32 %79, i8* %81)
  store i8* %82, i8** %4, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* @SIZETIMEFMT, align 4
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %86 = load %struct.tm*, %struct.tm** %8, align 8
  %87 = call i64 @strftime(i8* %83, i32 %84, i8* %85, %struct.tm* %86)
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @luaL_addsize(i32* %10, i64 %88)
  br label %90

90:                                               ; preds = %67, %61
  br label %52

91:                                               ; preds = %52
  %92 = call i32 @luaL_pushresult(i32* %10)
  br label %93

93:                                               ; preds = %91, %42
  ret i32 1
}

declare dso_local i8* @luaL_optlstring(i32*, i32, i8*, i64*) #1

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

declare dso_local i8* @checkoption(i32*, i8*, i32, i8*) #1

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @luaL_addsize(i32*, i64) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_loslib.c_os_date.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_loslib.c_os_date.c"
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
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tm, align 4
  %9 = alloca %struct.tm*, align 8
  %10 = alloca [4 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i8* @luaL_optlstring(i32* %14, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %4)
  store i8* %15, i8** %5, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @l_checktime, align 4
  %18 = call i32 @time(i32* null)
  %19 = call i32 @luaL_opt(i32* %16, i32 %17, i32 2, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 33
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = call %struct.tm* @l_gmtime(i32* %6, %struct.tm* %8)
  store %struct.tm* %28, %struct.tm** %9, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  br label %33

31:                                               ; preds = %1
  %32 = call %struct.tm* @l_localtime(i32* %6, %struct.tm* %8)
  store %struct.tm* %32, %struct.tm** %9, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.tm*, %struct.tm** %9, align 8
  %35 = icmp eq %struct.tm* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @luaL_error(i32* %37, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %2, align 4
  br label %95

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @lua_createtable(i32* %44, i32 0, i32 9)
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.tm*, %struct.tm** %9, align 8
  %48 = call i32 @setallfields(i32* %46, %struct.tm* %47)
  br label %94

49:                                               ; preds = %39
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 37, i8* %50, align 1
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @luaL_buffinit(i32* %51, i32* %11)
  br label %53

53:                                               ; preds = %91, %49
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 37
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %5, align 8
  %65 = load i8, i8* %63, align 1
  %66 = sext i8 %65 to i32
  %67 = call i32 @luaL_addchar(i32* %11, i32 %66)
  br label %91

68:                                               ; preds = %57
  %69 = load i32, i32* @SIZETIMEFMT, align 4
  %70 = call i8* @luaL_prepbuffsize(i32* %11, i32 %69)
  store i8* %70, i8** %13, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %5, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = call i8* @checkoption(i32* %73, i8* %74, i32 %80, i8* %82)
  store i8* %83, i8** %5, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load i32, i32* @SIZETIMEFMT, align 4
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %87 = load %struct.tm*, %struct.tm** %9, align 8
  %88 = call i64 @strftime(i8* %84, i32 %85, i8* %86, %struct.tm* %87)
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %12, align 8
  %90 = call i32 @luaL_addsize(i32* %11, i64 %89)
  br label %91

91:                                               ; preds = %68, %62
  br label %53

92:                                               ; preds = %53
  %93 = call i32 @luaL_pushresult(i32* %11)
  br label %94

94:                                               ; preds = %92, %43
  store i32 1, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %36
  %96 = load i32, i32* %2, align 4
  ret i32 %96
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

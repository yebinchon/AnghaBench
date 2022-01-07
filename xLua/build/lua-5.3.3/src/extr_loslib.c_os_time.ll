; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_loslib.c_os_time.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_loslib.c_os_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }

@LUA_TTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"isdst\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"time result cannot be represented in this installation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @os_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_time(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @lua_isnoneornil(i32* %5, i32 1)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i64 @time(i32* null)
  store i64 %9, i64* %3, align 8
  br label %40

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @LUA_TTABLE, align 4
  %13 = call i32 @luaL_checktype(i32* %11, i32 1, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @lua_settop(i32* %14, i32 1)
  %16 = load i32*, i32** %2, align 8
  %17 = call i8* @getfield(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 6
  store i8* %17, i8** %18, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i8* @getfield(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  store i8* %20, i8** %21, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i8* @getfield(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 12, i32 0)
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  store i8* %23, i8** %24, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call i8* @getfield(i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 -1, i32 0)
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = call i8* @getfield(i32* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 -1, i32 1)
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = call i8* @getfield(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32 1900)
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @getboolfield(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = call i64 @mktime(%struct.tm* %4)
  store i64 %37, i64* %3, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @setallfields(i32* %38, %struct.tm* %4)
  br label %40

40:                                               ; preds = %10, %8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %3, align 8
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %40
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @luaL_error(i32* %48, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32*, i32** %2, align 8
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @l_pushtime(i32* %51, i64 %52)
  ret i32 1
}

declare dso_local i64 @lua_isnoneornil(i32*, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i8* @getfield(i32*, i8*, i32, i32) #1

declare dso_local i32 @getboolfield(i32*, i8*) #1

declare dso_local i64 @mktime(%struct.tm*) #1

declare dso_local i32 @setallfields(i32*, %struct.tm*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @l_pushtime(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

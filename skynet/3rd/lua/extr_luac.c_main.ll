; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_luac.c_main.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_luac.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"no input files given\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot create state: not enough memory\00", align 1
@pmain = common dso_local global i32 0, align 4
@LUA_OK = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @doargs(i32 %8, i8** %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8*, i8** %15, i64 %16
  store i8** %17, i8*** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @usage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %2
  %23 = call i32* (...) @luaL_newstate()
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @lua_pushcfunction(i32* %29, i32* @pmain)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @lua_pushinteger(i32* %31, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = call i32 @lua_pushlightuserdata(i32* %34, i8** %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @lua_pcall(i32* %37, i32 2, i32 0, i32 0)
  %39 = load i64, i64* @LUA_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load i32*, i32** %6, align 8
  %43 = call i8* @lua_tostring(i32* %42, i32 -1)
  %44 = call i32 @fatal(i8* %43)
  br label %45

45:                                               ; preds = %41, %28
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @lua_close(i32* %46)
  %48 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %48
}

declare dso_local i32 @doargs(i32, i8**) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32* @luaL_newstate(...) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i8**) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

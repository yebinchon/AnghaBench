; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lbaselib.c_luaB_print.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lbaselib.c_luaB_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"tostring\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"'tostring' must return a string to 'print'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_print(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_gettop(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_getglobal(i32* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %12

12:                                               ; preds = %42, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_pushvalue(i32* %17, i32 -1)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @lua_pushvalue(i32* %19, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_call(i32* %22, i32 1, i32 1)
  %24 = load i32*, i32** %3, align 8
  %25 = call i8* @lua_tolstring(i32* %24, i32 -1, i64* %7)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @luaL_error(i32* %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  br label %47

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @lua_writestring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1)
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @lua_writestring(i8* %37, i64 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @lua_pop(i32* %40, i32 1)
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %12

45:                                               ; preds = %12
  %46 = call i32 (...) @lua_writeline()
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %28
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_writestring(i8*, i64) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_writeline(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lua.c_msghandler.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lua.c_msghandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@LUA_TSTRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"(error object is a %s value)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @msghandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msghandler(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i8* @lua_tostring(i32* %5, i32 1)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @luaL_callmeta(i32* %10, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @lua_type(i32* %14, i32 -1)
  %16 = load i64, i64* @LUA_TSTRING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %30

19:                                               ; preds = %13, %9
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @luaL_typename(i32* %21, i32 1)
  %23 = call i8* @lua_pushfstring(i32* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i8* %23, i8** %4, align 8
  br label %24

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @luaL_traceback(i32* %26, i32* %27, i8* %28, i32 1)
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i64 @luaL_callmeta(i32*, i32, i8*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i8* @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

declare dso_local i32 @luaL_traceback(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

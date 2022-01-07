; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_luasocket.c_base_open.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_luasocket.c_base_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@func = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@LUASOCKET_VERSION = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to initialize library\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @base_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = call i64 (...) @socket_open()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @func, align 4
  %9 = call i32 @luaL_openlib(i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8, i32 0)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_pushstring(i32* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = load i8*, i8** @LUASOCKET_VERSION, align 8
  %14 = call i32 @lua_pushstring(i32* %12, i8* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_rawset(i32* %15, i32 -3)
  store i32 1, i32* %2, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @lua_pushstring(i32* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_error(i32* %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %17, %6
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @socket_open(...) #1

declare dso_local i32 @luaL_openlib(i32*, i8*, i32, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

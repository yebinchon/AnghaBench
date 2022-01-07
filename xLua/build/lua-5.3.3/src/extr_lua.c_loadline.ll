; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lua.c_loadline.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lua.c_loadline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @loadline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadline(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @lua_settop(i32* %5, i32 0)
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @pushline(i32* %7, i32 1)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @addreturn(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @LUA_OK, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @multiline(i32* %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_remove(i32* %20, i32 1)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_gettop(i32* %22)
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @lua_assert(i32 %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %19, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @pushline(i32*, i32) #1

declare dso_local i32 @addreturn(i32*) #1

declare dso_local i32 @multiline(i32*) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

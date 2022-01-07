; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_lua_setmetatable.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_lua_setmetatable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown typename %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaT_lua_setmetatable(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i8* @luaL_checkstring(i32* %4, i32 2)
  store i8* %5, i8** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @LUA_TTABLE, align 4
  %8 = call i32 @luaL_checktype(i32* %6, i32 1, i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @luaT_pushmetatable(i32* %9, i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @luaL_error(i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @lua_setmetatable(i32* %18, i32 1)
  ret i32 1
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @luaT_pushmetatable(i32*, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

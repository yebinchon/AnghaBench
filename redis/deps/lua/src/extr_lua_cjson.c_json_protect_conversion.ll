; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_protect_conversion.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_protect_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"expected 1 argument\00", align 1
@LUA_ERRRUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Memory allocation error in CJSON protected call\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @json_protect_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_protect_conversion(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_gettop(i32* %6)
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = call i32 @luaL_argcheck(i32* %5, i32 %9, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_upvalueindex(i32 1)
  %13 = call i32 @lua_pushvalue(i32* %11, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_insert(i32* %14, i32 1)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_pcall(i32* %16, i32 1, i32 1, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @LUA_ERRRUN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_pushnil(i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_insert(i32* %28, i32 -2)
  store i32 2, i32* %2, align 4
  br label %33

30:                                               ; preds = %21
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @luaL_error(i32* %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %25, %20
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

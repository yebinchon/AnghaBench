; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_lencode_order.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_lencode_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Invalid ordered dict\00", align 1
@encode_bson_byorder = common dso_local global i32 0, align 4
@LUA_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lencode_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lencode_order(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bson, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_gettop(i32* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = srem i32 %8, 2
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @luaL_error(i32* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = call i32 @bson_create(%struct.bson* %4)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_pushvalue(i32* %16, i32 1)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @encode_bson_byorder, align 4
  %20 = call i32 @lua_pushcfunction(i32* %18, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_replace(i32* %21, i32 1)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_pushlightuserdata(i32* %23, %struct.bson* %4)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i64 @lua_pcall(i32* %25, i32 %27, i32 1, i32 0)
  %29 = load i64, i64* @LUA_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %14
  %32 = call i32 @bson_destroy(%struct.bson* %4)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_error(i32* %33)
  store i32 %34, i32* %2, align 4
  br label %39

35:                                               ; preds = %14
  %36 = call i32 @bson_destroy(%struct.bson* %4)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @bson_meta(i32* %37)
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %31, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @bson_create(%struct.bson*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.bson*) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @bson_destroy(%struct.bson*) #1

declare dso_local i32 @lua_error(i32*) #1

declare dso_local i32 @bson_meta(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_xlua.c_is_cs_data.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_xlua.c_is_cs_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TUSERDATA = common dso_local global i64 0, align 8
@tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @is_cs_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_cs_data(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* @LUA_TUSERDATA, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @lua_type(i32* %7, i32 %8)
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @lua_getmetatable(i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @lua_pushlightuserdata(i32* %17, i32* @tag)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @lua_rawget(i32* %19, i32 -2)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @lua_isnil(i32* %21, i32 -1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @lua_pop(i32* %25, i32 2)
  store i32 1, i32* %3, align 4
  br label %31

27:                                               ; preds = %16
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @lua_pop(i32* %28, i32 2)
  br label %30

30:                                               ; preds = %27, %11, %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

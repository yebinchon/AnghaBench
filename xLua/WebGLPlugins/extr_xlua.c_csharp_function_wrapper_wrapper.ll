; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_xlua.c_csharp_function_wrapper_wrapper.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_xlua.c_csharp_function_wrapper_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @csharp_function_wrapper_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csharp_function_wrapper_wrapper(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_upvalueindex(i32 1)
  %8 = call i32 @xlua_tointeger(i32* %6, i32 %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_gettop(i32* %9)
  %11 = call i32 @g_csharp_wrapper_caller(i32* %5, i32 %8, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lua_upvalueindex(i32 2)
  %14 = call i64 @lua_toboolean(i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_pushboolean(i32* %17, i32 0)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_upvalueindex(i32 2)
  %21 = call i32 @lua_replace(i32* %19, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_error(i32* %22)
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @lua_gethook(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @call_ret_hook(i32* %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @g_csharp_wrapper_caller(i32*, i32, i32) #1

declare dso_local i32 @xlua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i32 @lua_error(i32*) #1

declare dso_local i64 @lua_gethook(i32*) #1

declare dso_local i32 @call_ret_hook(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lbaselib.c_luaB_loadfile.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lbaselib.c_luaB_loadfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_loadfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_loadfile(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @luaL_optstring(i32* %7, i32 1, i32* null)
  store i8* %8, i8** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i8* @luaL_optstring(i32* %9, i32 2, i32* null)
  store i8* %10, i8** %4, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_isnone(i32* %11, i32 3)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 3, i32 0
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @luaL_loadfilex(i32* %17, i8* %18, i8* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @load_aux(i32* %21, i32 %22, i32 %23)
  ret i32 %24
}

declare dso_local i8* @luaL_optstring(i32*, i32, i32*) #1

declare dso_local i32 @lua_isnone(i32*, i32) #1

declare dso_local i32 @luaL_loadfilex(i32*, i8*, i8*) #1

declare dso_local i32 @load_aux(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

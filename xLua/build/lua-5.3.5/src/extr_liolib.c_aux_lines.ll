; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_liolib.c_aux_lines.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_liolib.c_aux_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXARGLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@io_readline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @aux_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aux_lines(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_gettop(i32* %6)
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MAXARGLINE, align 4
  %12 = icmp sle i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @MAXARGLINE, align 4
  %15 = add nsw i32 %14, 2
  %16 = call i32 @luaL_argcheck(i32* %9, i32 %13, i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @lua_pushinteger(i32* %17, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @lua_pushboolean(i32* %20, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_rotate(i32* %23, i32 2, i32 2)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @io_readline, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 3, %27
  %29 = call i32 @lua_pushcclosure(i32* %25, i32 %26, i32 %28)
  ret void
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_rotate(i32*, i32, i32) #1

declare dso_local i32 @lua_pushcclosure(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

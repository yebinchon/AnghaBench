; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-skynet.c_lcommand.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-skynet.c_lcommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lcommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcommand(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_upvalueindex(i32 1)
  %10 = call %struct.skynet_context* @lua_touserdata(i32* %8, i32 %9)
  store %struct.skynet_context* %10, %struct.skynet_context** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @luaL_checkstring(i32* %11, i32 1)
  store i8* %12, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @luaL_checkstring(i32* %17, i32 2)
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @skynet_command(%struct.skynet_context* %20, i8* %21, i8* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @lua_pushstring(i32* %27, i8* %28)
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.skynet_context* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i8* @skynet_command(%struct.skynet_context*, i8*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

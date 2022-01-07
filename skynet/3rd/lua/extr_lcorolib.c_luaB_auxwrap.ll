; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lcorolib.c_luaB_auxwrap.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lcorolib.c_luaB_auxwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TSTRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_auxwrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_auxwrap(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_upvalueindex(i32 1)
  %8 = call i32* @lua_tothread(i32* %6, i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_gettop(i32* %11)
  %13 = call i32 @auxresume(i32* %9, i32* %10, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @lua_type(i32* %17, i32 -1)
  %19 = load i64, i64* @LUA_TSTRING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @luaL_where(i32* %22, i32 1)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_insert(i32* %24, i32 -2)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_concat(i32* %26, i32 2)
  br label %28

28:                                               ; preds = %21, %16
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_error(i32* %29)
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32* @lua_tothread(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @auxresume(i32*, i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_where(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_concat(i32*, i32) #1

declare dso_local i32 @lua_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

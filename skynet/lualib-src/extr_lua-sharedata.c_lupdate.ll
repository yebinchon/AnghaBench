; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_lupdate.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_lupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl = type { %struct.table*, %struct.table* }
%struct.table = type { i32 }

@LUA_TUSERDATA = common dso_local global i32 0, align 4
@LUA_TLIGHTUSERDATA = common dso_local global i32 0, align 4
@LUA_TTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"You should update a new object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lupdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lupdate(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ctrl*, align 8
  %5 = alloca %struct.table*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @LUA_TUSERDATA, align 4
  %8 = call i32 @luaL_checktype(i32* %6, i32 1, i32 %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @LUA_TLIGHTUSERDATA, align 4
  %11 = call i32 @luaL_checktype(i32* %9, i32 2, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @LUA_TTABLE, align 4
  %14 = call i32 @luaL_checktype(i32* %12, i32 3, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @lua_touserdata(i32* %15, i32 1)
  %17 = bitcast i8* %16 to %struct.ctrl*
  store %struct.ctrl* %17, %struct.ctrl** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @lua_touserdata(i32* %18, i32 2)
  %20 = bitcast i8* %19 to %struct.table*
  store %struct.table* %20, %struct.table** %5, align 8
  %21 = load %struct.ctrl*, %struct.ctrl** %4, align 8
  %22 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %21, i32 0, i32 1
  %23 = load %struct.table*, %struct.table** %22, align 8
  %24 = load %struct.table*, %struct.table** %5, align 8
  %25 = icmp eq %struct.table* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @luaL_error(i32* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %2, align 4
  br label %37

29:                                               ; preds = %1
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_settop(i32* %30, i32 3)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_setuservalue(i32* %32, i32 1)
  %34 = load %struct.table*, %struct.table** %5, align 8
  %35 = load %struct.ctrl*, %struct.ctrl** %4, align 8
  %36 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %35, i32 0, i32 0
  store %struct.table* %34, %struct.table** %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %29, %26
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_setuservalue(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

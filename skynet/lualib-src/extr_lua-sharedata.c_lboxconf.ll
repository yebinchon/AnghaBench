; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_lboxconf.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_lboxconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32 }
%struct.state = type { i32 }
%struct.ctrl = type { i32*, %struct.table* }

@.str = private unnamed_addr constant [9 x i8] c"confctrl\00", align 1
@releaseobj = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lboxconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lboxconf(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.table*, align 8
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.ctrl*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.table* @get_table(i32* %6, i32 1)
  store %struct.table* %7, %struct.table** %3, align 8
  %8 = load %struct.table*, %struct.table** %3, align 8
  %9 = getelementptr inbounds %struct.table, %struct.table* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.state* @lua_touserdata(i32 %10, i32 1)
  store %struct.state* %11, %struct.state** %4, align 8
  %12 = load %struct.state*, %struct.state** %4, align 8
  %13 = getelementptr inbounds %struct.state, %struct.state* %12, i32 0, i32 0
  %14 = call i32 @ATOM_INC(i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call %struct.ctrl* @lua_newuserdata(i32* %15, i32 16)
  store %struct.ctrl* %16, %struct.ctrl** %5, align 8
  %17 = load %struct.table*, %struct.table** %3, align 8
  %18 = load %struct.ctrl*, %struct.ctrl** %5, align 8
  %19 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %18, i32 0, i32 1
  store %struct.table* %17, %struct.table** %19, align 8
  %20 = load %struct.ctrl*, %struct.ctrl** %5, align 8
  %21 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i64 @luaL_newmetatable(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @releaseobj, align 4
  %28 = call i32 @lua_pushcfunction(i32* %26, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @lua_setfield(i32* %29, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %25, %1
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @lua_setmetatable(i32* %32, i32 -2)
  ret i32 1
}

declare dso_local %struct.table* @get_table(i32*, i32) #1

declare dso_local %struct.state* @lua_touserdata(i32, i32) #1

declare dso_local i32 @ATOM_INC(i32*) #1

declare dso_local %struct.ctrl* @lua_newuserdata(i32*, i32) #1

declare dso_local i64 @luaL_newmetatable(i32*, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

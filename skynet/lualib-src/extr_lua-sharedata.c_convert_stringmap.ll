; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_convert_stringmap.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_convert_stringmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i64, i32* }
%struct.table = type { i32 }
%struct.state = type { %struct.table*, i64, i64 }

@LUA_MINSTACK = common dso_local global i64 0, align 8
@LUA_GCCOLLECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.table*)* @convert_stringmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_stringmap(%struct.context* %0, %struct.table* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca %struct.table*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %3, align 8
  store %struct.table* %1, %struct.table** %4, align 8
  %8 = load %struct.context*, %struct.context** %3, align 8
  %9 = getelementptr inbounds %struct.context, %struct.context* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.context*, %struct.context** %3, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LUA_MINSTACK, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @lua_checkstack(i32* %11, i64 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.context*, %struct.context** %3, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i32 @lua_settop(i32* %18, i64 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @lua_pushvalue(i32* %24, i32 1)
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.state* @lua_newuserdata(i32* %26, i32 24)
  store %struct.state* %27, %struct.state** %6, align 8
  %28 = load %struct.state*, %struct.state** %6, align 8
  %29 = getelementptr inbounds %struct.state, %struct.state* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.state*, %struct.state** %6, align 8
  %31 = getelementptr inbounds %struct.state, %struct.state* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.table*, %struct.table** %4, align 8
  %33 = load %struct.state*, %struct.state** %6, align 8
  %34 = getelementptr inbounds %struct.state, %struct.state* %33, i32 0, i32 0
  store %struct.table* %32, %struct.table** %34, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @lua_replace(i32* %35, i32 1)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @lua_replace(i32* %37, i32 -2)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @lua_pushnil(i32* %39)
  br label %41

41:                                               ; preds = %45, %2
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @lua_next(i32* %42, i32 -2)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @lua_tointeger(i32* %46, i32 -1)
  store i32 %47, i32* %7, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @lua_pop(i32* %48, i32 1)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @lua_pushvalue(i32* %50, i32 -1)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @lua_replace(i32* %52, i32 %53)
  br label %41

55:                                               ; preds = %41
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @lua_pop(i32* %56, i32 1)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @LUA_GCCOLLECT, align 4
  %60 = call i32 @lua_gc(i32* %58, i32 %59, i32 0)
  ret void
}

declare dso_local i32 @lua_checkstack(i32*, i64) #1

declare dso_local i32 @lua_settop(i32*, i64) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local %struct.state* @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_gc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

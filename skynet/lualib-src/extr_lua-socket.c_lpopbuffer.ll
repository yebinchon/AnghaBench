; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lpopbuffer.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lpopbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_buffer = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Need buffer object at param 1\00", align 1
@LUA_TTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lpopbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpopbuffer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.socket_buffer*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.socket_buffer* @lua_touserdata(i32* %6, i32 1)
  store %struct.socket_buffer* %7, %struct.socket_buffer** %4, align 8
  %8 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %9 = icmp eq %struct.socket_buffer* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @luaL_error(i32* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %2, align 4
  br label %46

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @LUA_TTABLE, align 4
  %16 = call i32 @luaL_checktype(i32* %14, i32 2, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @luaL_checkinteger(i32* %17, i32 3)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %13
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_pushnil(i32* %28)
  br label %40

30:                                               ; preds = %24
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @pop_lstring(i32* %31, %struct.socket_buffer* %32, i32 %33, i32 0)
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %30, %27
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lua_pushinteger(i32* %41, i32 %44)
  store i32 2, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.socket_buffer* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @pop_lstring(i32*, %struct.socket_buffer*, i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

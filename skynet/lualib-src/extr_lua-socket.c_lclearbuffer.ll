; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lclearbuffer.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lclearbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_buffer = type { i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Need buffer object at param 1\00", align 1
@LUA_TTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lclearbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lclearbuffer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.socket_buffer*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call %struct.socket_buffer* @lua_touserdata(i32* %5, i32 1)
  store %struct.socket_buffer* %6, %struct.socket_buffer** %4, align 8
  %7 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %8 = icmp eq %struct.socket_buffer* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @lua_isnil(i32* %10, i32 1)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %33

14:                                               ; preds = %9
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @luaL_error(i32* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @LUA_TTABLE, align 4
  %20 = call i32 @luaL_checktype(i32* %18, i32 2, i32 %19)
  br label %21

21:                                               ; preds = %26, %17
  %22 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %29 = call i32 @return_free_node(i32* %27, i32 2, %struct.socket_buffer* %28)
  br label %21

30:                                               ; preds = %21
  %31 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %14, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.socket_buffer* @lua_touserdata(i32*, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @return_free_node(i32*, i32, %struct.socket_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

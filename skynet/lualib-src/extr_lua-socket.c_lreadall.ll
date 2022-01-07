; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lreadall.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lreadall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_buffer = type { i64, i64, %struct.buffer_node* }
%struct.buffer_node = type { i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Need buffer object at param 1\00", align 1
@LUA_TTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lreadall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lreadall(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.socket_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_node*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.socket_buffer* @lua_touserdata(i32* %7, i32 1)
  store %struct.socket_buffer* %8, %struct.socket_buffer** %4, align 8
  %9 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %10 = icmp eq %struct.socket_buffer* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @luaL_error(i32* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @LUA_TTABLE, align 4
  %17 = call i32 @luaL_checktype(i32* %15, i32 2, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @luaL_buffinit(i32* %18, i32* %5)
  br label %20

20:                                               ; preds = %25, %14
  %21 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %21, i32 0, i32 2
  %23 = load %struct.buffer_node*, %struct.buffer_node** %22, align 8
  %24 = icmp ne %struct.buffer_node* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %26, i32 0, i32 2
  %28 = load %struct.buffer_node*, %struct.buffer_node** %27, align 8
  store %struct.buffer_node* %28, %struct.buffer_node** %6, align 8
  %29 = load %struct.buffer_node*, %struct.buffer_node** %6, align 8
  %30 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load %struct.buffer_node*, %struct.buffer_node** %6, align 8
  %37 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = call i32 @luaL_addlstring(i32* %5, i64 %35, i64 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %46 = call i32 @return_free_node(i32* %44, i32 2, %struct.socket_buffer* %45)
  br label %20

47:                                               ; preds = %20
  %48 = call i32 @luaL_pushresult(i32* %5)
  %49 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %50 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %11
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.socket_buffer* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @luaL_addlstring(i32*, i64, i64) #1

declare dso_local i32 @return_free_node(i32*, i32, %struct.socket_buffer*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

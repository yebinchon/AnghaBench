; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_return_free_node.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_return_free_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_buffer = type { i32*, %struct.buffer_node*, i64 }
%struct.buffer_node = type { i64, i32*, %struct.buffer_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.socket_buffer*)* @return_free_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @return_free_node(i32* %0, i32 %1, %struct.socket_buffer* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket_buffer*, align 8
  %7 = alloca %struct.buffer_node*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.socket_buffer* %2, %struct.socket_buffer** %6, align 8
  %8 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %9 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %8, i32 0, i32 1
  %10 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  store %struct.buffer_node* %10, %struct.buffer_node** %7, align 8
  %11 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %12 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.buffer_node*, %struct.buffer_node** %7, align 8
  %14 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %13, i32 0, i32 2
  %15 = load %struct.buffer_node*, %struct.buffer_node** %14, align 8
  %16 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %16, i32 0, i32 1
  store %struct.buffer_node* %15, %struct.buffer_node** %17, align 8
  %18 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %18, i32 0, i32 1
  %20 = load %struct.buffer_node*, %struct.buffer_node** %19, align 8
  %21 = icmp eq %struct.buffer_node* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @lua_rawgeti(i32* %26, i32 %27, i32 1)
  %29 = load i32*, i32** %4, align 8
  %30 = call %struct.buffer_node* @lua_touserdata(i32* %29, i32 -1)
  %31 = load %struct.buffer_node*, %struct.buffer_node** %7, align 8
  %32 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %31, i32 0, i32 2
  store %struct.buffer_node* %30, %struct.buffer_node** %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @lua_pop(i32* %33, i32 1)
  %35 = load %struct.buffer_node*, %struct.buffer_node** %7, align 8
  %36 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @skynet_free(i32* %37)
  %39 = load %struct.buffer_node*, %struct.buffer_node** %7, align 8
  %40 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.buffer_node*, %struct.buffer_node** %7, align 8
  %42 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.buffer_node*, %struct.buffer_node** %7, align 8
  %45 = call i32 @lua_pushlightuserdata(i32* %43, %struct.buffer_node* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @lua_rawseti(i32* %46, i32 %47, i32 1)
  ret void
}

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local %struct.buffer_node* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @skynet_free(i32*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.buffer_node*) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_ludp_send.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_ludp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }
%struct.socket_sendbuffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ludp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ludp_send(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.skynet_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.socket_sendbuffer, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @lua_upvalueindex(i32 1)
  %10 = call %struct.skynet_context* @lua_touserdata(i32* %8, i32 %9)
  store %struct.skynet_context* %10, %struct.skynet_context** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @luaL_checkinteger(i32* %11, i32 1)
  store i32 %12, i32* %4, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @luaL_checkstring(i32* %13, i32 2)
  store i8* %14, i8** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @get_buffer(i32* %17, i32 3, %struct.socket_sendbuffer* %6)
  %19 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @skynet_socket_udp_sendbuffer(%struct.skynet_context* %19, i8* %20, %struct.socket_sendbuffer* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @lua_pushboolean(i32* %22, i32 %26)
  ret i32 1
}

declare dso_local %struct.skynet_context* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @get_buffer(i32*, i32, %struct.socket_sendbuffer*) #1

declare dso_local i32 @skynet_socket_udp_sendbuffer(%struct.skynet_context*, i8*, %struct.socket_sendbuffer*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

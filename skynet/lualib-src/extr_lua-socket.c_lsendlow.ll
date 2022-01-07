; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lsendlow.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lsendlow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }
%struct.socket_sendbuffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lsendlow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsendlow(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.skynet_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket_sendbuffer, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_upvalueindex(i32 1)
  %9 = call %struct.skynet_context* @lua_touserdata(i32* %7, i32 %8)
  store %struct.skynet_context* %9, %struct.skynet_context** %3, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @luaL_checkinteger(i32* %10, i32 1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @get_buffer(i32* %14, i32 2, %struct.socket_sendbuffer* %5)
  %16 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %17 = call i32 @skynet_socket_sendbuffer_lowpriority(%struct.skynet_context* %16, %struct.socket_sendbuffer* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @lua_pushboolean(i32* %18, i32 %22)
  ret i32 1
}

declare dso_local %struct.skynet_context* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @get_buffer(i32*, i32, %struct.socket_sendbuffer*) #1

declare dso_local i32 @skynet_socket_sendbuffer_lowpriority(%struct.skynet_context*, %struct.socket_sendbuffer*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

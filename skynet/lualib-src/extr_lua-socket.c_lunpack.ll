; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lunpack.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lunpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_socket_message = type { i64, i64, i64, i32* }

@SKYNET_SOCKET_TYPE_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lunpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lunpack(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.skynet_socket_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.skynet_socket_message* @lua_touserdata(i32* %8, i32 1)
  store %struct.skynet_socket_message* %9, %struct.skynet_socket_message** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_checkinteger(i32* %10, i32 2)
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %14 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @lua_pushinteger(i32* %12, i64 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %19 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @lua_pushinteger(i32* %17, i64 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %24 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @lua_pushinteger(i32* %22, i64 %25)
  %27 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %28 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %34 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %33, i64 1
  %35 = bitcast %struct.skynet_socket_message* %34 to i8*
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 32
  %39 = trunc i64 %38 to i32
  %40 = call i32 @lua_pushlstring(i32* %32, i8* %35, i32 %39)
  br label %47

41:                                               ; preds = %1
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %44 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @lua_pushlightuserdata(i32* %42, i32* %45)
  br label %47

47:                                               ; preds = %41, %31
  %48 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %49 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SKYNET_SOCKET_TYPE_UDP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  %54 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %55 = call i8* @skynet_socket_udp_address(%struct.skynet_socket_message* %54, i32* %6)
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32*, i32** %3, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @lua_pushlstring(i32* %59, i8* %60, i32 %61)
  store i32 5, i32* %2, align 4
  br label %65

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %47
  store i32 4, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %58
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.skynet_socket_message* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #1

declare dso_local i8* @skynet_socket_udp_address(%struct.skynet_socket_message*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

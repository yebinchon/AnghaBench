; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_udp.c_meth_sendto.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_udp.c_meth_sendto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.addrinfo = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"udp{unconnected}\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @meth_sendto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meth_sendto(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca %struct.addrinfo*, align 8
  store i32* %0, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @auxiliar_checkclass(i32* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1)
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %4, align 8
  store i64 0, i64* %6, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @luaL_checklstring(i32* %18, i32 2, i64* %5)
  store i8* %19, i8** %7, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @luaL_checkstring(i32* %20, i32 3)
  store i8* %21, i8** %8, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i8* @luaL_checkstring(i32* %22, i32 4)
  store i8* %23, i8** %9, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32* %25, i32** %10, align 8
  %26 = call i32 @memset(%struct.addrinfo* %12, i32 0, i32 32)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 4
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @SOCK_DGRAM, align 4
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @AI_NUMERICHOST, align 4
  %34 = load i32, i32* @AI_NUMERICSERV, align 4
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @getaddrinfo(i8* %37, i8* %38, %struct.addrinfo* %12, %struct.addrinfo** %13)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %1
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @lua_pushnil(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @gai_strerror(i32 %46)
  %48 = call i32 @lua_pushstring(i32* %45, i32 %47)
  store i32 2, i32* %2, align 4
  br label %82

49:                                               ; preds = %1
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @timeout_markstart(i32* %50)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %60 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @socket_sendto(i32* %53, i8* %54, i64 %55, i64* %6, i32 %58, i32 %62, i32* %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %66 = call i32 @freeaddrinfo(%struct.addrinfo* %65)
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @IO_DONE, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %49
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @lua_pushnil(i32* %71)
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @udp_strerror(i32 %74)
  %76 = call i32 @lua_pushstring(i32* %73, i32 %75)
  store i32 2, i32* %2, align 4
  br label %82

77:                                               ; preds = %49
  %78 = load i32*, i32** %3, align 8
  %79 = load i64, i64* %6, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @lua_pushnumber(i32* %78, i32 %80)
  store i32 1, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %70, %42
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @auxiliar_checkclass(i32*, i8*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @timeout_markstart(i32*) #1

declare dso_local i32 @socket_sendto(i32*, i8*, i64, i64*, i32, i32, i32*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @udp_strerror(i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

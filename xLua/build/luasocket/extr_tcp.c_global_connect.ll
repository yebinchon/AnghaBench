; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_tcp.c_global_connect.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_tcp.c_global_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"unspec\00", align 1
@socket_send = common dso_local global i64 0, align 8
@socket_recv = common dso_local global i64 0, align 8
@socket_ioerror = common dso_local global i64 0, align 8
@SOCKET_INVALID = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i8* null, align 8
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"tcp{client}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @global_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @global_connect(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @luaL_checkstring(i32* %13, i32 1)
  store i8* %14, i8** %4, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @luaL_checkstring(i32* %15, i32 2)
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @luaL_optstring(i32* %17, i32 3, i8* null)
  store i8* %18, i8** %6, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @luaL_optstring(i32* %19, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %7, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @inet_optfamily(i32* %21, i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_newuserdata(i32* %23, i32 4)
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.addrinfo*
  store %struct.addrinfo* %26, %struct.addrinfo** %9, align 8
  store i8* null, i8** %12, align 8
  %27 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %28 = call i32 @memset(%struct.addrinfo* %27, i32 0, i32 4)
  %29 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 6
  %31 = load i64, i64* @socket_send, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* @socket_recv, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* @socket_ioerror, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 2
  %39 = call i32 @io_init(i32* %30, i32 %32, i32 %34, i32 %36, i32* %38)
  %40 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 3
  %42 = call i32 @timeout_init(i32* %41, i32 -1, i32 -1)
  %43 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 7
  %45 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 6
  %47 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 3
  %49 = call i32 @buffer_init(i32* %44, i32* %46, i32* %48)
  %50 = load i32, i32* @SOCKET_INVALID, align 4
  %51 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @PF_UNSPEC, align 4
  %54 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = call i32 @memset(%struct.addrinfo* %10, i32 0, i32 40)
  %57 = load i8*, i8** @SOCK_STREAM, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 4
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @AI_PASSIVE, align 4
  %62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 5
  store i32 %61, i32* %62, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %84

65:                                               ; preds = %1
  %66 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 2
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i8* @inet_trybind(i32* %67, i8* %68, i8* %69, %struct.addrinfo* %10)
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @lua_pushnil(i32* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @lua_pushstring(i32* %76, i8* %77)
  store i32 2, i32* %2, align 4
  br label %114

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %79, %1
  %85 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %86 = load i8*, i8** @SOCK_STREAM, align 8
  %87 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %91, i32 0, i32 2
  %93 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %94 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %93, i32 0, i32 0
  %95 = load i8*, i8** %4, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %98 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %97, i32 0, i32 3
  %99 = call i8* @inet_tryconnect(i32* %92, i32* %94, i8* %95, i8* %96, i32* %98, %struct.addrinfo* %11)
  store i8* %99, i8** %12, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %84
  %103 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %103, i32 0, i32 2
  %105 = call i32 @socket_destroy(i32* %104)
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @lua_pushnil(i32* %106)
  %108 = load i32*, i32** %3, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 @lua_pushstring(i32* %108, i8* %109)
  store i32 2, i32* %2, align 4
  br label %114

111:                                              ; preds = %84
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @auxiliar_setclass(i32* %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  store i32 1, i32* %2, align 4
  br label %114

114:                                              ; preds = %111, %102, %73
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i32 @inet_optfamily(i32*, i32, i8*) #1

declare dso_local i32 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @io_init(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @timeout_init(i32*, i32, i32) #1

declare dso_local i32 @buffer_init(i32*, i32*, i32*) #1

declare dso_local i8* @inet_trybind(i32*, i8*, i8*, %struct.addrinfo*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i8* @inet_tryconnect(i32*, i32*, i8*, i8*, i32*, %struct.addrinfo*) #1

declare dso_local i32 @socket_destroy(i32*) #1

declare dso_local i32 @auxiliar_setclass(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

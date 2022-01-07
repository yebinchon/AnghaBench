; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_udp.c_meth_receivefrom.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_udp.c_meth_receivefrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"udp{unconnected}\00", align 1
@UDP_DATAGRAMSIZE = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@IO_CLOSED = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @meth_receivefrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meth_receivefrom(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sockaddr_storage, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca [6 x i8], align 1
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @auxiliar_checkclass(i32* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1)
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %4, align 8
  %20 = load i32, i32* @UDP_DATAGRAMSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %5, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = trunc i64 %21 to i32
  %26 = call i32 @luaL_optnumber(i32* %24, i32 2, i32 %25)
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %8, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32* %29, i32** %10, align 8
  store i32 4, i32* %12, align 4
  %30 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %13, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @timeout_markstart(i32* %33)
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %21 to i32
  %37 = call i64 @MIN(i64 %35, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = bitcast %struct.sockaddr_storage* %11 to i32*
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @socket_recvfrom(i32* %39, i8* %23, i64 %40, i64* %7, i32* %41, i32* %12, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @IO_CLOSED, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = load i32, i32* @IO_DONE, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %47, %1
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @IO_DONE, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @lua_pushnil(i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i8* @udp_strerror(i32 %57)
  %59 = call i32 @lua_pushstring(i32* %56, i8* %58)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %89

60:                                               ; preds = %49
  %61 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr*
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %64 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %65 = load i32, i32* @NI_NUMERICHOST, align 4
  %66 = load i32, i32* @NI_NUMERICSERV, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @getnameinfo(%struct.sockaddr* %61, i32 %62, i8* %32, i32 %63, i8* %64, i32 6, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %60
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @lua_pushnil(i32* %72)
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i8* @gai_strerror(i32 %75)
  %77 = call i32 @lua_pushstring(i32* %74, i8* %76)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %89

78:                                               ; preds = %60
  %79 = load i32*, i32** %3, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @lua_pushlstring(i32* %79, i8* %23, i64 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @lua_pushstring(i32* %82, i8* %32)
  %84 = load i32*, i32** %3, align 8
  %85 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %86 = call i64 @strtol(i8* %85, i8** null, i32 10)
  %87 = trunc i64 %86 to i32
  %88 = call i32 @lua_pushinteger(i32* %84, i32 %87)
  store i32 3, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %89

89:                                               ; preds = %78, %71, %53
  %90 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @auxiliar_checkclass(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @luaL_optnumber(i32*, i32, i32) #1

declare dso_local i32 @timeout_markstart(i32*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @socket_recvfrom(i32*, i8*, i64, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i8* @udp_strerror(i32) #1

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_tcp.c_tcp_create.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_tcp.c_tcp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"tcp{master}\00", align 1
@PF_INET6 = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@socket_send = common dso_local global i64 0, align 8
@socket_recv = common dso_local global i64 0, align 8
@socket_ioerror = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @tcp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_create(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SOCK_STREAM, align 4
  %12 = call i8* @inet_trycreate(i32* %6, i32 %10, i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %62, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @lua_newuserdata(i32* %16, i32 4)
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %8, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = call i32 @memset(%struct.TYPE_3__* %20, i32 0, i32 4)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @auxiliar_setclass(i32* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 -1)
  %24 = call i32 @socket_setnonblocking(i32* %6)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PF_INET6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %15
  store i32 1, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IPPROTO_IPV6, align 4
  %31 = load i32, i32* @IPV6_V6ONLY, align 4
  %32 = bitcast i32* %9 to i8*
  %33 = call i32 @setsockopt(i32 %29, i32 %30, i32 %31, i8* %32, i32 4)
  br label %34

34:                                               ; preds = %28, %15
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* @socket_send, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i64, i64* @socket_recv, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i64, i64* @socket_ioerror, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = call i32 @io_init(i32* %39, i32 %41, i32 %43, i32 %45, i32* %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = call i32 @timeout_init(i32* %50, i32 -1, i32 -1)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = call i32 @buffer_init(i32* %53, i32* %55, i32* %57)
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  store i32 1, i32* %3, align 4
  br label %68

62:                                               ; preds = %2
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @lua_pushnil(i32* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @lua_pushstring(i32* %65, i8* %66)
  store i32 2, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %34
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i8* @inet_trycreate(i32*, i32, i32) #1

declare dso_local i32 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @auxiliar_setclass(i32*, i8*, i32) #1

declare dso_local i32 @socket_setnonblocking(i32*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @io_init(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @timeout_init(i32*, i32, i32) #1

declare dso_local i32 @buffer_init(i32*, i32*, i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

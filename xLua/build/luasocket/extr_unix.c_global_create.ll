; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_unix.c_global_create.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_unix.c_global_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"unix{master}\00", align 1
@socket_send = common dso_local global i64 0, align 8
@socket_recv = common dso_local global i64 0, align 8
@socket_ioerror = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @global_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @global_create(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @AF_UNIX, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = call i32 @socket_create(i32* %4, i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @IO_DONE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_newuserdata(i32* %14, i32 4)
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %6, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @auxiliar_setclass(i32* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 -1)
  %20 = call i32 @socket_setnonblocking(i32* %4)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* @socket_send, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* @socket_recv, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* @socket_ioerror, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = call i32 @io_init(i32* %25, i32 %27, i32 %29, i32 %31, i32* %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @timeout_init(i32* %36, i32 -1, i32 -1)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @buffer_init(i32* %39, i32* %41, i32* %43)
  store i32 1, i32* %2, align 4
  br label %52

45:                                               ; preds = %1
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_pushnil(i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @socket_strerror(i32 %49)
  %51 = call i32 @lua_pushstring(i32* %48, i32 %50)
  store i32 2, i32* %2, align 4
  br label %52

52:                                               ; preds = %45, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @socket_create(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @auxiliar_setclass(i32*, i8*, i32) #1

declare dso_local i32 @socket_setnonblocking(i32*) #1

declare dso_local i32 @io_init(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @timeout_init(i32*, i32, i32) #1

declare dso_local i32 @buffer_init(i32*, i32*, i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @socket_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

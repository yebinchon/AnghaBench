; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_unix.c_meth_accept.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_unix.c_meth_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"unix{server}\00", align 1
@IO_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"unix{client}\00", align 1
@socket_send = common dso_local global i64 0, align 8
@socket_recv = common dso_local global i64 0, align 8
@socket_ioerror = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @meth_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meth_accept(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @auxiliar_checkclass(i32* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1)
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %4, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @timeout_markstart(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @socket_accept(i32* %17, i32* %6, i32* null, i32* null, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @IO_DONE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_newuserdata(i32* %24, i32 4)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %8, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @auxiliar_setclass(i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %30 = call i32 @socket_setnonblocking(i32* %6)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* @socket_send, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64, i64* @socket_recv, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i64, i64* @socket_ioerror, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = call i32 @io_init(i32* %35, i32 %37, i32 %39, i32 %41, i32* %43)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @timeout_init(i32* %46, i32 -1, i32 -1)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @buffer_init(i32* %49, i32* %51, i32* %53)
  store i32 1, i32* %2, align 4
  br label %62

55:                                               ; preds = %1
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @lua_pushnil(i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @socket_strerror(i32 %59)
  %61 = call i32 @lua_pushstring(i32* %58, i32 %60)
  store i32 2, i32* %2, align 4
  br label %62

62:                                               ; preds = %55, %23
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @auxiliar_checkclass(i32*, i8*, i32) #1

declare dso_local i32 @timeout_markstart(i32*) #1

declare dso_local i32 @socket_accept(i32*, i32*, i32*, i32*, i32) #1

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

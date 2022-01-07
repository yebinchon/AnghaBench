; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_serial.c_global_create.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_serial.c_global_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@O_NOCTTY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"serial{client}\00", align 1
@socket_write = common dso_local global i64 0, align 8
@socket_read = common dso_local global i64 0, align 8
@socket_ioerror = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @global_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @global_create(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @luaL_checkstring(i32* %7, i32 1)
  store i8* %8, i8** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_newuserdata(i32* %9, i32 4)
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @O_NOCTTY, align 4
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @open(i8* %13, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_pushnil(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @socket_strerror(i32 %24)
  %26 = call i32 @lua_pushstring(i32* %23, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @lua_pushnumber(i32* %27, i32 %28)
  store i32 3, i32* %2, align 4
  br label %58

30:                                               ; preds = %1
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @auxiliar_setclass(i32* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 -1)
  %33 = call i32 @socket_setnonblocking(i64* %6)
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* @socket_write, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* @socket_read, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i64, i64* @socket_ioerror, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = call i32 @io_init(i32* %38, i32 %40, i32 %42, i32 %44, i64* %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @timeout_init(i32* %49, i32 -1, i32 -1)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @buffer_init(i32* %52, i32* %54, i32* %56)
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %30, %20
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_newuserdata(i32*, i32) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @socket_strerror(i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @auxiliar_setclass(i32*, i8*, i32) #1

declare dso_local i32 @socket_setnonblocking(i64*) #1

declare dso_local i32 @io_init(i32*, i32, i32, i32, i64*) #1

declare dso_local i32 @timeout_init(i32*, i32, i32) #1

declare dso_local i32 @buffer_init(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

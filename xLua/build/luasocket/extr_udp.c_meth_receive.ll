; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_udp.c_meth_receive.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_udp.c_meth_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"udp{any}\00", align 1
@UDP_DATAGRAMSIZE = common dso_local global i32 0, align 4
@IO_CLOSED = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @meth_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meth_receive(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @auxiliar_checkgroup(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %4, align 8
  %16 = load i32, i32* @UDP_DATAGRAMSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = trunc i64 %17 to i32
  %22 = call i32 @luaL_optnumber(i32* %20, i32 2, i32 %21)
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %8, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32* %25, i32** %10, align 8
  %26 = load i64, i64* %8, align 8
  %27 = trunc i64 %17 to i32
  %28 = call i64 @MIN(i64 %26, i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @timeout_markstart(i32* %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %8, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @socket_recv(i32* %32, i8* %19, i64 %33, i64* %7, i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @IO_CLOSED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @IO_DONE, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %1
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @IO_DONE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_pushnil(i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @udp_strerror(i32 %49)
  %51 = call i32 @lua_pushstring(i32* %48, i32 %50)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %56

52:                                               ; preds = %41
  %53 = load i32*, i32** %3, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @lua_pushlstring(i32* %53, i8* %19, i64 %54)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @auxiliar_checkgroup(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @luaL_optnumber(i32*, i32, i32) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @timeout_markstart(i32*) #1

declare dso_local i32 @socket_recv(i32*, i8*, i64, i64*, i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @udp_strerror(i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

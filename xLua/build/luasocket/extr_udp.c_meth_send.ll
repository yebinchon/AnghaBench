; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_udp.c_meth_send.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_udp.c_meth_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"udp{connected}\00", align 1
@IO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @meth_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meth_send(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @auxiliar_checkclass(i32* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1)
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %4, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32* %15, i32** %5, align 8
  store i64 0, i64* %7, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i8* @luaL_checklstring(i32* %16, i32 2, i64* %6)
  store i8* %17, i8** %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @timeout_markstart(i32* %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @socket_send(i32* %21, i8* %22, i64 %23, i64* %7, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @IO_DONE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_pushnil(i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @udp_strerror(i32 %33)
  %35 = call i32 @lua_pushstring(i32* %32, i32 %34)
  store i32 2, i32* %2, align 4
  br label %41

36:                                               ; preds = %1
  %37 = load i32*, i32** %3, align 8
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @lua_pushnumber(i32* %37, i32 %39)
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @auxiliar_checkclass(i32*, i8*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @timeout_markstart(i32*) #1

declare dso_local i32 @socket_send(i32*, i8*, i64, i64*, i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @udp_strerror(i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

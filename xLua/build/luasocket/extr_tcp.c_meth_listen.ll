; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_tcp.c_meth_listen.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_tcp.c_meth_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"tcp{master}\00", align 1
@IO_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"tcp{server}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @meth_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meth_listen(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @auxiliar_checkclass(i32* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1)
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @luaL_optnumber(i32* %11, i32 2, i32 32)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @socket_listen(i32* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @IO_DONE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_pushnil(i32* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @socket_strerror(i32 %25)
  %27 = call i32 @lua_pushstring(i32* %24, i32 %26)
  store i32 2, i32* %2, align 4
  br label %33

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @auxiliar_setclass(i32* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_pushnumber(i32* %31, i32 1)
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @auxiliar_checkclass(i32*, i8*, i32) #1

declare dso_local i64 @luaL_optnumber(i32*, i32, i32) #1

declare dso_local i32 @socket_listen(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @socket_strerror(i32) #1

declare dso_local i32 @auxiliar_setclass(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

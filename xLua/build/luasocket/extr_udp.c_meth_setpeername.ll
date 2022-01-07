; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_udp.c_meth_setpeername.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_udp.c_meth_setpeername.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.addrinfo = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"udp{any}\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"udp{connected}\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"udp{unconnected}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @meth_setpeername to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meth_setpeername(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.addrinfo, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @auxiliar_checkgroup(i32* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %4, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @luaL_checkstring(i32* %17, i32 2)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i8* @luaL_checkstring(i32* %24, i32 3)
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i8* [ %25, %23 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %26 ]
  store i8* %28, i8** %8, align 8
  %29 = call i32 @memset(%struct.addrinfo* %9, i32 0, i32 8)
  %30 = load i32, i32* @SOCK_DGRAM, align 4
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %27
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i8* @inet_tryconnect(i32* %40, i32* %42, i8* %43, i8* %44, i32* %45, %struct.addrinfo* %9)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @lua_pushnil(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @lua_pushstring(i32* %52, i8* %53)
  store i32 2, i32* %2, align 4
  br label %71

55:                                               ; preds = %38
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @auxiliar_setclass(i32* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %68

58:                                               ; preds = %27
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @inet_trydisconnect(i32* %60, i32 %63, i32* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @auxiliar_setclass(i32* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %68

68:                                               ; preds = %58, %55
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @lua_pushnumber(i32* %69, i32 1)
  store i32 1, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %49
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @auxiliar_checkgroup(i32*, i8*, i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i8* @inet_tryconnect(i32*, i32*, i8*, i8*, i32*, %struct.addrinfo*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @auxiliar_setclass(i32*, i8*, i32) #1

declare dso_local i32 @inet_trydisconnect(i32*, i32, i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

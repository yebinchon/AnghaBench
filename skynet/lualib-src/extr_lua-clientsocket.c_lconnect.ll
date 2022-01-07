; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-clientsocket.c_lconnect.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-clientsocket.c_lconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Connect %s %d failed\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lconnect(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @luaL_checkstring(i32* %10, i32 1)
  store i8* %11, i8** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @luaL_checkinteger(i32* %12, i32 2)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @AF_INET, align 4
  %15 = load i32, i32* @SOCK_STREAM, align 4
  %16 = call i32 @socket(i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @inet_addr(i8* %17)
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @AF_INET, align 4
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @htons(i32 %23)
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %28 = call i32 @connect(i32 %26, %struct.sockaddr* %27, i32 12)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load i32*, i32** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @luaL_error(i32* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34)
  store i32 %35, i32* %2, align 4
  br label %49

36:                                               ; preds = %1
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @F_GETFL, align 4
  %39 = call i32 @fcntl(i32 %37, i32 %38, i32 0)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @F_SETFL, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @O_NONBLOCK, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @fcntl(i32 %40, i32 %41, i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @lua_pushinteger(i32* %46, i32 %47)
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %36, %31
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

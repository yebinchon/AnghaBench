; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_global_toip.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_global_toip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64 }
%struct.in_addr = type { i32 }

@IO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @inet_global_toip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_global_toip(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @luaL_checkstring(i32* %7, i32 1)
  store i8* %8, i8** %4, align 8
  store %struct.hostent* null, %struct.hostent** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @inet_gethost(i8* %9, %struct.hostent** %5)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IO_DONE, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_pushnil(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @socket_hoststrerror(i32 %18)
  %20 = call i32 @lua_pushstring(i32* %17, i32 %19)
  store i32 2, i32* %2, align 4
  br label %34

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.hostent*, %struct.hostent** %5, align 8
  %24 = getelementptr inbounds %struct.hostent, %struct.hostent* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.in_addr*
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @inet_ntoa(i32 %28)
  %30 = call i32 @lua_pushstring(i32* %22, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.hostent*, %struct.hostent** %5, align 8
  %33 = call i32 @inet_pushresolved(i32* %31, %struct.hostent* %32)
  store i32 2, i32* %2, align 4
  br label %34

34:                                               ; preds = %21, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @inet_gethost(i8*, %struct.hostent**) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @socket_hoststrerror(i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @inet_pushresolved(i32*, %struct.hostent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

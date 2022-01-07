; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_ludp.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_ludp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"udp init failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ludp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ludp(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_upvalueindex(i32 1)
  %15 = call %struct.skynet_context* @lua_touserdata(i32* %13, i32 %14)
  store %struct.skynet_context* %15, %struct.skynet_context** %4, align 8
  store i64 0, i64* %5, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i8* @lua_tolstring(i32* %16, i32 1, i64* %5)
  store i8* %17, i8** %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @address_port(i32* %24, i8* %20, i8* %25, i32 2, i32* %9)
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @skynet_socket_udp(%struct.skynet_context* %28, i8* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @luaL_error(i32* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %41

37:                                               ; preds = %27
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @lua_pushinteger(i32* %38, i32 %39)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.skynet_context* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @address_port(i32*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @skynet_socket_udp(%struct.skynet_context*, i8*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

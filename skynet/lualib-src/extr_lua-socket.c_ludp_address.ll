; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_ludp_address.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_ludp_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid udp address\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ludp_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ludp_address(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @luaL_checklstring(i32* %10, i32 1, i64* %4)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = call i32 @memcpy(i32* %6, i32* %14, i32 4)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ntohs(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = bitcast i32* %19 to i8*
  store i8* %20, i8** %7, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %21, 7
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @AF_INET, align 4
  store i32 %24, i32* %9, align 4
  br label %33

25:                                               ; preds = %1
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 19
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @luaL_error(i32* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  br label %49

31:                                               ; preds = %25
  %32 = load i32, i32* @AF_INET6, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %23
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %37 = call i32* @inet_ntop(i32 %34, i8* %35, i8* %36, i32 256)
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @luaL_error(i32* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %41, i32* %2, align 4
  br label %49

42:                                               ; preds = %33
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %45 = call i32 @lua_pushstring(i32* %43, i8* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @lua_pushinteger(i32* %46, i32 %47)
  store i32 2, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %39, %28
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32* @inet_ntop(i32, i8*, i8*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

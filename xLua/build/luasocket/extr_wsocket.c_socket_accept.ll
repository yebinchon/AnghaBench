; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_accept.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCKET_INVALID = common dso_local global i64 0, align 8
@IO_CLOSED = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@WSAECONNABORTED = common dso_local global i32 0, align 4
@WAITFD_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_accept(i64* %0, i64* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SOCKET_INVALID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @IO_CLOSED, align 4
  store i32 %18, i32* %6, align 4
  br label %52

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %51, %19
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i64 @accept(i64 %22, i32* %23, i32* %24)
  %26 = load i64*, i64** %8, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* @SOCKET_INVALID, align 8
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @IO_DONE, align 4
  store i32 %30, i32* %6, align 4
  br label %52

31:                                               ; preds = %20
  %32 = call i32 (...) @WSAGetLastError()
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @WSAEWOULDBLOCK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @WSAECONNABORTED, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %52

42:                                               ; preds = %36, %31
  %43 = load i64*, i64** %7, align 8
  %44 = load i32, i32* @WAITFD_R, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @socket_waitfd(i64* %43, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @IO_DONE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %52

51:                                               ; preds = %42
  br label %20

52:                                               ; preds = %49, %40, %29, %17
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i64 @accept(i64, i32*, i32*) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @socket_waitfd(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

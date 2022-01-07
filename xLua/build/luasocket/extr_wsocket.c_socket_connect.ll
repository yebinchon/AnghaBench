; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_connect.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCKET_INVALID = common dso_local global i64 0, align 8
@IO_CLOSED = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@WSAEINPROGRESS = common dso_local global i32 0, align 4
@IO_TIMEOUT = common dso_local global i32 0, align 4
@WAITFD_C = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@IO_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_connect(i64* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SOCKET_INVALID, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @IO_CLOSED, align 4
  store i32 %17, i32* %5, align 4
  br label %70

18:                                               ; preds = %4
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @connect(i64 %20, i32* %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @IO_DONE, align 4
  store i32 %26, i32* %5, align 4
  br label %70

27:                                               ; preds = %18
  %28 = call i32 (...) @WSAGetLastError()
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @WSAEWOULDBLOCK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @WSAEINPROGRESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %70

38:                                               ; preds = %32, %27
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @timeout_iszero(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @IO_TIMEOUT, align 4
  store i32 %43, i32* %5, align 4
  br label %70

44:                                               ; preds = %38
  %45 = load i64*, i64** %6, align 8
  %46 = load i32, i32* @WAITFD_C, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @socket_waitfd(i64* %45, i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @IO_CLOSED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %44
  store i32 4, i32* %11, align 4
  %53 = call i32 @Sleep(i32 10)
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @SOL_SOCKET, align 4
  %57 = load i32, i32* @SO_ERROR, align 4
  %58 = bitcast i32* %10 to i8*
  %59 = call i32 @getsockopt(i64 %55, i32 %56, i32 %57, i8* %58, i32* %11)
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %10, align 4
  br label %66

64:                                               ; preds = %52
  %65 = load i32, i32* @IO_UNKNOWN, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %5, align 4
  br label %70

68:                                               ; preds = %44
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %66, %42, %36, %25, %16
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @connect(i64, i32*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i64 @timeout_iszero(i32) #1

declare dso_local i32 @socket_waitfd(i64*, i32, i32) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @getsockopt(i64, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_send.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCKET_INVALID = common dso_local global i64 0, align 8
@IO_CLOSED = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@WAITFD_W = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_send(i64* %0, i8* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i64*, i64** %10, align 8
  store i64 0, i64* %14, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SOCKET_INVALID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @IO_CLOSED, align 4
  store i32 %20, i32* %6, align 4
  br label %53

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %52, %21
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @send(i64 %24, i8* %25, i32 %27, i32 0)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64*, i64** %10, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* @IO_DONE, align 4
  store i32 %35, i32* %6, align 4
  br label %53

36:                                               ; preds = %22
  %37 = call i32 (...) @WSAGetLastError()
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @WSAEWOULDBLOCK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %53

43:                                               ; preds = %36
  %44 = load i64*, i64** %7, align 8
  %45 = load i32, i32* @WAITFD_W, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @socket_waitfd(i64* %44, i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* @IO_DONE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %53

52:                                               ; preds = %43
  br label %22

53:                                               ; preds = %50, %41, %31, %19
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @send(i64, i8*, i32, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @socket_waitfd(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

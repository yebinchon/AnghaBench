; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_recv.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IO_DONE = common dso_local global i32 0, align 4
@SOCKET_INVALID = common dso_local global i64 0, align 8
@IO_CLOSED = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@WSAECONNRESET = common dso_local global i32 0, align 4
@WAITFD_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_recv(i64* %0, i8* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @IO_DONE, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i64*, i64** %10, align 8
  store i64 0, i64* %16, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SOCKET_INVALID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @IO_CLOSED, align 4
  store i32 %22, i32* %6, align 4
  br label %70

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %69, %23
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @recv(i64 %26, i8* %27, i32 %29, i32 0)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %10, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* @IO_DONE, align 4
  store i32 %37, i32* %6, align 4
  br label %70

38:                                               ; preds = %24
  %39 = load i32, i32* %14, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @IO_CLOSED, align 4
  store i32 %42, i32* %6, align 4
  br label %70

43:                                               ; preds = %38
  %44 = call i32 (...) @WSAGetLastError()
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @WSAEWOULDBLOCK, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @WSAECONNRESET, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @WSAECONNRESET, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %70

58:                                               ; preds = %52
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %58, %43
  %61 = load i64*, i64** %7, align 8
  %62 = load i32, i32* @WAITFD_R, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @socket_waitfd(i64* %61, i32 %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* @IO_DONE, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %6, align 4
  br label %70

69:                                               ; preds = %60
  br label %24

70:                                               ; preds = %67, %56, %41, %33, %21
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @recv(i64, i8*, i32, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @socket_waitfd(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

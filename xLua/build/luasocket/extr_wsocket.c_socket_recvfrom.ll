; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_recvfrom.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IO_DONE = common dso_local global i32 0, align 4
@SOCKET_INVALID = common dso_local global i64 0, align 8
@IO_CLOSED = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@WSAECONNRESET = common dso_local global i32 0, align 4
@WAITFD_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_recvfrom(i64* %0, i8* %1, i64 %2, i64* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i64* %0, i64** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* @IO_DONE, align 4
  store i32 %19, i32* %17, align 4
  %20 = load i64*, i64** %12, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SOCKET_INVALID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @IO_CLOSED, align 4
  store i32 %26, i32* %8, align 4
  br label %76

27:                                               ; preds = %7
  br label %28

28:                                               ; preds = %75, %27
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %13, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = call i32 @recvfrom(i64 %30, i8* %31, i32 %33, i32 0, i32* %34, i32* %35)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i32, i32* %18, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64*, i64** %12, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i32, i32* @IO_DONE, align 4
  store i32 %43, i32* %8, align 4
  br label %76

44:                                               ; preds = %28
  %45 = load i32, i32* %18, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @IO_CLOSED, align 4
  store i32 %48, i32* %8, align 4
  br label %76

49:                                               ; preds = %44
  %50 = call i32 (...) @WSAGetLastError()
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* @WSAEWOULDBLOCK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @WSAECONNRESET, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @WSAECONNRESET, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %8, align 4
  br label %76

64:                                               ; preds = %58
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %64, %49
  %67 = load i64*, i64** %9, align 8
  %68 = load i32, i32* @WAITFD_R, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @socket_waitfd(i64* %67, i32 %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* @IO_DONE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %8, align 4
  br label %76

75:                                               ; preds = %66
  br label %28

76:                                               ; preds = %73, %62, %47, %39, %25
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @recvfrom(i64, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @socket_waitfd(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

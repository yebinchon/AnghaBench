; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_sendto.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_sendto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCKET_INVALID = common dso_local global i64 0, align 8
@IO_CLOSED = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@WAITFD_W = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_sendto(i64* %0, i8* %1, i64 %2, i64* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64* %0, i64** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i64*, i64** %12, align 8
  store i64 0, i64* %18, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SOCKET_INVALID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i32, i32* @IO_CLOSED, align 4
  store i32 %24, i32* %8, align 4
  br label %59

25:                                               ; preds = %7
  br label %26

26:                                               ; preds = %58, %25
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @sendto(i64 %28, i8* %29, i32 %31, i32 0, i32* %32, i32 %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %12, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* @IO_DONE, align 4
  store i32 %41, i32* %8, align 4
  br label %59

42:                                               ; preds = %26
  %43 = call i32 (...) @WSAGetLastError()
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @WSAEWOULDBLOCK, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %8, align 4
  br label %59

49:                                               ; preds = %42
  %50 = load i64*, i64** %9, align 8
  %51 = load i32, i32* @WAITFD_W, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @socket_waitfd(i64* %50, i32 %51, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* @IO_DONE, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %8, align 4
  br label %59

58:                                               ; preds = %49
  br label %26

59:                                               ; preds = %56, %47, %37, %23
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @sendto(i64, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @socket_waitfd(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

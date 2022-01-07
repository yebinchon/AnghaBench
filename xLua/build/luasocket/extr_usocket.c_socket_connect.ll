; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_connect.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCKET_INVALID = common dso_local global i64 0, align 8
@IO_CLOSED = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IO_TIMEOUT = common dso_local global i32 0, align 4
@WAITFD_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_connect(i64* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SOCKET_INVALID, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @IO_CLOSED, align 4
  store i32 %16, i32* %5, align 4
  br label %68

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %28, %17
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
  br label %68

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @errno, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @EINTR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %18, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @EINPROGRESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %68

42:                                               ; preds = %36, %32
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @timeout_iszero(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @IO_TIMEOUT, align 4
  store i32 %47, i32* %5, align 4
  br label %68

48:                                               ; preds = %42
  %49 = load i64*, i64** %6, align 8
  %50 = load i32, i32* @WAITFD_C, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @socket_waitfd(i64* %49, i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @IO_CLOSED, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load i64*, i64** %6, align 8
  %58 = load i64, i64* %57, align 8
  %59 = bitcast i32* %10 to i8*
  %60 = call i64 @recv(i64 %58, i8* %59, i32 0, i32 0)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @IO_DONE, align 4
  store i32 %63, i32* %5, align 4
  br label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @errno, align 4
  store i32 %65, i32* %5, align 4
  br label %68

66:                                               ; preds = %48
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %64, %62, %46, %40, %25, %15
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @connect(i64, i32*, i32) #1

declare dso_local i64 @timeout_iszero(i32) #1

declare dso_local i32 @socket_waitfd(i64*, i32, i32) #1

declare dso_local i64 @recv(i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

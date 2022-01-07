; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_recvfrom.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCKET_INVALID = common dso_local global i64 0, align 8
@IO_CLOSED = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@WAITFD_R = common dso_local global i32 0, align 4
@IO_UNKNOWN = common dso_local global i32 0, align 4

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
  %17 = alloca i64, align 8
  store i64* %0, i64** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
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
  br label %67

25:                                               ; preds = %7
  br label %26

26:                                               ; preds = %66, %50, %25
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = call i64 @recvfrom(i64 %28, i8* %29, i64 %30, i32 0, i32* %31, i32* %32)
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %17, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i64, i64* %17, align 8
  %38 = load i64*, i64** %12, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* @IO_DONE, align 4
  store i32 %39, i32* %8, align 4
  br label %67

40:                                               ; preds = %26
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %16, align 4
  %42 = load i64, i64* %17, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @IO_CLOSED, align 4
  store i32 %45, i32* %8, align 4
  br label %67

46:                                               ; preds = %40
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @EINTR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %26

51:                                               ; preds = %46
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %8, align 4
  br label %67

57:                                               ; preds = %51
  %58 = load i64*, i64** %9, align 8
  %59 = load i32, i32* @WAITFD_R, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @socket_waitfd(i64* %58, i32 %59, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* @IO_DONE, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %8, align 4
  br label %67

66:                                               ; preds = %57
  br label %26

67:                                               ; preds = %64, %55, %44, %36, %23
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i64 @recvfrom(i64, i8*, i64, i32, i32*, i32*) #1

declare dso_local i32 @socket_waitfd(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

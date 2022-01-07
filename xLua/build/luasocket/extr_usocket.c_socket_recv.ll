; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_recv.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_recv.c"
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
define dso_local i32 @socket_recv(i64* %0, i8* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
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
  br label %61

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %60, %44, %21
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @recv(i64 %24, i8* %25, i64 %26, i32 0)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i64, i64* %13, align 8
  %32 = load i64*, i64** %10, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* @IO_DONE, align 4
  store i32 %33, i32* %6, align 4
  br label %61

34:                                               ; preds = %22
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i64, i64* %13, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @IO_CLOSED, align 4
  store i32 %39, i32* %6, align 4
  br label %61

40:                                               ; preds = %34
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @EINTR, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %22

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %61

51:                                               ; preds = %45
  %52 = load i64*, i64** %7, align 8
  %53 = load i32, i32* @WAITFD_R, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @socket_waitfd(i64* %52, i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* @IO_DONE, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %6, align 4
  br label %61

60:                                               ; preds = %51
  br label %22

61:                                               ; preds = %58, %49, %38, %30, %19
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i64 @recv(i64, i8*, i64, i32) #1

declare dso_local i32 @socket_waitfd(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_sendto.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_sendto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCKET_INVALID = common dso_local global i64 0, align 8
@IO_CLOSED = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@WAITFD_W = common dso_local global i32 0, align 4
@IO_UNKNOWN = common dso_local global i32 0, align 4

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
  %17 = alloca i64, align 8
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
  br label %68

25:                                               ; preds = %7
  br label %26

26:                                               ; preds = %67, %51, %25
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i64 @sendto(i64 %28, i8* %29, i64 %30, i32 0, i32* %31, i32 %32)
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %17, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i64, i64* %17, align 8
  %38 = load i64*, i64** %12, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* @IO_DONE, align 4
  store i32 %39, i32* %8, align 4
  br label %68

40:                                               ; preds = %26
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @EPIPE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @IO_CLOSED, align 4
  store i32 %46, i32* %8, align 4
  br label %68

47:                                               ; preds = %40
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @EINTR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %26

52:                                               ; preds = %47
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %8, align 4
  br label %68

58:                                               ; preds = %52
  %59 = load i64*, i64** %9, align 8
  %60 = load i32, i32* @WAITFD_W, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @socket_waitfd(i64* %59, i32 %60, i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* @IO_DONE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %8, align 4
  br label %68

67:                                               ; preds = %58
  br label %26

68:                                               ; preds = %65, %56, %45, %36, %23
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i64 @sendto(i64, i8*, i64, i32, i32*, i32) #1

declare dso_local i32 @socket_waitfd(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

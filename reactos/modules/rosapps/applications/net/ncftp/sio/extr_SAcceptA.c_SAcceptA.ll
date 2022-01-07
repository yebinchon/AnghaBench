; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/sio/extr_SAcceptA.c_SAcceptA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/sio/extr_SAcceptA.c_SAcceptA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@gNetTimeoutJmp = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@kTimeoutErr = common dso_local global i32 0, align 4
@SIOHandler = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SAcceptA(i32 %0, %struct.sockaddr_in* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  store i64 0, i64* @errno, align 8
  br label %15

15:                                               ; preds = %29, %14
  store i64 4, i64* %11, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %18 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  %19 = bitcast i64* %11 to i32*
  %20 = call i32 @accept(i32 %16, %struct.sockaddr* %18, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EINTR, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %15
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %81

29:                                               ; preds = %23
  br label %15

30:                                               ; preds = %3
  %31 = load i32, i32* @gNetTimeoutJmp, align 4
  %32 = call i64 @SSetjmp(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = call i32 @alarm(i32 0)
  %36 = load i32, i32* @SIGALRM, align 4
  %37 = load i64, i64* %9, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @SSignal(i32 %36, i32 %38)
  %40 = load i32, i32* @SIGPIPE, align 4
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i64 @SSignal(i32 %40, i32 %42)
  %44 = load i64, i64* @ETIMEDOUT, align 8
  store i64 %44, i64* @errno, align 8
  %45 = load i32, i32* @kTimeoutErr, align 4
  store i32 %45, i32* %4, align 4
  br label %81

46:                                               ; preds = %30
  %47 = load i32, i32* @SIGALRM, align 4
  %48 = load i32, i32* @SIOHandler, align 4
  %49 = call i64 @SSignal(i32 %47, i32 %48)
  store i64 %49, i64* %9, align 8
  %50 = load i32, i32* @SIGPIPE, align 4
  %51 = load i32, i32* @SIG_IGN, align 4
  %52 = call i64 @SSignal(i32 %50, i32 %51)
  store i64 %52, i64* %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @alarm(i32 %53)
  store i64 0, i64* @errno, align 8
  br label %55

55:                                               ; preds = %68, %46
  store i64 4, i64* %11, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %58 = bitcast %struct.sockaddr_in* %57 to %struct.sockaddr*
  %59 = bitcast i64* %11 to i32*
  %60 = call i32 @accept(i32 %56, %struct.sockaddr* %58, i32* %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @EINTR, align 8
  %67 = icmp eq i64 %65, %66
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi i1 [ false, %61 ], [ %67, %64 ]
  br i1 %69, label %55, label %70

70:                                               ; preds = %68
  %71 = call i32 @alarm(i32 0)
  %72 = load i32, i32* @SIGALRM, align 4
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i64 @SSignal(i32 %72, i32 %74)
  %76 = load i32, i32* @SIGPIPE, align 4
  %77 = load i64, i64* %10, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i64 @SSignal(i32 %76, i32 %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %70, %34, %27
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @SSetjmp(i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i64 @SSignal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

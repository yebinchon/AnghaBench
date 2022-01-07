; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_sock_wait_for_send.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_sock_wait_for_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FD_WRITE = common dso_local global i32 0, align 4
@FD_CLOSE = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"WSAEventSelect() failed with error %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"WaitForMultipleObjects() failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @rpcrt4_sock_wait_for_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrt4_sock_wait_for_send(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FD_WRITE, align 4
  %12 = load i32, i32* @FD_CLOSE, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @WSAEventSelect(i32 %7, i32 %10, i32 %13)
  %15 = load i64, i64* @SOCKET_ERROR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = call i32 (...) @WSAGetLastError()
  %19 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @INFINITE, align 4
  %26 = call i32 @WaitForSingleObject(i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %30 [
    i32 128, label %28
  ]

28:                                               ; preds = %21
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %21
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %28, %17
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @WSAEventSelect(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

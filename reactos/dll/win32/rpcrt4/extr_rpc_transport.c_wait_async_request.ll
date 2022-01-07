; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_wait_async_request.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_wait_async_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@RPC_S_OK = common dso_local global i32 0, align 4
@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Request failed with error %d\0A\00", align 1
@RPC_S_SERVER_UNAVAILABLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DEFAULT_NCACN_HTTP_TIMEOUT = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Cancelled\0A\00", align 1
@RPC_S_CALL_CANCELLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Async request failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i32)* @wait_async_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_async_request(%struct.TYPE_4__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds i32, i32* %10, i64 1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = call i32 @RpcHttpAsyncData_Release(%struct.TYPE_4__* %19)
  %21 = load i32, i32* @RPC_S_OK, align 4
  store i32 %21, i32* %4, align 4
  br label %56

22:                                               ; preds = %3
  %23 = call i64 (...) @GetLastError()
  %24 = load i64, i64* @ERROR_IO_PENDING, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = call i32 @RpcHttpAsyncData_Release(%struct.TYPE_4__* %27)
  %29 = call i64 (...) @GetLastError()
  %30 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @RPC_S_SERVER_UNAVAILABLE, align 4
  store i32 %31, i32* %4, align 4
  br label %56

32:                                               ; preds = %22
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32, i32* @DEFAULT_NCACN_HTTP_TIMEOUT, align 4
  %36 = call i64 @WaitForMultipleObjects(i32 2, i32* %33, i32 %34, i32 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @WAIT_OBJECT_0, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @RPC_S_CALL_CANCELLED, align 4
  store i32 %42, i32* %4, align 4
  br label %56

43:                                               ; preds = %32
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @RPC_S_SERVER_UNAVAILABLE, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @RPC_S_OK, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %48, %40, %26, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @RpcHttpAsyncData_Release(%struct.TYPE_4__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @WaitForMultipleObjects(i32, i32*, i32, i32) #1

declare dso_local i32 @TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

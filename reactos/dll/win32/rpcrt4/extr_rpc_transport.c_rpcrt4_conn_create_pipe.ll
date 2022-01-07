; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_conn_create_pipe.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_conn_create_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"listening on %s\0A\00", align 1
@PIPE_ACCESS_DUPLEX = common dso_local global i32 0, align 4
@FILE_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@PIPE_TYPE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_READMODE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_UNLIMITED_INSTANCES = common dso_local global i32 0, align 4
@RPC_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"CreateNamedPipe failed with error %d\0A\00", align 1
@ERROR_FILE_EXISTS = common dso_local global i64 0, align 8
@RPC_S_DUPLICATE_ENDPOINT = common dso_local global i32 0, align 4
@RPC_S_CANT_CREATE_ENDPOINT = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rpcrt4_conn_create_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrt4_conn_create_pipe(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = bitcast i32* %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PIPE_ACCESS_DUPLEX, align 4
  %15 = load i32, i32* @FILE_FLAG_OVERLAPPED, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PIPE_TYPE_MESSAGE, align 4
  %18 = load i32, i32* @PIPE_READMODE_MESSAGE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PIPE_UNLIMITED_INSTANCES, align 4
  %21 = load i32, i32* @RPC_MAX_PACKET_SIZE, align 4
  %22 = load i32, i32* @RPC_MAX_PACKET_SIZE, align 4
  %23 = call i64 @CreateNamedPipeA(i32 %13, i32 %16, i32 %19, i32 %20, i32 %21, i32 %22, i32 5000, i32* null)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = call i64 (...) @GetLastError()
  %33 = call i32 @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = call i64 (...) @GetLastError()
  %35 = load i64, i64* @ERROR_FILE_EXISTS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @RPC_S_DUPLICATE_ENDPOINT, align 4
  store i32 %38, i32* %2, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @RPC_S_CANT_CREATE_ENDPOINT, align 4
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %1
  %42 = load i32, i32* @RPC_S_OK, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %39, %37
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @CreateNamedPipeA(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

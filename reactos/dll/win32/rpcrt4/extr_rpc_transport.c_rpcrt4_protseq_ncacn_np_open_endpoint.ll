; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_protseq_ncacn_np_open_endpoint.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_protseq_ncacn_np_open_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_8__ = type { i8* }

@rpcrt4_protseq_ncacn_np_open_endpoint.np_nameless_id = internal global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\\\\pipe\\\\%08x.%03x\00", align 1
@TRUE = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*)* @rpcrt4_protseq_ncacn_np_open_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rpcrt4_protseq_ncacn_np_open_endpoint(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca [26 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = call i32 (...) @GetCurrentProcessId()
  store i32 %14, i32* %9, align 4
  %15 = call i32 @InterlockedExchangeAdd(i32* @rpcrt4_protseq_ncacn_np_open_endpoint.np_nameless_id, i32 1)
  store i32 %15, i32* %10, align 4
  %16 = getelementptr inbounds [26 x i8], [26 x i8]* %8, i64 0, i64 0
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @snprintf(i8* %16, i32 26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = getelementptr inbounds [26 x i8], [26 x i8]* %8, i64 0, i64 0
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %13, %2
  %22 = load i32, i32* @TRUE, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @RPCRT4_CreateConnection(%struct.TYPE_9__** %7, i32 %22, i32 %25, i32* null, i8* %26, i32* null, i32* null, i32* null, i32* null)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @RPC_S_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i64, i64* %6, align 8
  store i64 %32, i64* %3, align 8
  br label %58

33:                                               ; preds = %21
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i8* (i32, ...) @ncacn_pipe_name(i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = bitcast %struct.TYPE_9__* %38 to %struct.TYPE_8__*
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = call i64 @rpcrt4_conn_create_pipe(%struct.TYPE_9__* %41)
  store i64 %42, i64* %6, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = call i32 @EnterCriticalSection(i32* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = call i32 @list_add_head(i32* %47, i32* %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i32 @LeaveCriticalSection(i32* %55)
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %33, %31
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local i32 @GetCurrentProcessId(...) #1

declare dso_local i32 @InterlockedExchangeAdd(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @RPCRT4_CreateConnection(%struct.TYPE_9__**, i32, i32, i32*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @ncacn_pipe_name(i32, ...) #1

declare dso_local i64 @rpcrt4_conn_create_pipe(%struct.TYPE_9__*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

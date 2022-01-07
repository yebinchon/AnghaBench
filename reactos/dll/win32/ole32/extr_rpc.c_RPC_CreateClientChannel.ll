; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_rpc.c_RPC_CreateClientChannel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_rpc.c_RPC_CreateClientChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_8__, i32, i32*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__, i8*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"proxy pipe: connecting to endpoint: %s\0A\00", align 1
@wszRpcTransport = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Couldn't get binding for endpoint %s, status = %d\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@ClientRpcChannelBufferVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RPC_CreateClientChannel(i32* %0, i32* %1, %struct.TYPE_9__* %2, i32* %3, i32 %4, i8* %5, %struct.TYPE_10__** %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_10__**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca [200 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store %struct.TYPE_10__** %6, %struct.TYPE_10__*** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = getelementptr inbounds [200 x i32], [200 x i32]* %19, i64 0, i64 0
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @get_rpc_endpoint(i32* %24, i32* %25)
  %27 = getelementptr inbounds [200 x i32], [200 x i32]* %19, i64 0, i64 0
  %28 = call i32 @debugstr_w(i32* %27)
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @wszRpcTransport, align 4
  %31 = getelementptr inbounds [200 x i32], [200 x i32]* %19, i64 0, i64 0
  %32 = call i64 @RpcStringBindingComposeW(i32* null, i32 %30, i32* null, i32* %31, i32* null, i32* %22)
  store i64 %32, i64* %21, align 8
  %33 = load i64, i64* %21, align 8
  %34 = load i64, i64* @RPC_S_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %8
  %37 = load i32, i32* %22, align 4
  %38 = call i64 @RpcBindingFromStringBindingW(i32 %37, i32* %20)
  store i64 %38, i64* %21, align 8
  %39 = load i64, i64* %21, align 8
  %40 = load i64, i64* @RPC_S_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %23, align 4
  %45 = load i32, i32* %20, align 4
  %46 = call i64 @RpcBindingSetObject(i32 %45, i32* %23)
  store i64 %46, i64* %21, align 8
  %47 = load i64, i64* %21, align 8
  %48 = load i64, i64* @RPC_S_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @RpcBindingFree(i32* %20)
  br label %52

52:                                               ; preds = %50, %42
  br label %53

53:                                               ; preds = %52, %36
  %54 = call i32 @RpcStringFreeW(i32* %22)
  br label %55

55:                                               ; preds = %53, %8
  %56 = load i64, i64* %21, align 8
  %57 = load i64, i64* @RPC_S_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = getelementptr inbounds [200 x i32], [200 x i32]* %19, i64 0, i64 0
  %61 = call i32 @debugstr_w(i32* %60)
  %62 = load i64, i64* %21, align 8
  %63 = call i32 @ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 %62)
  %64 = load i64, i64* %21, align 8
  %65 = call i32 @HRESULT_FROM_WIN32(i64 %64)
  store i32 %65, i32* %9, align 4
  br label %113

66:                                               ; preds = %55
  %67 = call i32 (...) @GetProcessHeap()
  %68 = call %struct.TYPE_11__* @HeapAlloc(i32 %67, i32 0, i32 64)
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %18, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %70 = icmp ne %struct.TYPE_11__* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = call i32 @RpcBindingFree(i32* %20)
  %73 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %73, i32* %9, align 4
  br label %113

74:                                               ; preds = %66
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32* @ClientRpcChannelBufferVtbl, i32** %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  %90 = load i32, i32* %20, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 4
  %96 = call i32 @apartment_getoxid(i32* %93, i32* %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  store i32* null, i32** %103, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %111, align 8
  %112 = load i32, i32* @S_OK, align 4
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %74, %71, %59
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i32 @get_rpc_endpoint(i32*, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i64 @RpcStringBindingComposeW(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @RpcBindingFromStringBindingW(i32, i32*) #1

declare dso_local i64 @RpcBindingSetObject(i32, i32*) #1

declare dso_local i32 @RpcBindingFree(i32*) #1

declare dso_local i32 @RpcStringFreeW(i32*) #1

declare dso_local i32 @ERR(i8*, i32, i64) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

declare dso_local %struct.TYPE_11__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @apartment_getoxid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_Send.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_Send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i64 0, align 8
@RPC_S_OUT_OF_RESOURCES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RPCRT4_Send(%struct.TYPE_6__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @packet_does_auth_negotiation(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %62

16:                                               ; preds = %4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = call i32 @rpcrt4_conn_is_authorized(%struct.TYPE_6__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i64 @rpcrt4_conn_authorize(%struct.TYPE_6__* %26, i32 %27, i32* null, i32 0, i8* null, i32* %11)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @RPC_S_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %5, align 8
  br label %70

34:                                               ; preds = %25
  %35 = call i32 (...) @GetProcessHeap()
  %36 = load i32, i32* %11, align 4
  %37 = call i8* @HeapAlloc(i32 %35, i32 0, i32 %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* @RPC_S_OUT_OF_RESOURCES, align 8
  store i64 %41, i64* %5, align 8
  br label %70

42:                                               ; preds = %34
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i8*, i8** %12, align 8
  %46 = call i64 @rpcrt4_conn_authorize(%struct.TYPE_6__* %43, i32 %44, i32* null, i32 0, i8* %45, i32* %11)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @RPC_S_OK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @RPCRT4_SendWithAuth(%struct.TYPE_6__* %51, i32* %52, i8* %53, i32 %54, i8* %55, i32 %56)
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %50, %42
  %59 = call i32 (...) @GetProcessHeap()
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @HeapFree(i32 %59, i32 0, i8* %60)
  br label %68

62:                                               ; preds = %21, %16, %4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @RPCRT4_SendWithAuth(%struct.TYPE_6__* %63, i32* %64, i8* %65, i32 %66, i8* null, i32 0)
  store i64 %67, i64* %10, align 8
  br label %68

68:                                               ; preds = %62, %58
  %69 = load i64, i64* %10, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %68, %40, %32
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local i64 @packet_does_auth_negotiation(i32*) #1

declare dso_local i32 @rpcrt4_conn_is_authorized(%struct.TYPE_6__*) #1

declare dso_local i64 @rpcrt4_conn_authorize(%struct.TYPE_6__*, i32, i32*, i32, i8*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @RPCRT4_SendWithAuth(%struct.TYPE_6__*, i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

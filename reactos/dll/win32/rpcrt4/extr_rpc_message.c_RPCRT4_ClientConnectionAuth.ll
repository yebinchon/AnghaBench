; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_ClientConnectionAuth.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_ClientConnectionAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"challenge %s, %d bytes\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@RPC_S_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@NDR_LOCAL_DATA_REPRESENTATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RPCRT4_ClientConnectionAuth(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %12, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @FALSE, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @rpcrt4_conn_authorize(i32* %15, i32 %16, i32* %17, i32 %18, i8* null, i32* %11)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %4, align 8
  br label %63

24:                                               ; preds = %3
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load i32, i32* %11, align 4
  %27 = call i8* @HeapAlloc(i32 %25, i32 0, i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* @RPC_S_OUT_OF_RESOURCES, align 8
  store i64 %31, i64* %4, align 8
  br label %63

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @rpcrt4_conn_authorize(i32* %33, i32 %34, i32* %35, i32 %36, i8* %37, i32* %11)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %4, align 8
  br label %63

43:                                               ; preds = %32
  %44 = load i32, i32* @NDR_LOCAL_DATA_REPRESENTATION, align 4
  %45 = call i32* @RPCRT4_BuildAuthHeader(i32 %44)
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @RPCRT4_SendWithAuth(i32* %49, i32* %50, i32* null, i32 0, i8* %51, i32 %52)
  store i64 %53, i64* %9, align 8
  br label %56

54:                                               ; preds = %43
  %55 = load i64, i64* @RPC_S_OUT_OF_RESOURCES, align 8
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %54, %48
  %57 = call i32 (...) @GetProcessHeap()
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @HeapFree(i32 %57, i32 0, i8* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @RPCRT4_FreeHeader(i32* %60)
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %56, %41, %30, %22
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i32 @TRACE(i8*, i32*, i32) #1

declare dso_local i64 @rpcrt4_conn_authorize(i32*, i32, i32*, i32, i8*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32* @RPCRT4_BuildAuthHeader(i32) #1

declare dso_local i64 @RPCRT4_SendWithAuth(i32*, i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @RPCRT4_FreeHeader(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

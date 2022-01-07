; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_assoc.c_RpcAssoc_GetClientConnection.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_assoc.c_RpcAssoc_GetClientConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }

@.str = private unnamed_addr constant [46 x i8] c"return idle connection %p for association %p\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"return new connection %p for association %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RpcAssoc_GetClientConnection(%struct.TYPE_15__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, %struct.TYPE_14__** %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.TYPE_14__** %6, %struct.TYPE_14__*** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = call %struct.TYPE_14__* @RpcAssoc_GetIdleConnection(%struct.TYPE_15__* %20, i32* %21, i32* %22, i32* %23, i32* %24)
  %26 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %26, align 8
  %27 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = icmp ne %struct.TYPE_14__* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %8
  %31 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %32, %struct.TYPE_15__* %33)
  %35 = load i32*, i32** %17, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @TRUE, align 4
  %39 = load i32*, i32** %17, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i64, i64* @RPC_S_OK, align 8
  store i64 %41, i64* %9, align 8
  br label %108

42:                                               ; preds = %8
  %43 = load i32, i32* @FALSE, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i64 @RPCRT4_CreateConnection(%struct.TYPE_14__** %18, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32* %56, i32* %57, i32 %58)
  store i64 %59, i64* %19, align 8
  %60 = load i64, i64* %19, align 8
  %61 = load i64, i64* @RPC_S_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %42
  %64 = load i64, i64* %19, align 8
  store i64 %64, i64* %9, align 8
  br label %108

65:                                               ; preds = %42
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %70 = call i64 @RPCRT4_OpenClientConnection(%struct.TYPE_14__* %69)
  store i64 %70, i64* %19, align 8
  %71 = load i64, i64* %19, align 8
  %72 = load i64, i64* @RPC_S_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %76 = call i32 @RPCRT4_ReleaseConnection(%struct.TYPE_14__* %75)
  %77 = load i64, i64* %19, align 8
  store i64 %77, i64* %9, align 8
  br label %108

78:                                               ; preds = %65
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = call i64 @RpcAssoc_BindConnection(%struct.TYPE_15__* %79, %struct.TYPE_14__* %80, i32* %81, i32* %82)
  store i64 %83, i64* %19, align 8
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* @RPC_S_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %89 = call i32 @RPCRT4_ReleaseConnection(%struct.TYPE_14__* %88)
  %90 = load i64, i64* %19, align 8
  store i64 %90, i64* %9, align 8
  br label %108

91:                                               ; preds = %78
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = call i32 @InterlockedIncrement(i32* %93)
  %95 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %98 = call i32 @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__* %96, %struct.TYPE_15__* %97)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %100 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %100, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load i32, i32* @FALSE, align 4
  %105 = load i32*, i32** %17, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %91
  %107 = load i64, i64* @RPC_S_OK, align 8
  store i64 %107, i64* %9, align 8
  br label %108

108:                                              ; preds = %106, %87, %74, %63, %40
  %109 = load i64, i64* %9, align 8
  ret i64 %109
}

declare dso_local %struct.TYPE_14__* @RpcAssoc_GetIdleConnection(%struct.TYPE_15__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i64 @RPCRT4_CreateConnection(%struct.TYPE_14__**, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @RPCRT4_OpenClientConnection(%struct.TYPE_14__*) #1

declare dso_local i32 @RPCRT4_ReleaseConnection(%struct.TYPE_14__*) #1

declare dso_local i64 @RpcAssoc_BindConnection(%struct.TYPE_15__*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @InterlockedIncrement(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

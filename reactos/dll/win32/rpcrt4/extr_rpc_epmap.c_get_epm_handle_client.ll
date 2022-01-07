; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_epmap.c_get_epm_handle_client.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_epmap.c_get_epm_handle_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32*, i32, i64 }

@RPC_S_INVALID_BINDING = common dso_local global i64 0, align 8
@epm_endpoints = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"no endpoint for the endpoint-mapper found for protseq %s\0A\00", align 1
@RPC_S_PROTSEQ_NOT_SUPPORTED = common dso_local global i64 0, align 8
@RPC_S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"RPC_S_OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, %struct.TYPE_10__**)* @get_epm_handle_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_epm_handle_client(%struct.TYPE_10__* %0, %struct.TYPE_10__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %6, align 8
  store i8* null, i8** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @RPC_S_INVALID_BINDING, align 8
  store i64 %17, i64* %3, align 8
  br label %86

18:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @epm_endpoints, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %21)
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @epm_endpoints, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strcmp(i32 %27, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %24
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** @epm_endpoints, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %36, %24
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %10, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %19

47:                                               ; preds = %19
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @debugstr_a(i32 %53)
  %55 = call i32 @FIXME(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i64, i64* @RPC_S_PROTSEQ_NOT_SUPPORTED, align 8
  store i64 %56, i64* %3, align 8
  br label %86

57:                                               ; preds = %47
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %60 = call i64 @RpcBindingCopy(%struct.TYPE_10__* %58, %struct.TYPE_10__** %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @RPC_S_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i64, i64* %8, align 8
  store i64 %65, i64* %3, align 8
  br label %86

66:                                               ; preds = %57
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %9, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @RpcAuthInfo_Release(i32* %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %73, %66
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @RPCRT4_ResolveBinding(%struct.TYPE_10__* %81, i8* %82)
  %84 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i64, i64* @RPC_S_OK, align 8
  store i64 %85, i64* %3, align 8
  br label %86

86:                                               ; preds = %80, %64, %50, %16
  %87 = load i64, i64* %3, align 8
  ret i64 %87
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i64 @RpcBindingCopy(%struct.TYPE_10__*, %struct.TYPE_10__**) #1

declare dso_local i32 @RpcAuthInfo_Release(i32*) #1

declare dso_local i32 @RPCRT4_ResolveBinding(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

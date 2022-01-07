; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_test_endpoint_mapper.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_test_endpoint_mapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_endpoint_mapper.annotation = internal global [24 x i8] c"Test annotation string.\00", align 16
@IFoo_v0_0_s_ifspec = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"%s: RpcServerRegisterIf failed (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: RpcServerInqBindings failed with error %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: RpcEpRegisterA failed with error %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: RpcStringBindingCompose failed (%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"%s: RpcBindingFromStringBinding failed (%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%s: RpcBindingReset failed with error %u\0A\00", align 1
@RPC_S_SERVER_UNAVAILABLE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"%s: RpcEpResolveBinding failed with error %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"%s: RpcBindingFree failed with error %u\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"%s: RpcServerUnregisterIf failed (%u)\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%s: RpcEpUnregisterA failed with error %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"%s: RpcBindingVectorFree failed with error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_endpoint_mapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_endpoint_mapper(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @IFoo_v0_0_s_ifspec, align 4
  %10 = call i64 @RpcServerRegisterIf(i32 %9, i32* null, i32* null)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @RPC_S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %3, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %16)
  %18 = call i64 @RpcServerInqBindings(i32** %6)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @RPC_S_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %3, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %23, i64 %24)
  %26 = load i32, i32* @IFoo_v0_0_s_ifspec, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @RpcEpRegisterA(i32 %26, i32* %27, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_endpoint_mapper.annotation, i64 0, i64 0))
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @RPC_S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %3, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %33, i64 %34)
  %36 = load i32, i32* @IFoo_v0_0_s_ifspec, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @RpcEpRegisterA(i32 %36, i32* %37, i32* null, i8* null)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @RPC_S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %3, align 4
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %43, i64 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @RpcStringBindingComposeA(i32* null, i32 %46, i32 %47, i32* null, i32* null, i8** %8)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @RPC_S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %3, align 4
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %53, i64 %54)
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @RpcBindingFromStringBindingA(i8* %56, i32* %7)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @RPC_S_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %3, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %62, i64 %63)
  %65 = call i32 @RpcStringFreeA(i8** %8)
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @RpcBindingReset(i32 %66)
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @RPC_S_OK, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %3, align 4
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %72, i64 %73)
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @IFoo_v0_0_s_ifspec, align 4
  %77 = call i64 @RpcEpResolveBinding(i32 %75, i32 %76)
  store i64 %77, i64* %5, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @RPC_S_OK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %2
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @RPC_S_SERVER_UNAVAILABLE, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 @broken(i32 %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %81, %2
  %89 = phi i1 [ true, %2 ], [ %87, %81 ]
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %3, align 4
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %91, i64 %92)
  %94 = load i32, i32* %7, align 4
  %95 = call i64 @RpcBindingReset(i32 %94)
  store i64 %95, i64* %5, align 8
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @RPC_S_OK, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %3, align 4
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %100, i64 %101)
  %103 = call i64 @RpcBindingFree(i32* %7)
  store i64 %103, i64* %5, align 8
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* @RPC_S_OK, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %3, align 4
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %108, i64 %109)
  %111 = load i32, i32* @FALSE, align 4
  %112 = call i64 @RpcServerUnregisterIf(i32* null, i32* null, i32 %111)
  store i64 %112, i64* %5, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* @RPC_S_OK, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %3, align 4
  %118 = load i64, i64* %5, align 8
  %119 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %117, i64 %118)
  %120 = load i32, i32* @IFoo_v0_0_s_ifspec, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = call i64 @RpcEpUnregister(i32 %120, i32* %121, i32* null)
  store i64 %122, i64* %5, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @RPC_S_OK, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %3, align 4
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %127, i64 %128)
  %130 = call i64 @RpcBindingVectorFree(i32** %6)
  store i64 %130, i64* %5, align 8
  %131 = load i64, i64* %5, align 8
  %132 = load i64, i64* @RPC_S_OK, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %3, align 4
  %136 = load i64, i64* %5, align 8
  %137 = call i32 @ok(i32 %134, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 %135, i64 %136)
  ret void
}

declare dso_local i64 @RpcServerRegisterIf(i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i64) #1

declare dso_local i64 @RpcServerInqBindings(i32**) #1

declare dso_local i64 @RpcEpRegisterA(i32, i32*, i32*, i8*) #1

declare dso_local i64 @RpcStringBindingComposeA(i32*, i32, i32, i32*, i32*, i8**) #1

declare dso_local i64 @RpcBindingFromStringBindingA(i8*, i32*) #1

declare dso_local i32 @RpcStringFreeA(i8**) #1

declare dso_local i64 @RpcBindingReset(i32) #1

declare dso_local i64 @RpcEpResolveBinding(i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @RpcBindingFree(i32*) #1

declare dso_local i64 @RpcServerUnregisterIf(i32*, i32*, i32) #1

declare dso_local i64 @RpcEpUnregister(i32, i32*, i32*) #1

declare dso_local i64 @RpcBindingVectorFree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

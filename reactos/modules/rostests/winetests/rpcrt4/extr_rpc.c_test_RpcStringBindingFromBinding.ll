; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_test_RpcStringBindingFromBinding.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_test_RpcStringBindingFromBinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_RpcStringBindingFromBinding.ncacn_np = internal global [9 x i8] c"ncacn_np\00", align 1
@test_RpcStringBindingFromBinding.address = internal global [2 x i8] c".\00", align 1
@test_RpcStringBindingFromBinding.endpoint = internal global [20 x i8] c"\\pipe\\wine_rpc_test\00", align 16
@RPC_S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"RpcStringBindingCompose failed (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"RpcBindingFromStringBinding failed (%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"RpcStringBindingFromBinding failed with error %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ncacn_np:.[\\\\pipe\\\\wine_rpc_test]\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"binding string didn't match what was expected: \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"RpcBindingFree failed with error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RpcStringBindingFromBinding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RpcStringBindingFromBinding() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i64 @RpcStringBindingComposeA(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_RpcStringBindingFromBinding.ncacn_np, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_RpcStringBindingFromBinding.address, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @test_RpcStringBindingFromBinding.endpoint, i64 0, i64 0), i32* null, i64* %3)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @RPC_S_OK, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @RpcBindingFromStringBindingA(i64 %11, i32* %2)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @RPC_S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = call i32 @RpcStringFreeA(i64* %3)
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @RpcBindingToStringBindingA(i32 %20, i64* %3)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @RPC_S_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  %28 = load i64, i64* %3, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i64 %34)
  %36 = call i32 @RpcStringFreeA(i64* %3)
  %37 = call i64 @RpcBindingFree(i32* %2)
  store i64 %37, i64* %1, align 8
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* @RPC_S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %1, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %42)
  ret void
}

declare dso_local i64 @RpcStringBindingComposeA(i32*, i8*, i8*, i8*, i32*, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @RpcBindingFromStringBindingA(i64, i32*) #1

declare dso_local i32 @RpcStringFreeA(i64*) #1

declare dso_local i64 @RpcBindingToStringBindingA(i32, i64*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @RpcBindingFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

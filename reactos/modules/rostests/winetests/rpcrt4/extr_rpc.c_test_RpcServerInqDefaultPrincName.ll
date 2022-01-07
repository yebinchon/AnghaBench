; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_test_RpcServerInqDefaultPrincName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_test_RpcServerInqDefaultPrincName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NameSamCompatible = common dso_local global i32 0, align 4
@RPC_S_UNKNOWN_AUTHN_SERVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@RPC_C_AUTHN_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"got unexpected principal\0A\00", align 1
@RPC_C_AUTHN_WINNT = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"expected valid principal\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"got '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"wine\\test\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RpcServerInqDefaultPrincName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RpcServerInqDefaultPrincName() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @NameSamCompatible, align 4
  %7 = call i32 @GetUserNameExA(i32 %6, i8* null, i32* %5)
  %8 = call i32 (...) @GetProcessHeap()
  %9 = load i32, i32* %5, align 4
  %10 = call i8* @HeapAlloc(i32 %8, i32 0, i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i32, i32* @NameSamCompatible, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @GetUserNameExA(i32 %11, i8* %12, i32* %5)
  %14 = call i64 @RpcServerInqDefaultPrincNameA(i32 0, i64* null)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @RPC_S_UNKNOWN_AUTHN_SERVICE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %1, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @RPC_C_AUTHN_DEFAULT, align 4
  %22 = call i64 @RpcServerInqDefaultPrincNameA(i32 %21, i64* null)
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @RPC_S_UNKNOWN_AUTHN_SERVICE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %1, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %27)
  store i64 3735928559, i64* %2, align 8
  %29 = load i32, i32* @RPC_C_AUTHN_DEFAULT, align 4
  %30 = call i64 @RpcServerInqDefaultPrincNameA(i32 %29, i64* %2)
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @RPC_S_UNKNOWN_AUTHN_SERVICE, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %1, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %2, align 8
  %38 = icmp eq i64 %37, 3735928559
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i64 3735928559, i64* %3, align 8
  %41 = load i32, i32* @RPC_C_AUTHN_WINNT, align 4
  %42 = call i64 @RpcServerInqDefaultPrincNameA(i32 %41, i64* %3)
  store i64 %42, i64* %1, align 8
  %43 = load i64, i64* %1, align 8
  %44 = load i64, i64* @RPC_S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %1, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i64, i64* %3, align 8
  %50 = icmp ne i64 %49, 3735928559
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i64, i64* %3, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @strcmp(i8* %54, i8* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %3, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @trace(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %62)
  %64 = load i32, i32* @RPC_C_AUTHN_WINNT, align 4
  %65 = call i64 @RpcServerRegisterAuthInfoA(i64 ptrtoint ([10 x i8]* @.str.5 to i64), i32 %64, i32* null, i32* null)
  store i64 %65, i64* %1, align 8
  %66 = load i64, i64* %1, align 8
  %67 = load i64, i64* @RPC_S_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %1, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %70)
  store i64 3735928559, i64* %2, align 8
  %72 = load i32, i32* @RPC_C_AUTHN_WINNT, align 4
  %73 = call i64 @RpcServerInqDefaultPrincNameA(i32 %72, i64* %2)
  store i64 %73, i64* %1, align 8
  %74 = load i64, i64* %1, align 8
  %75 = load i64, i64* @RPC_S_OK, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %1, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %78)
  %80 = load i64, i64* %2, align 8
  %81 = icmp ne i64 %80, 3735928559
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i64, i64* %2, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @strcmp(i8* %85, i8* %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %2, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %91)
  %93 = call i32 @RpcStringFreeA(i64* %2)
  %94 = load i64, i64* %3, align 8
  %95 = load i32, i32* @RPC_C_AUTHN_WINNT, align 4
  %96 = call i64 @RpcServerRegisterAuthInfoA(i64 %94, i32 %95, i32* null, i32* null)
  store i64 %96, i64* %1, align 8
  %97 = load i64, i64* %1, align 8
  %98 = load i64, i64* @RPC_S_OK, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %1, align 8
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %101)
  %103 = call i32 @RpcStringFreeA(i64* %3)
  %104 = call i32 (...) @GetProcessHeap()
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @HeapFree(i32 %104, i32 0, i8* %105)
  ret void
}

declare dso_local i32 @GetUserNameExA(i32, i8*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @RpcServerInqDefaultPrincNameA(i32, i64*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @trace(i8*, i64) #1

declare dso_local i64 @RpcServerRegisterAuthInfoA(i64, i32, i32*, i32*) #1

declare dso_local i32 @RpcStringFreeA(i64*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

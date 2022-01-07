; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_schannel.c_test_cread_attrs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_schannel.c_test_cread_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@unisp_name_a = common dso_local global i32 0, align 4
@SECPKG_CRED_OUTBOUND = common dso_local global i32 0, align 4
@SEC_E_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"AcquireCredentialsHandleA failed: %x\0A\00", align 1
@SECPKG_ATTR_SUPPORTED_PROTOCOLS = common dso_local global i32 0, align 4
@SEC_E_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"QueryCredentialsAttributes failed: %08x, expected SEC_E_INTERNAL_ERROR\0A\00", align 1
@SECPKG_ATTR_SUPPORTED_ALGS = common dso_local global i32 0, align 4
@SP_PROT_TLS1_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cread_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cread_attrs() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @unisp_name_a, align 4
  %5 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %6 = call i64 @AcquireCredentialsHandleA(i32* null, i32 %4, i32 %5, i32* null, %struct.TYPE_4__* null, i32* null, i32* null, i32* %3, i32* null)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @SEC_E_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = call i32 @test_supported_protocols(i32* %3, i32 0)
  %14 = call i32 @test_supported_algs(i32* %3)
  %15 = load i32, i32* @SECPKG_ATTR_SUPPORTED_PROTOCOLS, align 4
  %16 = call i64 @QueryCredentialsAttributesA(i32* %3, i32 %15, i32* null)
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @SEC_E_INTERNAL_ERROR, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @SECPKG_ATTR_SUPPORTED_ALGS, align 4
  %24 = call i64 @QueryCredentialsAttributesA(i32* %3, i32 %23, i32* null)
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @SEC_E_INTERNAL_ERROR, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = call i32 @FreeCredentialsHandle(i32* %3)
  %32 = call i32 @init_cred(%struct.TYPE_4__* %1)
  %33 = load i32, i32* @SP_PROT_TLS1_CLIENT, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @unisp_name_a, align 4
  %36 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %37 = call i64 @AcquireCredentialsHandleA(i32* null, i32 %35, i32 %36, i32* null, %struct.TYPE_4__* %1, i32* null, i32* null, i32* %3, i32* null)
  store i64 %37, i64* %2, align 8
  %38 = load i64, i64* %2, align 8
  %39 = load i64, i64* @SEC_E_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %2, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @SP_PROT_TLS1_CLIENT, align 4
  %45 = call i32 @test_supported_protocols(i32* %3, i32 %44)
  %46 = call i32 @test_supported_algs(i32* %3)
  %47 = call i32 @FreeCredentialsHandle(i32* %3)
  ret void
}

declare dso_local i64 @AcquireCredentialsHandleA(i32*, i32, i32, i32*, %struct.TYPE_4__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @test_supported_protocols(i32*, i32) #1

declare dso_local i32 @test_supported_algs(i32*) #1

declare dso_local i64 @QueryCredentialsAttributesA(i32*, i32, i32*) #1

declare dso_local i32 @FreeCredentialsHandle(i32*) #1

declare dso_local i32 @init_cred(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

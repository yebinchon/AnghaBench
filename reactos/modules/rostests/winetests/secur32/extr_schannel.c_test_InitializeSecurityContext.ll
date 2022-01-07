; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_schannel.c_test_InitializeSecurityContext.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_schannel.c_test_InitializeSecurityContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32 }

@SECBUFFER_TOKEN = common dso_local global i32 0, align 4
@SECBUFFER_EMPTY = common dso_local global i32 0, align 4
@SECBUFFER_VERSION = common dso_local global i32 0, align 4
@SP_PROT_TLS1_CLIENT = common dso_local global i32 0, align 4
@SCH_CRED_NO_DEFAULT_CREDS = common dso_local global i32 0, align 4
@SCH_CRED_MANUAL_CRED_VALIDATION = common dso_local global i32 0, align 4
@UNISP_NAME_A = common dso_local global i64 0, align 8
@SECPKG_CRED_OUTBOUND = common dso_local global i32 0, align 4
@SEC_E_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"AcquireCredentialsHandleA failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@ISC_REQ_CONFIDENTIALITY = common dso_local global i32 0, align 4
@ISC_REQ_STREAM = common dso_local global i32 0, align 4
@ISC_REQ_ALLOCATE_MEMORY = common dso_local global i32 0, align 4
@SEC_I_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Expected SEC_I_CONTINUE_NEEDED, got %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_InitializeSecurityContext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_InitializeSecurityContext() #0 {
  %1 = alloca %struct.TYPE_10__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 1000, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %12 = load i32, i32* @SECBUFFER_TOKEN, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  store i32 0, i32* %14, align 8
  %15 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %17 = load i32, i32* @SECBUFFER_EMPTY, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %19 = load i32, i32* @SECBUFFER_VERSION, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store %struct.TYPE_9__* inttoptr (i64 1 to %struct.TYPE_9__*), %struct.TYPE_9__** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %22 = ptrtoint %struct.TYPE_9__* %5 to i32
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %24 = load i32, i32* @SECBUFFER_VERSION, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store %struct.TYPE_9__* inttoptr (i64 1 to %struct.TYPE_9__*), %struct.TYPE_9__** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %27 = ptrtoint %struct.TYPE_9__* %6 to i32
  store i32 %27, i32* %26, align 8
  %28 = call i32 @init_cred(%struct.TYPE_10__* %1)
  %29 = load i32, i32* @SP_PROT_TLS1_CLIENT, align 4
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @SCH_CRED_NO_DEFAULT_CREDS, align 4
  %32 = load i32, i32* @SCH_CRED_MANUAL_CRED_VALIDATION, align 4
  %33 = or i32 %31, %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i64, i64* @UNISP_NAME_A, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %38 = call i64 @AcquireCredentialsHandleA(i32* null, i32* %36, i32 %37, i32* null, %struct.TYPE_10__* %1, i32* null, i32* null, i32* %2, i32* null)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @SEC_E_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @SEC_E_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %0
  br label %67

49:                                               ; preds = %0
  %50 = load i32, i32* @ISC_REQ_CONFIDENTIALITY, align 4
  %51 = load i32, i32* @ISC_REQ_STREAM, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @ISC_REQ_ALLOCATE_MEMORY, align 4
  %54 = or i32 %52, %53
  %55 = call i64 @InitializeSecurityContextA(i32* %2, i32* null, i32* bitcast ([10 x i8]* @.str.1 to i32*), i32 %54, i32 0, i32 0, %struct.TYPE_8__* %8, i32 0, i32* %3, %struct.TYPE_8__* %7, i32* %9, i32* null)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @FreeContextBuffer(i32 %63)
  %65 = call i32 @DeleteSecurityContext(i32* %3)
  %66 = call i32 @FreeCredentialsHandle(i32* %2)
  br label %67

67:                                               ; preds = %49, %48
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @init_cred(%struct.TYPE_10__*) #2

declare dso_local i64 @AcquireCredentialsHandleA(i32*, i32*, i32, i32*, %struct.TYPE_10__*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i64 @InitializeSecurityContextA(i32*, i32*, i32*, i32, i32, i32, %struct.TYPE_8__*, i32, i32*, %struct.TYPE_8__*, i32*, i32*) #2

declare dso_local i32 @FreeContextBuffer(i32) #2

declare dso_local i32 @DeleteSecurityContext(i32*) #2

declare dso_local i32 @FreeCredentialsHandle(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

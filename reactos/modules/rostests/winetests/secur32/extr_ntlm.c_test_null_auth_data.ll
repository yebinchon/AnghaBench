; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_test_null_auth_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_test_null_auth_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"NTLM\00", align 1
@SEC_E_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"NTLM package not installed, skipping test\0A\00", align 1
@SECPKG_CRED_OUTBOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"AcquireCredentialsHandle() failed %s\0A\00", align 1
@SECBUFFER_TOKEN = common dso_local global i32 0, align 4
@SECBUFFER_VERSION = common dso_local global i32 0, align 4
@NameSamCompatible = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"GetUserNameExA failed %u\0A\00", align 1
@ISC_REQ_CONNECTION = common dso_local global i32 0, align 4
@SECURITY_NETWORK_DREP = common dso_local global i32 0, align 4
@SEC_I_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"InitializeSecurityContextA failed %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"DeleteSecurityContext failed with error 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"FreeCredentialsHandle failed with error 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_null_auth_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_null_auth_data() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__, align 4
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca [1 x %struct.TYPE_12__], align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = bitcast %struct.TYPE_14__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = call i64 @pQuerySecurityPackageInfoA(i32* bitcast ([5 x i8]* @.str to i32*), %struct.TYPE_13__** %2)
  %14 = load i64, i64* @SEC_E_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %90

18:                                               ; preds = %0
  %19 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %20 = call i64 @pAcquireCredentialsHandleA(i32* null, i32* bitcast ([5 x i8]* @.str to i32*), i32 %19, i32* null, i32* null, i32* null, i32* null, i32* %3, i32* %8)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @SEC_E_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %1, align 8
  %26 = call i64 @getSecError(i64 %25)
  %27 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @SECBUFFER_TOKEN, align 4
  %34 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = call i32 (...) @GetProcessHeap()
  %37 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @HeapAlloc(i32 %36, i32 0, i32 %39)
  %41 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @SECBUFFER_VERSION, align 4
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %46 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %45)
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %49, align 8
  store i32 256, i32* %10, align 4
  %50 = load i32, i32* @NameSamCompatible, align 4
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %52 = call i64 @pGetUserNameExA(i32 %50, i8* %51, i32* %10)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i64 (...) @GetLastError()
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %58 = bitcast i8* %57 to i32*
  %59 = load i32, i32* @ISC_REQ_CONNECTION, align 4
  %60 = load i32, i32* @SECURITY_NETWORK_DREP, align 4
  %61 = call i64 @pInitializeSecurityContextA(i32* %3, i32* null, i32* %58, i32 %59, i32 0, i32 %60, i32* null, i32 0, %struct.TYPE_14__* %4, %struct.TYPE_11__* %5, i32* %9, i32* %8)
  store i64 %61, i64* %1, align 8
  %62 = load i64, i64* %1, align 8
  %63 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %1, align 8
  %67 = call i64 @getSecError(i64 %66)
  %68 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %67)
  %69 = call i64 @pDeleteSecurityContext(%struct.TYPE_14__* %4)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @SEC_E_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %11, align 8
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %74)
  %76 = call i64 @pFreeCredentialsHandle(i32* %3)
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @SEC_E_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %11, align 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %84 = call i32 @pFreeContextBuffer(%struct.TYPE_13__* %83)
  %85 = call i32 (...) @GetProcessHeap()
  %86 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @HeapFree(i32 %85, i32 0, i32 %88)
  br label %90

90:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @pQuerySecurityPackageInfoA(i32*, %struct.TYPE_13__**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @pAcquireCredentialsHandleA(i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @getSecError(i64) #2

declare dso_local i32 @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_12__*) #2

declare dso_local i64 @pGetUserNameExA(i32, i8*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @pInitializeSecurityContextA(i32*, i32*, i32*, i32, i32, i32, i32*, i32, %struct.TYPE_14__*, %struct.TYPE_11__*, i32*, i32*) #2

declare dso_local i64 @pDeleteSecurityContext(%struct.TYPE_14__*) #2

declare dso_local i64 @pFreeCredentialsHandle(i32*) #2

declare dso_local i32 @pFreeContextBuffer(%struct.TYPE_13__*) #2

declare dso_local i32 @HeapFree(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

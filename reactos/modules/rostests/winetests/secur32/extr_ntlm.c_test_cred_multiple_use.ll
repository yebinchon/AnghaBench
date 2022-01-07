; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_test_cred_multiple_use.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_test_cred_multiple_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i8*, i8*, i32, i8*, i8*, i8* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@sec_pkg_name = common dso_local global i32 0, align 4
@SEC_E_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"NTLM package not installed, skipping test\0A\00", align 1
@SECBUFFER_TOKEN = common dso_local global i32 0, align 4
@test_user = common dso_local global i64 0, align 8
@workgroup = common dso_local global i64 0, align 8
@test_pass = common dso_local global i64 0, align 8
@SEC_WINNT_AUTH_IDENTITY_ANSI = common dso_local global i32 0, align 4
@SECPKG_CRED_OUTBOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"AcquireCredentialsHandle() returned %s\0A\00", align 1
@SECBUFFER_VERSION = common dso_local global i32 0, align 4
@ISC_REQ_CONNECTION = common dso_local global i32 0, align 4
@SECURITY_NETWORK_DREP = common dso_local global i32 0, align 4
@SEC_I_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"InitializeSecurityContextA failed with error 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"Second InitializeSecurityContextA on cred handle failed with error 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"DeleteSecurityContext failed with error 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"FreeCredentialsHandle failed with error 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cred_multiple_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cred_multiple_use() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_15__, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__, align 4
  %6 = alloca %struct.TYPE_17__, align 4
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca [1 x %struct.TYPE_14__], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  %11 = bitcast %struct.TYPE_17__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = bitcast %struct.TYPE_17__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load i32, i32* @sec_pkg_name, align 4
  %14 = call i64 @pQuerySecurityPackageInfoA(i32 %13, %struct.TYPE_16__** %3)
  %15 = load i64, i64* @SEC_E_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %121

19:                                               ; preds = %0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [1 x %struct.TYPE_14__], [1 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @SECBUFFER_TOKEN, align 4
  %26 = getelementptr inbounds [1 x %struct.TYPE_14__], [1 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = call i32 (...) @GetProcessHeap()
  %29 = getelementptr inbounds [1 x %struct.TYPE_14__], [1 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @HeapAlloc(i32 %28, i32 0, i32 %31)
  %33 = getelementptr inbounds [1 x %struct.TYPE_14__], [1 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = call i32 @pFreeContextBuffer(%struct.TYPE_16__* %35)
  %37 = load i64, i64* @test_user, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @strlen(i8* %41)
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 6
  store i8* %42, i8** %43, align 8
  %44 = load i64, i64* @workgroup, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @strlen(i8* %48)
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 5
  store i8* %49, i8** %50, align 8
  %51 = load i64, i64* @test_pass, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @strlen(i8* %55)
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 4
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* @SEC_WINNT_AUTH_IDENTITY_ANSI, align 4
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 3
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* @sec_pkg_name, align 4
  %61 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %62 = call i64 @pAcquireCredentialsHandleA(i32* null, i32 %60, i32 %61, i32* null, %struct.TYPE_15__* %2, i32* null, i32* null, i32* %4, i32* %10)
  store i64 %62, i64* %1, align 8
  %63 = load i64, i64* %1, align 8
  %64 = load i64, i64* @SEC_E_OK, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %1, align 8
  %68 = call i64 @getSecError(i64 %67)
  %69 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @SECBUFFER_VERSION, align 4
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds [1 x %struct.TYPE_14__], [1 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %73 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %72)
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i32 %73, i32* %74, align 8
  %75 = getelementptr inbounds [1 x %struct.TYPE_14__], [1 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %76, align 8
  %77 = load i32, i32* @ISC_REQ_CONNECTION, align 4
  %78 = load i32, i32* @SECURITY_NETWORK_DREP, align 4
  %79 = call i64 @pInitializeSecurityContextA(i32* %4, i32* null, i32* null, i32 %77, i32 0, i32 %78, i32* null, i32 0, %struct.TYPE_17__* %5, %struct.TYPE_13__* %7, i32* %9, i32* %10)
  store i64 %79, i64* %1, align 8
  %80 = load i64, i64* %1, align 8
  %81 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %1, align 8
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* @ISC_REQ_CONNECTION, align 4
  %87 = load i32, i32* @SECURITY_NETWORK_DREP, align 4
  %88 = call i64 @pInitializeSecurityContextA(i32* %4, i32* null, i32* null, i32 %86, i32 0, i32 %87, i32* null, i32 0, %struct.TYPE_17__* %6, %struct.TYPE_13__* %7, i32* %9, i32* %10)
  store i64 %88, i64* %1, align 8
  %89 = load i64, i64* %1, align 8
  %90 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %1, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i64 %93)
  %95 = call i64 @pDeleteSecurityContext(%struct.TYPE_17__* %5)
  store i64 %95, i64* %1, align 8
  %96 = load i64, i64* %1, align 8
  %97 = load i64, i64* @SEC_E_OK, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i64, i64* %1, align 8
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %100)
  %102 = call i64 @pDeleteSecurityContext(%struct.TYPE_17__* %6)
  store i64 %102, i64* %1, align 8
  %103 = load i64, i64* %1, align 8
  %104 = load i64, i64* @SEC_E_OK, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i64, i64* %1, align 8
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %107)
  %109 = call i64 @pFreeCredentialsHandle(i32* %4)
  store i64 %109, i64* %1, align 8
  %110 = load i64, i64* %1, align 8
  %111 = load i64, i64* @SEC_E_OK, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i64, i64* %1, align 8
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %114)
  %116 = call i32 (...) @GetProcessHeap()
  %117 = getelementptr inbounds [1 x %struct.TYPE_14__], [1 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @HeapFree(i32 %116, i32 0, i32 %119)
  br label %121

121:                                              ; preds = %19, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @pQuerySecurityPackageInfoA(i32, %struct.TYPE_16__**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @pFreeContextBuffer(%struct.TYPE_16__*) #2

declare dso_local i8* @strlen(i8*) #2

declare dso_local i64 @pAcquireCredentialsHandleA(i32*, i32, i32, i32*, %struct.TYPE_15__*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @getSecError(i64) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #2

declare dso_local i64 @pInitializeSecurityContextA(i32*, i32*, i32*, i32, i32, i32, i32*, i32, %struct.TYPE_17__*, %struct.TYPE_13__*, i32*, i32*) #2

declare dso_local i64 @pDeleteSecurityContext(%struct.TYPE_17__*) #2

declare dso_local i64 @pFreeCredentialsHandle(i32*) #2

declare dso_local i32 @HeapFree(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

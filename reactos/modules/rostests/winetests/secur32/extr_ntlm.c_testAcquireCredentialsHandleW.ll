; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_testAcquireCredentialsHandleW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_testAcquireCredentialsHandleW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i32, i8*, i8*, i8* }

@testAcquireCredentialsHandleW.sec_pkg_nameW = internal global [5 x i8] c"NTLM\00", align 1
@testAcquireCredentialsHandleW.test_userW = internal global [9 x i8] c"testuser\00", align 1
@testAcquireCredentialsHandleW.workgroupW = internal global [10 x i8] c"WORKGROUP\00", align 1
@testAcquireCredentialsHandleW.test_passW = internal global [9 x i8] c"testpass\00", align 1
@sec_pkg_name = common dso_local global i32 0, align 4
@SEC_E_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"NTLM package not installed, skipping test\0A\00", align 1
@SEC_WINNT_AUTH_IDENTITY_UNICODE = common dso_local global i32 0, align 4
@SECPKG_CRED_OUTBOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"AcquireCredentialsHandeW() returned %s\0A\00", align 1
@test_user = common dso_local global i64 0, align 8
@workgroup = common dso_local global i64 0, align 8
@test_pass = common dso_local global i64 0, align 8
@SEC_WINNT_AUTH_IDENTITY_ANSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testAcquireCredentialsHandleW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testAcquireCredentialsHandleW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32*, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* @sec_pkg_name, align 4
  %8 = call i64 @pQuerySecurityPackageInfoA(i32 %7, i32** %6)
  %9 = load i64, i64* @SEC_E_OK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %119

13:                                               ; preds = %0
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @pFreeContextBuffer(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @testAcquireCredentialsHandleW.test_userW, i64 0, i64 0), i8** %16, align 8
  %17 = call i8* @lstrlenW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @testAcquireCredentialsHandleW.test_userW, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 6
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @testAcquireCredentialsHandleW.workgroupW, i64 0, i64 0), i8** %19, align 8
  %20 = call i8* @lstrlenW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @testAcquireCredentialsHandleW.workgroupW, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @testAcquireCredentialsHandleW.test_passW, i64 0, i64 0), i8** %22, align 8
  %23 = call i8* @lstrlenW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @testAcquireCredentialsHandleW.test_passW, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* @SEC_WINNT_AUTH_IDENTITY_UNICODE, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %28 = call i64 @pAcquireCredentialsHandleW(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @testAcquireCredentialsHandleW.sec_pkg_nameW, i64 0, i64 0), i32 %27, i32* null, %struct.TYPE_4__* %5, i32* null, i32* null, i32* %1, i32* %2)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @SEC_E_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @getSecError(i64 %33)
  %35 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = call i32 @pFreeCredentialsHandle(i32* %1)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  store i8* null, i8** %37, align 8
  %38 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %39 = call i64 @pAcquireCredentialsHandleW(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @testAcquireCredentialsHandleW.sec_pkg_nameW, i64 0, i64 0), i32 %38, i32* null, %struct.TYPE_4__* %5, i32* null, i32* null, i32* %1, i32* %2)
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @SEC_E_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @getSecError(i64 %44)
  %46 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = call i32 @pFreeCredentialsHandle(i32* %1)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i8* null, i8** %48, align 8
  %49 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %50 = call i64 @pAcquireCredentialsHandleW(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @testAcquireCredentialsHandleW.sec_pkg_nameW, i64 0, i64 0), i32 %49, i32* null, %struct.TYPE_4__* %5, i32* null, i32* null, i32* %1, i32* %2)
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @SEC_E_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @getSecError(i64 %55)
  %57 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = call i32 @pFreeCredentialsHandle(i32* %1)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @testAcquireCredentialsHandleW.workgroupW, i64 0, i64 0), i8** %59, align 8
  %60 = call i8* @lstrlenW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @testAcquireCredentialsHandleW.workgroupW, i64 0, i64 0))
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 6
  store i8* null, i8** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i8* null, i8** %63, align 8
  %64 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %65 = call i64 @pAcquireCredentialsHandleW(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @testAcquireCredentialsHandleW.sec_pkg_nameW, i64 0, i64 0), i32 %64, i32* null, %struct.TYPE_4__* %5, i32* null, i32* null, i32* %1, i32* %2)
  store i64 %65, i64* %3, align 8
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* @SEC_E_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @getSecError(i64 %70)
  %72 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = call i32 @pFreeCredentialsHandle(i32* %1)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @testAcquireCredentialsHandleW.test_userW, i64 0, i64 0), i8** %74, align 8
  %75 = call i8* @lstrlenW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @testAcquireCredentialsHandleW.test_userW, i64 0, i64 0))
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 6
  store i8* %75, i8** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @testAcquireCredentialsHandleW.test_passW, i64 0, i64 0), i8** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  store i8* null, i8** %78, align 8
  %79 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %80 = call i64 @pAcquireCredentialsHandleW(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @testAcquireCredentialsHandleW.sec_pkg_nameW, i64 0, i64 0), i32 %79, i32* null, %struct.TYPE_4__* %5, i32* null, i32* null, i32* %1, i32* %2)
  store i64 %80, i64* %3, align 8
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @SEC_E_OK, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %3, align 8
  %86 = call i32 @getSecError(i64 %85)
  %87 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = call i32 @pFreeCredentialsHandle(i32* %1)
  %89 = load i64, i64* @test_user, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i8* %90, i8** %91, align 8
  %92 = load i64, i64* @test_user, align 8
  %93 = call i8* @strlen(i64 %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  store i8* %93, i8** %94, align 8
  %95 = load i64, i64* @workgroup, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* %96, i8** %97, align 8
  %98 = load i64, i64* @workgroup, align 8
  %99 = call i8* @strlen(i64 %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  store i8* %99, i8** %100, align 8
  %101 = load i64, i64* @test_pass, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i8* %102, i8** %103, align 8
  %104 = load i64, i64* @test_pass, align 8
  %105 = call i8* @strlen(i64 %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  store i8* %105, i8** %106, align 8
  %107 = load i32, i32* @SEC_WINNT_AUTH_IDENTITY_ANSI, align 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i32 %107, i32* %108, align 8
  %109 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %110 = call i64 @pAcquireCredentialsHandleW(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @testAcquireCredentialsHandleW.sec_pkg_nameW, i64 0, i64 0), i32 %109, i32* null, %struct.TYPE_4__* %4, i32* null, i32* null, i32* %1, i32* %2)
  store i64 %110, i64* %3, align 8
  %111 = load i64, i64* %3, align 8
  %112 = load i64, i64* @SEC_E_OK, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i64, i64* %3, align 8
  %116 = call i32 @getSecError(i64 %115)
  %117 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = call i32 @pFreeCredentialsHandle(i32* %1)
  br label %119

119:                                              ; preds = %13, %11
  ret void
}

declare dso_local i64 @pQuerySecurityPackageInfoA(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pFreeContextBuffer(i32*) #1

declare dso_local i8* @lstrlenW(i8*) #1

declare dso_local i64 @pAcquireCredentialsHandleW(i32*, i8*, i32, i32*, %struct.TYPE_4__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @getSecError(i64) #1

declare dso_local i32 @pFreeCredentialsHandle(i32*) #1

declare dso_local i8* @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

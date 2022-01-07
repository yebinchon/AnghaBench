; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_testAcquireCredentialsHandle.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_testAcquireCredentialsHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@sec_pkg_name = common dso_local global i32 0, align 4
@SEC_E_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"NTLM package not installed, skipping test\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@test_user = common dso_local global i64 0, align 8
@workgroup = common dso_local global i64 0, align 8
@test_pass = common dso_local global i64 0, align 8
@SEC_WINNT_AUTH_IDENTITY_ANSI = common dso_local global i32 0, align 4
@SECPKG_CRED_OUTBOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"AcquireCredentialsHandle() returned %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @testAcquireCredentialsHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testAcquireCredentialsHandle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32*, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* @sec_pkg_name, align 4
  %8 = call i64 @pQuerySecurityPackageInfoA(i32 %7, i32** %6)
  %9 = load i64, i64* @SEC_E_OK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %1, align 4
  br label %116

14:                                               ; preds = %0
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @pFreeContextBuffer(i32* %15)
  %17 = load i64, i64* @test_user, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @strlen(i8* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  store i8* %22, i8** %23, align 8
  %24 = load i64, i64* @workgroup, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strlen(i8* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  store i8* %29, i8** %30, align 8
  %31 = load i64, i64* @test_pass, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @strlen(i8* %35)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* @SEC_WINNT_AUTH_IDENTITY_ANSI, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 6
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* @sec_pkg_name, align 4
  %41 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %42 = call i64 @pAcquireCredentialsHandleA(i32* null, i32 %40, i32 %41, i32* null, %struct.TYPE_3__* %5, i32* null, i32* null, i32* %2, i32* %3)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @SEC_E_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @getSecError(i64 %47)
  %49 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = call i32 @pFreeCredentialsHandle(i32* %2)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  store i8* null, i8** %51, align 8
  %52 = load i32, i32* @sec_pkg_name, align 4
  %53 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %54 = call i64 @pAcquireCredentialsHandleA(i32* null, i32 %52, i32 %53, i32* null, %struct.TYPE_3__* %5, i32* null, i32* null, i32* %2, i32* %3)
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @SEC_E_OK, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @getSecError(i64 %59)
  %61 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = call i32 @pFreeCredentialsHandle(i32* %2)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i8* null, i8** %63, align 8
  %64 = load i32, i32* @sec_pkg_name, align 4
  %65 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %66 = call i64 @pAcquireCredentialsHandleA(i32* null, i32 %64, i32 %65, i32* null, %struct.TYPE_3__* %5, i32* null, i32* null, i32* %2, i32* %3)
  store i64 %66, i64* %4, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @SEC_E_OK, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @getSecError(i64 %71)
  %73 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = call i32 @pFreeCredentialsHandle(i32* %2)
  %75 = load i64, i64* @workgroup, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @strlen(i8* %79)
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  store i8* %80, i8** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  store i8* null, i8** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* null, i8** %83, align 8
  %84 = load i32, i32* @sec_pkg_name, align 4
  %85 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %86 = call i64 @pAcquireCredentialsHandleA(i32* null, i32 %84, i32 %85, i32* null, %struct.TYPE_3__* %5, i32* null, i32* null, i32* %2, i32* %3)
  store i64 %86, i64* %4, align 8
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* @SEC_E_OK, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @getSecError(i64 %91)
  %93 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = call i32 @pFreeCredentialsHandle(i32* %2)
  %95 = load i64, i64* @test_user, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i8* @strlen(i8* %99)
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i8* null, i8** %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i8* null, i8** %103, align 8
  %104 = load i32, i32* @sec_pkg_name, align 4
  %105 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %106 = call i64 @pAcquireCredentialsHandleA(i32* null, i32 %104, i32 %105, i32* null, %struct.TYPE_3__* %5, i32* null, i32* null, i32* %2, i32* %3)
  store i64 %106, i64* %4, align 8
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* @SEC_E_OK, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %4, align 8
  %112 = call i32 @getSecError(i64 %111)
  %113 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = call i32 @pFreeCredentialsHandle(i32* %2)
  %115 = load i32, i32* @TRUE, align 4
  store i32 %115, i32* %1, align 4
  br label %116

116:                                              ; preds = %14, %11
  %117 = load i32, i32* %1, align 4
  ret i32 %117
}

declare dso_local i64 @pQuerySecurityPackageInfoA(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pFreeContextBuffer(i32*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i64 @pAcquireCredentialsHandleA(i32*, i32, i32, i32*, %struct.TYPE_3__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @getSecError(i64) #1

declare dso_local i32 @pFreeCredentialsHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

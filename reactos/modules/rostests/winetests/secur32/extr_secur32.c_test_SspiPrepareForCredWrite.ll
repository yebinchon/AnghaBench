; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_secur32.c_test_SspiPrepareForCredWrite.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_secur32.c_test_SspiPrepareForCredWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SspiPrepareForCredWrite.usernameW = internal constant [9 x i8] c"username\00", align 1
@test_SspiPrepareForCredWrite.domainnameW = internal constant [11 x i8] c"domainname\00", align 1
@test_SspiPrepareForCredWrite.passwordW = internal constant [9 x i8] c"password\00", align 1
@test_SspiPrepareForCredWrite.targetW = internal constant [20 x i8] c"domainname\\username\00", align 16
@test_SspiPrepareForCredWrite.target2W = internal constant [22 x i8] c"domainname2\\username2\00", align 16
@SEC_E_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@CRED_TYPE_DOMAIN_PASSWORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"wrong data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SspiPrepareForCredWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SspiPrepareForCredWrite() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = call i32 @pSspiEncodeStringsAsAuthIdentity(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiPrepareForCredWrite.usernameW, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_SspiPrepareForCredWrite.domainnameW, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiPrepareForCredWrite.passwordW, i64 0, i64 0), i32* %3)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SEC_E_OK, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pSspiPrepareForCredWrite(i32 %15, i8* null, i32* %5, i8** %1, i8** %2, i8** %7, i32* %6)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SEC_E_OK, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @CRED_TYPE_DOMAIN_PASSWORD, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 @lstrcmpW(i8* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @test_SspiPrepareForCredWrite.targetW, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i8*, i8** %1, align 8
  %35 = call i32 @wine_dbgstr_w(i8* %34)
  %36 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @lstrcmpW(i8* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @test_SspiPrepareForCredWrite.targetW, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @wine_dbgstr_w(i8* %42)
  %44 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @memcmp(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiPrepareForCredWrite.passwordW, i64 0, i64 0), i32 8)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %52, 8
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i8*, i8** %1, align 8
  %58 = call i32 @pSspiLocalFree(i8* %57)
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @pSspiLocalFree(i8* %59)
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @pSspiLocalFree(i8* %61)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @pSspiPrepareForCredWrite(i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_SspiPrepareForCredWrite.target2W, i64 0, i64 0), i32* %5, i8** %1, i8** %2, i8** %7, i32* %6)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @SEC_E_OK, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %4, align 4
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @CRED_TYPE_DOMAIN_PASSWORD, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %5, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i8*, i8** %1, align 8
  %78 = call i32 @lstrcmpW(i8* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_SspiPrepareForCredWrite.target2W, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load i8*, i8** %1, align 8
  %83 = call i32 @wine_dbgstr_w(i8* %82)
  %84 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i8*, i8** %2, align 8
  %86 = call i32 @lstrcmpW(i8* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @test_SspiPrepareForCredWrite.targetW, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load i8*, i8** %2, align 8
  %91 = call i32 @wine_dbgstr_w(i8* %90)
  %92 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @memcmp(i8* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiPrepareForCredWrite.passwordW, i64 0, i64 0), i32 8)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp eq i64 %100, 8
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %6, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i8*, i8** %1, align 8
  %106 = call i32 @pSspiLocalFree(i8* %105)
  %107 = load i8*, i8** %2, align 8
  %108 = call i32 @pSspiLocalFree(i8* %107)
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @pSspiLocalFree(i8* %109)
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @pSspiFreeAuthIdentity(i32 %111)
  ret void
}

declare dso_local i32 @pSspiEncodeStringsAsAuthIdentity(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pSspiPrepareForCredWrite(i32, i8*, i32*, i8**, i8**, i8**, i32*) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @pSspiLocalFree(i8*) #1

declare dso_local i32 @pSspiFreeAuthIdentity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

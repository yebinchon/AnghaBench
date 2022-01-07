; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_secur32.c_test_SspiEncodeStringsAsAuthIdentity.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_secur32.c_test_SspiEncodeStringsAsAuthIdentity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SspiEncodeStringsAsAuthIdentity.username = internal constant [9 x i8] c"username\00", align 1
@test_SspiEncodeStringsAsAuthIdentity.domainname = internal constant [11 x i8] c"domainname\00", align 1
@test_SspiEncodeStringsAsAuthIdentity.password = internal constant [9 x i8] c"password\00", align 1
@SEC_E_INVALID_TOKEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"id set\0A\00", align 1
@SEC_E_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"id not set\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"wrong username\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"wrong domainname\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"wrong password\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"domainname_ptr not cleared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SspiEncodeStringsAsAuthIdentity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SspiEncodeStringsAsAuthIdentity() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = call i64 @pSspiEncodeStringsAsAuthIdentity(i8* null, i8* null, i8* null, i32** null)
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @SEC_E_INVALID_TOKEN, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %5, align 8
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %11)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %4, align 8
  %13 = call i64 @pSspiEncodeStringsAsAuthIdentity(i8* null, i8* null, i8* null, i32** %4)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @SEC_E_INVALID_TOKEN, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %5, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, inttoptr (i64 3735928559 to i32*)
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  %24 = call i64 @pSspiEncodeStringsAsAuthIdentity(i8* null, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiEncodeStringsAsAuthIdentity.password, i64 0, i64 0), i32** %4)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @SEC_E_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %5, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @pSspiFreeAuthIdentity(i32* %35)
  store i32* null, i32** %4, align 8
  %37 = call i64 @pSspiEncodeStringsAsAuthIdentity(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_SspiEncodeStringsAsAuthIdentity.domainname, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiEncodeStringsAsAuthIdentity.password, i64 0, i64 0), i32** %4)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @SEC_E_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %5, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @pSspiFreeAuthIdentity(i32* %48)
  store i32* null, i32** %4, align 8
  %50 = call i64 @pSspiEncodeStringsAsAuthIdentity(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiEncodeStringsAsAuthIdentity.username, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiEncodeStringsAsAuthIdentity.password, i64 0, i64 0), i32** %4)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @SEC_E_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %5, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = icmp ne i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @pSspiFreeAuthIdentity(i32* %61)
  store i32* null, i32** %4, align 8
  %63 = call i64 @pSspiEncodeStringsAsAuthIdentity(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiEncodeStringsAsAuthIdentity.username, i64 0, i64 0), i8* null, i8* null, i32** %4)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @SEC_E_OK, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %5, align 8
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = icmp ne i32* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @pSspiFreeAuthIdentity(i32* %74)
  store i32* null, i32** %4, align 8
  %76 = call i64 @pSspiEncodeStringsAsAuthIdentity(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiEncodeStringsAsAuthIdentity.username, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_SspiEncodeStringsAsAuthIdentity.domainname, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiEncodeStringsAsAuthIdentity.password, i64 0, i64 0), i32** %4)
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @SEC_E_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %5, align 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = icmp ne i32* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  store i8* null, i8** %2, align 8
  store i8* null, i8** %1, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = call i64 @pSspiEncodeAuthIdentityAsStrings(i32* %87, i8** %1, i8** %2, i8** %3)
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @SEC_E_OK, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %5, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %93)
  %95 = load i8*, i8** %1, align 8
  %96 = call i32 @lstrcmpW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiEncodeStringsAsAuthIdentity.username, i64 0, i64 0), i8* %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i8*, i8** %2, align 8
  %102 = call i32 @lstrcmpW(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_SspiEncodeStringsAsAuthIdentity.domainname, i64 0, i64 0), i8* %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i8*, i8** %3, align 8
  %108 = call i32 @lstrcmpW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiEncodeStringsAsAuthIdentity.password, i64 0, i64 0), i8* %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @pSspiZeroAuthIdentity(i32* %113)
  %115 = load i8*, i8** %1, align 8
  %116 = call i32 @pSspiLocalFree(i8* %115)
  %117 = load i8*, i8** %2, align 8
  %118 = call i32 @pSspiLocalFree(i8* %117)
  %119 = load i8*, i8** %3, align 8
  %120 = call i32 @pSspiLocalFree(i8* %119)
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @pSspiFreeAuthIdentity(i32* %121)
  store i32* null, i32** %4, align 8
  %123 = call i64 @pSspiEncodeStringsAsAuthIdentity(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiEncodeStringsAsAuthIdentity.username, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiEncodeStringsAsAuthIdentity.password, i64 0, i64 0), i32** %4)
  store i64 %123, i64* %5, align 8
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* @SEC_E_OK, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %5, align 8
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %128)
  %130 = load i32*, i32** %4, align 8
  %131 = icmp ne i32* %130, null
  %132 = zext i1 %131 to i32
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  store i8* null, i8** %1, align 8
  store i8* inttoptr (i64 3735928559 to i8*), i8** %2, align 8
  %134 = load i32*, i32** %4, align 8
  %135 = call i64 @pSspiEncodeAuthIdentityAsStrings(i32* %134, i8** %1, i8** %2, i8** %3)
  store i64 %135, i64* %5, align 8
  %136 = load i64, i64* %5, align 8
  %137 = load i64, i64* @SEC_E_OK, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i64, i64* %5, align 8
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %140)
  %142 = load i8*, i8** %1, align 8
  %143 = call i32 @lstrcmpW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiEncodeStringsAsAuthIdentity.username, i64 0, i64 0), i8* %142)
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %148 = load i8*, i8** %2, align 8
  %149 = icmp eq i8* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %152 = load i8*, i8** %3, align 8
  %153 = call i32 @lstrcmpW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiEncodeStringsAsAuthIdentity.password, i64 0, i64 0), i8* %152)
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %158 = load i8*, i8** %1, align 8
  %159 = call i32 @pSspiLocalFree(i8* %158)
  %160 = load i8*, i8** %3, align 8
  %161 = call i32 @pSspiLocalFree(i8* %160)
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @pSspiFreeAuthIdentity(i32* %162)
  ret void
}

declare dso_local i64 @pSspiEncodeStringsAsAuthIdentity(i8*, i8*, i8*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pSspiFreeAuthIdentity(i32*) #1

declare dso_local i64 @pSspiEncodeAuthIdentityAsStrings(i32*, i8**, i8**, i8**) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @pSspiZeroAuthIdentity(i32*) #1

declare dso_local i32 @pSspiLocalFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

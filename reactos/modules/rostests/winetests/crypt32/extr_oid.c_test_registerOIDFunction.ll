; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_oid.c_test_registerOIDFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_oid.c_test_registerOIDFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@bogusDll = common dso_local global i32* null, align 8
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Expected E_INVALIDARG: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"1.2.3.4.5.6.7.8.9.10\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Expected pseudo-success, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CryptDllEncodeObject\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"Need admin rights\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"CryptRegisterOIDFunction failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"CryptUnregisterOIDFunction failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"bogus\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [57 x i8] c"SOFTWARE\\Microsoft\\Cryptography\\OID\\EncodingType 1\\bogus\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Could not delete bogus key\0A\00", align 1
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [72 x i8] c"SOFTWARE\\Microsoft\\Cryptography\\OID\\EncodingType 0\\CryptDllEncodeObject\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Could not delete CryptDllEncodeObject key\0A\00", align 1
@.str.13 = private unnamed_addr constant [72 x i8] c"SOFTWARE\\Microsoft\\Cryptography\\OID\\EncodingType 3\\CryptDllEncodeObject\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"SOFTWARE\\Microsoft\\Cryptography\\OID\\EncodingType 3\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Could not delete 'EncodingType 3' key\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_registerOIDFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_registerOIDFunction() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @X509_ASN_ENCODING, align 4
  %3 = load i32*, i32** @bogusDll, align 8
  %4 = call i32 @CryptRegisterOIDFunction(i32 %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* null, i32* %3, i32* null)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = call i64 (...) @GetLastError()
  %9 = load i64, i64* @E_INVALIDARG, align 8
  %10 = icmp eq i64 %8, %9
  br label %11

11:                                               ; preds = %7, %0
  %12 = phi i1 [ false, %0 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 (...) @GetLastError()
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %14)
  %16 = load i32, i32* @X509_ASN_ENCODING, align 4
  %17 = call i32 @CryptRegisterOIDFunction(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i64 (...) @GetLastError()
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %19)
  %21 = call i32 @SetLastError(i32 -559038737)
  %22 = load i32, i32* @X509_ASN_ENCODING, align 4
  %23 = load i32*, i32** @bogusDll, align 8
  %24 = call i32 @CryptRegisterOIDFunction(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %23, i32* null)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %11
  %28 = call i64 (...) @GetLastError()
  %29 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @skip(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %106

33:                                               ; preds = %27, %11
  %34 = load i32, i32* %1, align 4
  %35 = call i64 (...) @GetLastError()
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @X509_ASN_ENCODING, align 4
  %38 = call i32 @CryptUnregisterOIDFunction(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i64 (...) @GetLastError()
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @X509_ASN_ENCODING, align 4
  %43 = load i32*, i32** @bogusDll, align 8
  %44 = call i32 @CryptRegisterOIDFunction(i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %43, i32* null)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i64 (...) @GetLastError()
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @X509_ASN_ENCODING, align 4
  %49 = call i32 @CryptUnregisterOIDFunction(i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  %51 = call i64 (...) @GetLastError()
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %54 = call i32 @RegDeleteKeyA(i32 %53, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %59 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %60 = load i32*, i32** @bogusDll, align 8
  %61 = call i32 @CryptRegisterOIDFunction(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %60, i32* null)
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* %1, align 4
  %63 = call i64 (...) @GetLastError()
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %66 = call i32 @CryptUnregisterOIDFunction(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = call i64 (...) @GetLastError()
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %68)
  %70 = load i32*, i32** @bogusDll, align 8
  %71 = call i32 @CryptRegisterOIDFunction(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %70, i32* null)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* %1, align 4
  %73 = call i64 (...) @GetLastError()
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %73)
  %75 = call i32 @CryptUnregisterOIDFunction(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %75, i32* %1, align 4
  %76 = load i32, i32* %1, align 4
  %77 = call i64 (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %80 = call i32 @RegDeleteKeyA(i32 %79, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.11, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %85 = load i32*, i32** @bogusDll, align 8
  %86 = call i32 @CryptRegisterOIDFunction(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %85, i32* null)
  store i32 %86, i32* %1, align 4
  %87 = load i32, i32* %1, align 4
  %88 = call i64 (...) @GetLastError()
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %88)
  %90 = call i32 @CryptUnregisterOIDFunction(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* %1, align 4
  %92 = call i64 (...) @GetLastError()
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %92)
  %94 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %95 = call i32 @RegDeleteKeyA(i32 %94, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.13, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %100 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %101 = call i32 @RegDeleteKeyA(i32 %100, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  br label %106

106:                                              ; preds = %33, %31
  ret void
}

declare dso_local i32 @CryptRegisterOIDFunction(i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @CryptUnregisterOIDFunction(i32, i8*, i8*) #1

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

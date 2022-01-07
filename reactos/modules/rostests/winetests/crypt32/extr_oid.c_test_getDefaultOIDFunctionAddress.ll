; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_oid.c_test_getDefaultOIDFunctionAddress.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_oid.c_test_getDefaultOIDFunctionAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"CertDllOpenStoreProv\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"CryptInitOIDFunctionSet failed: %d\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Expected ERROR_FILE_NOT_FOUND, got %d\0A\00", align 1
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@bogusDll = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"Need admin rights\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"CryptRegisterDefaultOIDFunction failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getDefaultOIDFunctionAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getDefaultOIDFunctionAddress() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = call i64 @CryptInitOIDFunctionSet(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 0)
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i64 (...) @GetLastError()
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %9)
  store i64 0, i64* %4, align 8
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @CryptGetDefaultOIDFunctionAddress(i64 %11, i32 0, i32* null, i32 0, i8** %3, i64* %4)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %0
  %16 = call i64 (...) @GetLastError()
  %17 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %15, %0
  %20 = phi i1 [ false, %0 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 (...) @GetLastError()
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %2, align 8
  %25 = load i32, i32* @X509_ASN_ENCODING, align 4
  %26 = call i32 @CryptGetDefaultOIDFunctionAddress(i64 %24, i32 %25, i32* null, i32 0, i8** %3, i64* %4)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %19
  %30 = call i64 (...) @GetLastError()
  %31 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %29, %19
  %34 = phi i1 [ false, %19 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 (...) @GetLastError()
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = call i32 @SetLastError(i32 -559038737)
  %39 = load i32, i32* @bogusDll, align 4
  %40 = call i32 @CryptRegisterDefaultOIDFunction(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 0, i32 %39)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %33
  %44 = call i64 (...) @GetLastError()
  %45 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 @skip(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %53

49:                                               ; preds = %43, %33
  %50 = load i32, i32* %1, align 4
  %51 = call i64 (...) @GetLastError()
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %51)
  br label %53

53:                                               ; preds = %49, %47
  %54 = load i64, i64* %2, align 8
  %55 = call i32 @CryptGetDefaultOIDFunctionAddress(i64 %54, i32 0, i32* null, i32 0, i8** %3, i64* %4)
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* %1, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = call i64 (...) @GetLastError()
  %60 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %61 = icmp eq i64 %59, %60
  br label %62

62:                                               ; preds = %58, %53
  %63 = phi i1 [ false, %53 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 (...) @GetLastError()
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %65)
  %67 = load i32, i32* @bogusDll, align 4
  %68 = call i32 @CryptUnregisterDefaultOIDFunction(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %67)
  ret void
}

declare dso_local i64 @CryptInitOIDFunctionSet(i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CryptGetDefaultOIDFunctionAddress(i64, i32, i32*, i32, i8**, i64*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @CryptRegisterDefaultOIDFunction(i32, i8*, i32, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @CryptUnregisterDefaultOIDFunction(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

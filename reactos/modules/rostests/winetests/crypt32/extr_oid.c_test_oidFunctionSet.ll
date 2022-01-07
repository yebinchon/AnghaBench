; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_oid.c_test_oidFunctionSet.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_oid.c_test_oidFunctionSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"funky\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"CryptInitOIDFunctionSet failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"CryptGetDefaultOIDDllList failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Expected empty DLL list\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Expected identical sets\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"CryptDllEncodeObject\00", align 1
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@X509_CERT = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"Expected ERROR_FILE_NOT_FOUND, got %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_oidFunctionSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_oidFunctionSet() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* null, i32** %4, align 8
  %8 = call i64 @CryptInitOIDFunctionSet(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i64 (...) @GetLastError()
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %1, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @CryptGetDefaultOIDDllList(i64 %17, i32 0, i32* null, i32* %5)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i64 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %16
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32* @HeapAlloc(i32 %25, i32 0, i32 %29)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %24
  %34 = load i64, i64* %1, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @CryptGetDefaultOIDDllList(i64 %34, i32 0, i32* %35, i32* %5)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i64 (...) @GetLastError()
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 (...) @GetProcessHeap()
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @HeapFree(i32 %46, i32 0, i32* %47)
  br label %49

49:                                               ; preds = %33, %24
  br label %50

50:                                               ; preds = %49, %16
  br label %51

51:                                               ; preds = %50, %0
  %52 = call i64 @CryptInitOIDFunctionSet(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i64 (...) @GetLastError()
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = call i64 @CryptInitOIDFunctionSet(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i64 %58, i64* %2, align 8
  %59 = load i64, i64* %2, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 (...) @GetLastError()
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  %64 = load i64, i64* %1, align 8
  %65 = load i64, i64* %2, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i64, i64* %1, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71, %51
  %73 = call i64 @CryptInitOIDFunctionSet(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store i64 %73, i64* %1, align 8
  %74 = load i64, i64* %1, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %1, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %72
  %82 = load i64, i64* %1, align 8
  %83 = load i32, i32* @X509_ASN_ENCODING, align 4
  %84 = load i32, i32* @X509_CERT, align 4
  %85 = call i32 @CryptGetOIDFunctionAddress(i64 %82, i32 %83, i32 %84, i32 0, i8** %6, i32* %7)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %81
  %89 = call i64 (...) @GetLastError()
  %90 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88, %81
  %93 = load i32, i32* %3, align 4
  %94 = call i64 @broken(i32 %93)
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i1 [ true, %88 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  %99 = call i64 (...) @GetLastError()
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 %99)
  br label %101

101:                                              ; preds = %96, %72
  ret void
}

declare dso_local i64 @CryptInitOIDFunctionSet(i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CryptGetDefaultOIDDllList(i64, i32, i32*, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @CryptGetOIDFunctionAddress(i64, i32, i32, i32, i8**, i32*) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

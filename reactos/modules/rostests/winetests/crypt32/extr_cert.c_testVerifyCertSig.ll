; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_cert.c_testVerifyCertSig.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_cert.c_testVerifyCertSig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64, i32*, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }

@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Expected ERROR_FILE_NOT_FOUND, got %08x\0A\00", align 1
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CRYPT_E_ASN1_EOD = common dso_local global i64 0, align 8
@OSS_BAD_ARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Expected CRYPT_E_ASN1_EOD or OSS_BAD_ARG, got %08x\0A\00", align 1
@X509_CERT = common dso_local global i32 0, align 4
@CRYPT_ENCODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"CryptEncodeObjectEx failed: %08x\0A\00", align 1
@AT_SIGNATURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"CryptExportKey failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"CryptVerifyCertificateSignature failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_13__*, i64, i32*, i64)* @testVerifyCertSig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testVerifyCertSig(i32 %0, %struct.TYPE_13__* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32* null, i32** %12, align 8
  store i64 0, i64* %13, align 8
  %17 = call i32 @CryptVerifyCertificateSignature(i32 0, i32 0, i32* null, i64 0, i32* null)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = call i64 (...) @GetLastError()
  %22 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %5
  %25 = phi i1 [ false, %5 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 (...) @GetLastError()
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @CryptVerifyCertificateSignature(i32 %29, i32 0, i32* null, i64 0, i32* null)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = call i64 (...) @GetLastError()
  %35 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %33, %24
  %38 = phi i1 [ false, %24 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 (...) @GetLastError()
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @X509_ASN_ENCODING, align 4
  %44 = call i32 @CryptVerifyCertificateSignature(i32 %42, i32 %43, i32* null, i64 0, i32* null)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %37
  %48 = call i64 (...) @GetLastError()
  %49 = load i64, i64* @CRYPT_E_ASN1_EOD, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = call i64 (...) @GetLastError()
  %53 = load i64, i64* @OSS_BAD_ARG, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i1 [ true, %47 ], [ %54, %51 ]
  br label %57

57:                                               ; preds = %55, %37
  %58 = phi i1 [ false, %37 ], [ %56, %55 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 (...) @GetLastError()
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @X509_ASN_ENCODING, align 4
  %87 = load i32, i32* @X509_CERT, align 4
  %88 = load i32, i32* @CRYPT_ENCODE_ALLOC_FLAG, align 4
  %89 = call i32 @pCryptEncodeObjectEx(i32 %86, i32 %87, %struct.TYPE_14__* %11, i32 %88, i32* null, i32** %12, i64* %13)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i64 (...) @GetLastError()
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  %93 = load i32*, i32** %12, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %135

95:                                               ; preds = %57
  store i32* null, i32** %15, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @AT_SIGNATURE, align 4
  %98 = load i32, i32* @X509_ASN_ENCODING, align 4
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @CryptExportPublicKeyInfoEx(i32 %96, i32 %97, i32 %98, i64 %99, i32 0, i32* null, i32* null, i64* %16)
  %101 = call i32 (...) @GetProcessHeap()
  %102 = load i64, i64* %16, align 8
  %103 = call i32* @HeapAlloc(i32 %101, i32 0, i64 %102)
  store i32* %103, i32** %15, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %132

106:                                              ; preds = %95
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @AT_SIGNATURE, align 4
  %109 = load i32, i32* @X509_ASN_ENCODING, align 4
  %110 = load i64, i64* %8, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = call i32 @CryptExportPublicKeyInfoEx(i32 %107, i32 %108, i32 %109, i64 %110, i32 0, i32* null, i32* %111, i64* %16)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i64 (...) @GetLastError()
  %115 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %114)
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %106
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @X509_ASN_ENCODING, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load i32*, i32** %15, align 8
  %124 = call i32 @CryptVerifyCertificateSignature(i32 %119, i32 %120, i32* %121, i64 %122, i32* %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i64 (...) @GetLastError()
  %127 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %126)
  br label %128

128:                                              ; preds = %118, %106
  %129 = call i32 (...) @GetProcessHeap()
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @HeapFree(i32 %129, i32 0, i32* %130)
  br label %132

132:                                              ; preds = %128, %95
  %133 = load i32*, i32** %12, align 8
  %134 = call i32 @LocalFree(i32* %133)
  br label %135

135:                                              ; preds = %132, %57
  ret void
}

declare dso_local i32 @CryptVerifyCertificateSignature(i32, i32, i32*, i64, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @pCryptEncodeObjectEx(i32, i32, %struct.TYPE_14__*, i32, i32*, i32**, i64*) #1

declare dso_local i32 @CryptExportPublicKeyInfoEx(i32, i32, i32, i64, i32, i32*, i32*, i64*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

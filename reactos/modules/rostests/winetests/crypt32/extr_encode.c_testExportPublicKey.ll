; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_testExportPublicKey.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_testExportPublicKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Expected ERROR_INVALID_PARAMETER, got %08x\0A\00", align 1
@AT_SIGNATURE = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@NTE_NO_KEY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Expected NTE_NO_KEY, got %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"CryptGenKey failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"CryptExportPublicKeyInfoEx failed: %08x\0A\00", align 1
@szOID_RSA_RSA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Expected %s, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__**)* @testExportPublicKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testExportPublicKey(i32 %0, %struct.TYPE_7__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = call i32 @CryptExportPublicKeyInfoEx(i32 0, i32 0, i32 0, i32* null, i32 0, i32* null, %struct.TYPE_7__* null, i32* %6)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = call i64 (...) @GetLastError()
  %13 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %14 = icmp eq i64 %12, %13
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ false, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 (...) @GetLastError()
  %19 = call i32 (i32, i8*, i64, ...) @ok(i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @AT_SIGNATURE, align 4
  %21 = call i32 @CryptExportPublicKeyInfoEx(i32 0, i32 %20, i32 0, i32* null, i32 0, i32* null, %struct.TYPE_7__* null, i32* %6)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = call i64 (...) @GetLastError()
  %26 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %24, %15
  %29 = phi i1 [ false, %15 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 (...) @GetLastError()
  %32 = call i32 (i32, i8*, i64, ...) @ok(i32 %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @X509_ASN_ENCODING, align 4
  %34 = call i32 @CryptExportPublicKeyInfoEx(i32 0, i32 0, i32 %33, i32* null, i32 0, i32* null, %struct.TYPE_7__* null, i32* %6)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = call i64 (...) @GetLastError()
  %39 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %28
  %42 = phi i1 [ false, %28 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 (...) @GetLastError()
  %45 = call i32 (i32, i8*, i64, ...) @ok(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @AT_SIGNATURE, align 4
  %47 = load i32, i32* @X509_ASN_ENCODING, align 4
  %48 = call i32 @CryptExportPublicKeyInfoEx(i32 0, i32 %46, i32 %47, i32* null, i32 0, i32* null, %struct.TYPE_7__* null, i32* %6)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = call i64 (...) @GetLastError()
  %53 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %51, %41
  %56 = phi i1 [ false, %41 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 (...) @GetLastError()
  %59 = call i32 (i32, i8*, i64, ...) @ok(i32 %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @AT_SIGNATURE, align 4
  %62 = load i32, i32* @X509_ASN_ENCODING, align 4
  %63 = call i32 @CryptExportPublicKeyInfoEx(i32 %60, i32 %61, i32 %62, i32* null, i32 0, i32* null, %struct.TYPE_7__* null, i32* %6)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %55
  %67 = call i64 (...) @GetLastError()
  %68 = load i64, i64* @NTE_NO_KEY, align 8
  %69 = icmp eq i64 %67, %68
  br label %70

70:                                               ; preds = %66, %55
  %71 = phi i1 [ false, %55 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = call i64 (...) @GetLastError()
  %74 = call i32 (i32, i8*, i64, ...) @ok(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @AT_SIGNATURE, align 4
  %77 = call i32 @CryptGenKey(i32 %75, i32 %76, i32 0, i32* %7)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i64 (...) @GetLastError()
  %80 = call i32 (i32, i8*, i64, ...) @ok(i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %131

83:                                               ; preds = %70
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @AT_SIGNATURE, align 4
  %86 = load i32, i32* @X509_ASN_ENCODING, align 4
  %87 = call i32 @CryptExportPublicKeyInfoEx(i32 %84, i32 %85, i32 %86, i32* null, i32 0, i32* null, %struct.TYPE_7__* null, i32* %6)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i64 (...) @GetLastError()
  %90 = call i32 (i32, i8*, i64, ...) @ok(i32 %88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %89)
  %91 = call i32 (...) @GetProcessHeap()
  %92 = load i32, i32* %6, align 4
  %93 = call %struct.TYPE_7__* @HeapAlloc(i32 %91, i32 0, i32 %92)
  %94 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %94, align 8
  %95 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = icmp ne %struct.TYPE_7__* %96, null
  br i1 %97, label %98, label %130

98:                                               ; preds = %83
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @AT_SIGNATURE, align 4
  %101 = load i32, i32* @X509_ASN_ENCODING, align 4
  %102 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = call i32 @CryptExportPublicKeyInfoEx(i32 %99, i32 %100, i32 %101, i32* null, i32 0, i32* null, %struct.TYPE_7__* %103, i32* %6)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i64 (...) @GetLastError()
  %107 = call i32 (i32, i8*, i64, ...) @ok(i32 %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %106)
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %98
  %111 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @szOID_RSA_RSA, align 4
  %117 = call i32 @strcmp(i32 %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* @szOID_RSA_RSA, align 4
  %122 = sext i32 %121 to i64
  %123 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i8*, i64, ...) @ok(i32 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %122, i32 %127)
  br label %129

129:                                              ; preds = %110, %98
  br label %130

130:                                              ; preds = %129, %83
  br label %131

131:                                              ; preds = %130, %70
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @CryptDestroyKey(i32 %132)
  ret void
}

declare dso_local i32 @CryptExportPublicKeyInfoEx(i32, i32, i32, i32*, i32, i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CryptGenKey(i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

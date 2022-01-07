; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_test_decodePublicKeyInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_test_decodePublicKeyInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i32 }

@test_decodePublicKeyInfo.bogusPubKeyInfo = internal constant [36 x i32] [i32 48, i32 34, i32 48, i32 13, i32 6, i32 6, i32 42, i32 134, i32 72, i32 134, i32 247, i32 13, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 17, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@pubKeys = common dso_local global %struct.TYPE_3__* null, align 8
@X509_PUBLIC_KEY_INFO = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CryptDecodeObjectEx failed: %08x\0A\00", align 1
@CRYPT_E_ASN1_CORRUPT = common dso_local global i64 0, align 8
@OSS_DATA_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"Expected CRYPT_E_ASN1_CORRUPT or OSS_DATA_ERROR, got %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_decodePublicKeyInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_decodePublicKeyInfo(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i32* null, i32** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %77, %1
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pubKeys, align 8
  %10 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %9)
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %80

12:                                               ; preds = %7
  %13 = load i64, i64* %2, align 8
  %14 = load i32, i32* @X509_PUBLIC_KEY_INFO, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pubKeys, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pubKeys, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 2
  %28 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %29 = call i32 @pCryptDecodeObjectEx(i64 %13, i32 %14, i32* %19, i32 %27, i32 %28, i32* null, i32** %5, i64* %6)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i64 (...) @GetLastError()
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %12
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pubKeys, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @comparePublicKeyInfo(i32* %39, i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @LocalFree(i32* %42)
  br label %44

44:                                               ; preds = %35, %12
  %45 = load i64, i64* %2, align 8
  %46 = load i32, i32* @X509_PUBLIC_KEY_INFO, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pubKeys, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pubKeys, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 2
  %60 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %61 = call i32 @pCryptDecodeObjectEx(i64 %45, i32 %46, i32* %51, i32 %59, i32 %60, i32* null, i32** %5, i64* %6)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i64 (...) @GetLastError()
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %44
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pubKeys, align 8
  %69 = load i64, i64* %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @comparePublicKeyInfo(i32* %71, i32* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @LocalFree(i32* %74)
  br label %76

76:                                               ; preds = %67, %44
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %3, align 8
  br label %7

80:                                               ; preds = %7
  %81 = load i64, i64* %2, align 8
  %82 = load i32, i32* @X509_PUBLIC_KEY_INFO, align 4
  %83 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @test_decodePublicKeyInfo.bogusPubKeyInfo, i64 0, i64 1), align 4
  %84 = add nsw i32 %83, 2
  %85 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %86 = call i32 @pCryptDecodeObjectEx(i64 %81, i32 %82, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @test_decodePublicKeyInfo.bogusPubKeyInfo, i64 0, i64 0), i32 %84, i32 %85, i32* null, i32** %5, i64* %6)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %80
  %90 = call i64 (...) @GetLastError()
  %91 = load i64, i64* @CRYPT_E_ASN1_CORRUPT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = call i64 (...) @GetLastError()
  %95 = load i64, i64* @OSS_DATA_ERROR, align 8
  %96 = icmp eq i64 %94, %95
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi i1 [ true, %89 ], [ %96, %93 ]
  br label %99

99:                                               ; preds = %97, %80
  %100 = phi i1 [ false, %80 ], [ %98, %97 ]
  %101 = zext i1 %100 to i32
  %102 = call i64 (...) @GetLastError()
  %103 = call i32 @ok(i32 %101, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @pCryptDecodeObjectEx(i64, i32, i32*, i32, i32, i32*, i32**, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @comparePublicKeyInfo(i32*, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_test_encodePublicKeyInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_test_encodePublicKeyInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32 }

@pubKeys = common dso_local global %struct.TYPE_3__* null, align 8
@X509_PUBLIC_KEY_INFO = common dso_local global i32 0, align 4
@CRYPT_ENCODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@OSS_BAD_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"CryptEncodeObjectEx failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Expected %d bytes, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Unexpected value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_encodePublicKeyInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_encodePublicKeyInfo(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %90, %1
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pubKeys, align 8
  %10 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %9)
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %93

12:                                               ; preds = %7
  store i32* null, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i32, i32* @X509_PUBLIC_KEY_INFO, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pubKeys, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* @CRYPT_ENCODE_ALLOC_FLAG, align 4
  %20 = call i64 @pCryptEncodeObjectEx(i64 %13, i32 %14, i32* %18, i32 %19, i32* null, i32** %5, i64* %6)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  %24 = call i64 (...) @GetLastError()
  %25 = load i64, i64* @OSS_BAD_PTR, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %12
  %28 = phi i1 [ true, %12 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 (...) @GetLastError()
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %89

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pubKeys, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 2
  %44 = icmp eq i64 %35, %43
  %45 = zext i1 %44 to i32
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pubKeys, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 2
  %54 = load i64, i64* %6, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %54)
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pubKeys, align 8
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 2
  %65 = icmp eq i64 %56, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %34
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pubKeys, align 8
  %69 = load i64, i64* %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pubKeys, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 2
  %81 = call i32 @memcmp(i32* %67, i64* %72, i64 %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %66, %34
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @LocalFree(i32* %87)
  br label %89

89:                                               ; preds = %86, %27
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %3, align 8
  br label %7

93:                                               ; preds = %7
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @pCryptEncodeObjectEx(i64, i32, i32*, i32, i32*, i32**, i64*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @memcmp(i32*, i64*, i64) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

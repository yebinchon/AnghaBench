; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/bcrypt/extr_bcrypt.c_test_BcryptHash.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/bcrypt/extr_bcrypt.c_test_BcryptHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_BcryptHash.expected = internal constant [33 x i8] c"e2a3e68d23ce348b8f68b3079de3d4c9\00", align 16
@test_BcryptHash.expected_hmac = internal constant [33 x i8] c"7bda029b93fa8d817fcc9e13d6bdf092\00", align 16
@BCRYPT_MD5_ALGORITHM = common dso_local global i32 0, align 4
@MS_PRIMITIVE_PROVIDER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"alg not set\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@BCRYPT_ALG_HANDLE_HMAC_FLAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_BcryptHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_BcryptHash() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [16 x i32], align 16
  %3 = alloca [16 x i32], align 16
  %4 = alloca [65 x i8], align 16
  %5 = alloca i8*, align 8
  store i32* null, i32** %1, align 8
  %6 = load i32, i32* @BCRYPT_MD5_ALGORITHM, align 4
  %7 = load i32, i32* @MS_PRIMITIVE_PROVIDER, align 4
  %8 = call i8* @BCryptOpenAlgorithmProvider(i32** %1, i32 %6, i32 %7, i32 0)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** @STATUS_SUCCESS, align 8
  %11 = icmp eq i8* %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %1, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @test_hash_length(i32* %19, i32 16)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @test_alg_name(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %24 = call i32 @memset(i32* %23, i32 0, i32 64)
  %25 = load i32*, i32** %1, align 8
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %27 = call i8* @pBCryptHash(i32* %25, i32* null, i32 0, i32* bitcast ([5 x i8]* @.str.3 to i32*), i32 5, i32* %26, i32 64)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** @STATUS_SUCCESS, align 8
  %30 = icmp eq i8* %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %35 = getelementptr inbounds [65 x i8], [65 x i8]* %4, i64 0, i64 0
  %36 = call i32 @format_hash(i32* %34, i32 64, i8* %35)
  %37 = getelementptr inbounds [65 x i8], [65 x i8]* %4, i64 0, i64 0
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @test_BcryptHash.expected, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds [65 x i8], [65 x i8]* %4, i64 0, i64 0
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  %44 = load i32*, i32** %1, align 8
  %45 = call i8* @BCryptCloseAlgorithmProvider(i32* %44, i32 0)
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** @STATUS_SUCCESS, align 8
  %48 = icmp eq i8* %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32* null, i32** %1, align 8
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %53 = call i32 @memset(i32* %52, i32 0, i32 64)
  %54 = load i32, i32* @BCRYPT_MD5_ALGORITHM, align 4
  %55 = load i32, i32* @MS_PRIMITIVE_PROVIDER, align 4
  %56 = load i32, i32* @BCRYPT_ALG_HANDLE_HMAC_FLAG, align 4
  %57 = call i8* @BCryptOpenAlgorithmProvider(i32** %1, i32 %54, i32 %55, i32 %56)
  store i8* %57, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** @STATUS_SUCCESS, align 8
  %60 = icmp eq i8* %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %62)
  %64 = load i32*, i32** %1, align 8
  %65 = icmp ne i32* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32*, i32** %1, align 8
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %70 = call i8* @pBCryptHash(i32* %68, i32* bitcast ([4 x i8]* @.str.5 to i32*), i32 4, i32* bitcast ([5 x i8]* @.str.3 to i32*), i32 5, i32* %69, i32 64)
  store i8* %70, i8** %5, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i8*, i8** @STATUS_SUCCESS, align 8
  %73 = icmp eq i8* %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %75)
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %78 = getelementptr inbounds [65 x i8], [65 x i8]* %4, i64 0, i64 0
  %79 = call i32 @format_hash(i32* %77, i32 64, i8* %78)
  %80 = getelementptr inbounds [65 x i8], [65 x i8]* %4, i64 0, i64 0
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @test_BcryptHash.expected_hmac, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds [65 x i8], [65 x i8]* %4, i64 0, i64 0
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  %87 = load i32*, i32** %1, align 8
  %88 = call i8* @BCryptCloseAlgorithmProvider(i32* %87, i32 0)
  store i8* %88, i8** %5, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** @STATUS_SUCCESS, align 8
  %91 = icmp eq i8* %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %93)
  ret void
}

declare dso_local i8* @BCryptOpenAlgorithmProvider(i32**, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @test_hash_length(i32*, i32) #1

declare dso_local i32 @test_alg_name(i32*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @pBCryptHash(i32*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @format_hash(i32*, i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @BCryptCloseAlgorithmProvider(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

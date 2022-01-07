; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/bcrypt/extr_bcrypt.c_test_rng.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/bcrypt/extr_bcrypt.c_test_rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCRYPT_RNG_ALGORITHM = common dso_local global i32 0, align 4
@MS_PRIMITIVE_PROVIDER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"alg not set\0A\00", align 1
@BCRYPT_OBJECT_LENGTH = common dso_local global i32 0, align 4
@STATUS_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"RNG\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"got zeroes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_rng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rng() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [16 x i32], align 16
  %5 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  %6 = load i32, i32* @BCRYPT_RNG_ALGORITHM, align 4
  %7 = load i32, i32* @MS_PRIMITIVE_PROVIDER, align 4
  %8 = call i64 @BCryptOpenAlgorithmProvider(i32** %1, i32 %6, i32 %7, i32 0)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @STATUS_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %5, align 8
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 -559038737, i32* %2, align 4
  store i32 -559038737, i32* %3, align 4
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @BCRYPT_OBJECT_LENGTH, align 4
  %21 = call i64 @BCryptGetProperty(i32* %19, i32 %20, i32* %3, i32 4, i32* %2, i32 0)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @STATUS_NOT_SUPPORTED, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %5, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @test_alg_name(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %31 = call i32 @memset(i32* %30, i32 0, i32 16)
  %32 = load i32*, i32** %1, align 8
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %34 = call i64 @BCryptGenRandom(i32* %32, i32* %33, i32 8, i32 0)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @STATUS_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %5, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  %44 = call i32 @memcmp(i32* %41, i32* %43, i32 8)
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32*, i32** %1, align 8
  %47 = call i64 @BCryptCloseAlgorithmProvider(i32* %46, i32 0)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @STATUS_SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %5, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %52)
  ret void
}

declare dso_local i64 @BCryptOpenAlgorithmProvider(i32**, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @BCryptGetProperty(i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @test_alg_name(i32*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @BCryptGenRandom(i32*, i32*, i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @BCryptCloseAlgorithmProvider(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

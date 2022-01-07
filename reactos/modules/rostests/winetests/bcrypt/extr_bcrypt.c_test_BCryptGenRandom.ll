; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/bcrypt/extr_bcrypt.c_test_BCryptGenRandom.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/bcrypt/extr_bcrypt.c_test_BCryptGenRandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Expected STATUS_INVALID_HANDLE, got 0x%x\0A\00", align 1
@BCRYPT_USE_SYSTEM_PREFERRED_RNG = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Expected success, got 0x%x\0A\00", align 1
@BCRYPT_RNG_USE_ENTROPY_IN_BUFFER = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Expected STATUS_INVALID_PARAMETER, got 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Expected a random number, got 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_BCryptGenRandom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_BCryptGenRandom() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [256 x i32], align 16
  %3 = call i64 @BCryptGenRandom(i32* null, i32* null, i32 0, i32 0)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @STATUS_INVALID_HANDLE, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i64, i64* %1, align 8
  %9 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %11 = call i64 @BCryptGenRandom(i32* null, i32* %10, i32 0, i32 0)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @STATUS_INVALID_HANDLE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %1, align 8
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %19 = call i64 @BCryptGenRandom(i32* null, i32* %18, i32 1024, i32 0)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @STATUS_INVALID_HANDLE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %1, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %27 = load i32, i32* @BCRYPT_USE_SYSTEM_PREFERRED_RNG, align 4
  %28 = call i64 @BCryptGenRandom(i32* null, i32* %26, i32 1024, i32 %27)
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @STATUS_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %1, align 8
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %36 = load i32, i32* @BCRYPT_USE_SYSTEM_PREFERRED_RNG, align 4
  %37 = load i32, i32* @BCRYPT_RNG_USE_ENTROPY_IN_BUFFER, align 4
  %38 = or i32 %36, %37
  %39 = call i64 @BCryptGenRandom(i32* null, i32* %35, i32 1024, i32 %38)
  store i64 %39, i64* %1, align 8
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* @STATUS_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %1, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @BCRYPT_USE_SYSTEM_PREFERRED_RNG, align 4
  %47 = call i64 @BCryptGenRandom(i32* null, i32* null, i32 1024, i32 %46)
  store i64 %47, i64* %1, align 8
  %48 = load i64, i64* %1, align 8
  %49 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %1, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %55 = load i32, i32* @BCRYPT_USE_SYSTEM_PREFERRED_RNG, align 4
  %56 = call i64 @BCryptGenRandom(i32* null, i32* %54, i32 0, i32 %55)
  store i64 %56, i64* %1, align 8
  %57 = load i64, i64* %1, align 8
  %58 = load i64, i64* @STATUS_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %1, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %64 = call i32 @memset(i32* %63, i32 0, i32 16)
  %65 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %66 = load i32, i32* @BCRYPT_USE_SYSTEM_PREFERRED_RNG, align 4
  %67 = call i64 @BCryptGenRandom(i32* null, i32* %65, i32 8, i32 %66)
  store i64 %67, i64* %1, align 8
  %68 = load i64, i64* %1, align 8
  %69 = load i64, i64* @STATUS_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %1, align 8
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %75 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %76 = getelementptr inbounds i32, i32* %75, i64 8
  %77 = call i32 @memcmp(i32* %74, i32* %76, i32 8)
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @BCryptGenRandom(i32*, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

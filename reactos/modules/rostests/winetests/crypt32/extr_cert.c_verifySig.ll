; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_cert.c_verifySig.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_cert.c_verifySig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CALG_SHA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"CryptCreateHash failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"CryptHashData failed: %08x\0A\00", align 1
@AT_SIGNATURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"CryptSignHash failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Expected sig length %d, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Unexpected signature\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, i32*, i32)* @verifySig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verifySig(i32 %0, i32* %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [64 x i32], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @CALG_SHA1, align 4
  %17 = call i64 @CryptCreateHash(i32 %15, i32 %16, i32 0, i32 0, i32* %11)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %5
  store i32 256, i32* %14, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @CryptHashData(i32 %25, i32* %26, i64 %27, i32 0)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @AT_SIGNATURE, align 4
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %36 = call i64 @CryptSignHashA(i32 %33, i32 %34, i32* null, i32 0, i32* %35, i32* %14)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 (...) @GetLastError()
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i64, i64* %12, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %24
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %49)
  %51 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @memcmp(i32* %51, i32* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %43, %24
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @CryptDestroyHash(i32 %60)
  br label %62

62:                                               ; preds = %59, %5
  ret void
}

declare dso_local i64 @CryptCreateHash(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @CryptHashData(i32, i32*, i64, i32) #1

declare dso_local i64 @CryptSignHashA(i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @CryptDestroyHash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

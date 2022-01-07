; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_cred.c_test_CredIsMarshaledCredentialA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_cred.c_test_CredIsMarshaledCredentialA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"@@BXlmblBAAAAAAAAAAAAAAAAAAAAA\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"@@BAAAAAAAAAAAAAAAAAAAAAAAAAAA\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"@@CCAAAAA0BA\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"@@CIAAAAA0BQZAMHA0BA\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"winetest\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"@@\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"@@A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"@@AA\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"@@AAA\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"@@B\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"@@BB\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"@@BBB\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"@@BAAAAAAAAAAAAAAAAAAAAAAAAAAAA\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"@@BAAAAAAAAAAAAAAAAAAAAAAAAAA\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"@@BAAAAAAAAAAAAAAAAAAAAAAAAAA+\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"@@BAAAAAAAAAAAAAAAAAAAAAAAAAA:\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"@@BAAAAAAAAAAAAAAAAAAAAAAAAAA>\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"@@BAAAAAAAAAAAAAAAAAAAAAAAAAA<\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"@@C\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"@@CC\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"@@CCC\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"@@D\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"@@DD\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"@@DDD\00", align 1
@__const.test_CredIsMarshaledCredentialA.ptr = private unnamed_addr constant [26 x i8*] [i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* null], align 16
@FALSE = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [42 x i8] c"%d: got %d and %u for %s (expected TRUE)\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"%d: got %d and %u for %s (expected FALSE)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CredIsMarshaledCredentialA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CredIsMarshaledCredentialA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [26 x i8*], align 16
  %5 = load i64, i64* @TRUE, align 8
  store i64 %5, i64* %3, align 8
  %6 = bitcast [26 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([26 x i8*]* @__const.test_CredIsMarshaledCredentialA.ptr to i8*), i64 208, i1 false)
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %59, %0
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [26 x i8*], [26 x i8*]* %4, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %62

13:                                               ; preds = %7
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [26 x i8*], [26 x i8*]* %4, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 64
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %21, %13
  %24 = call i32 @SetLastError(i32 -559038737)
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [26 x i8*], [26 x i8*]* %4, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @pCredIsMarshaledCredentialA(i8* %28)
  store i64 %29, i64* %2, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @FALSE, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %1, align 4
  %38 = load i64, i64* %2, align 8
  %39 = call i32 (...) @GetLastError()
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [26 x i8*], [26 x i8*]* %4, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0), i32 %37, i64 %38, i32 %39, i8* %43)
  br label %58

45:                                               ; preds = %23
  %46 = load i64, i64* %2, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %1, align 4
  %51 = load i64, i64* %2, align 8
  %52 = call i32 (...) @GetLastError()
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [26 x i8*], [26 x i8*]* %4, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0), i32 %50, i64 %51, i32 %52, i8* %56)
  br label %58

58:                                               ; preds = %45, %32
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %7

62:                                               ; preds = %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @pCredIsMarshaledCredentialA(i8*) #2

declare dso_local i32 @ok(i32, i8*, i32, i64, i32, i8*) #2

declare dso_local i32 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_cert.c_testHashPublicKeyInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_cert.c_testHashPublicKeyInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Expected ERROR_FILE_NOT_FOUND, got %08x\0A\00", align 1
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"CryptHashPublicKeyInfo failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Expected hash size 16, got %d\0A\00", align 1
@testHashPublicKeyInfo.emptyHash = internal constant [16 x i32] [i32 184, i32 81, i32 58, i32 49, i32 14, i32 159, i32 64, i32 54, i32 156, i32 146, i32 69, i32 27, i32 157, i32 200, i32 249, i32 246], align 16
@.str.3 = private unnamed_addr constant [17 x i8] c"Unexpected hash\0A\00", align 1
@STATUS_ACCESS_VIOLATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testHashPublicKeyInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testHashPublicKeyInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i32, align 4
  %4 = alloca [16 x i32], align 16
  %5 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  %6 = call i32 @CryptHashPublicKeyInfo(i32 0, i32 0, i32 0, i32 0, %struct.TYPE_5__* null, i32* null, i32* %3)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = call i32 (...) @GetLastError()
  %11 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %12 = icmp eq i32 %10, %11
  br label %13

13:                                               ; preds = %9, %0
  %14 = phi i1 [ false, %0 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 (...) @GetLastError()
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @X509_ASN_ENCODING, align 4
  %19 = call i32 @CryptHashPublicKeyInfo(i32 0, i32 0, i32 0, i32 %18, %struct.TYPE_5__* %2, i32* null, i32* %3)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %1, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @broken(i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %22, %13
  %30 = phi i1 [ true, %13 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %1, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 16
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %58

44:                                               ; preds = %36
  %45 = load i32, i32* @X509_ASN_ENCODING, align 4
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %47 = call i32 @CryptHashPublicKeyInfo(i32 0, i32 0, i32 0, i32 %45, %struct.TYPE_5__* %2, i32* %46, i32* %3)
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = call i32 (...) @GetLastError()
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @memcmp(i32* %51, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @testHashPublicKeyInfo.emptyHash, i64 0, i64 0), i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %44, %36
  br label %59

59:                                               ; preds = %58, %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CryptHashPublicKeyInfo(i32, i32, i32, i32, %struct.TYPE_5__*, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

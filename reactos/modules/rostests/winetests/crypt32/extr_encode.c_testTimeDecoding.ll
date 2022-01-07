; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_testTimeDecoding.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_testTimeDecoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encodedFiletime = type { %struct.TYPE_6__, i64* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@X509_CHOICE_OF_TIME = common dso_local global i64 0, align 8
@OSS_DATA_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"CryptDecodeObjectEx failed: %d (0x%08x)\0A\00", align 1
@CRYPT_E_ASN1_BADTAG = common dso_local global i64 0, align 8
@OSS_PDU_MISMATCH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"Expected CRYPT_E_ASN1_BADTAG or OSS_PDU_MISMATCH, got %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, %struct.encodedFiletime*)* @testTimeDecoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testTimeDecoding(i32 %0, i64 %1, %struct.encodedFiletime* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.encodedFiletime*, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.encodedFiletime* %2, %struct.encodedFiletime** %6, align 8
  %10 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  store i32 4, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.encodedFiletime*, %struct.encodedFiletime** %6, align 8
  %14 = getelementptr inbounds %struct.encodedFiletime, %struct.encodedFiletime* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.encodedFiletime*, %struct.encodedFiletime** %6, align 8
  %17 = getelementptr inbounds %struct.encodedFiletime, %struct.encodedFiletime* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 2
  %22 = call i64 @pCryptDecodeObjectEx(i32 %11, i64 %12, i64* %15, i64 %21, i32 0, i32* null, %struct.TYPE_5__* %7, i32* %8)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @X509_CHOICE_OF_TIME, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %3
  %27 = load %struct.encodedFiletime*, %struct.encodedFiletime** %6, align 8
  %28 = getelementptr inbounds %struct.encodedFiletime, %struct.encodedFiletime* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %30, 1950
  br i1 %31, label %32, label %61

32:                                               ; preds = %26
  %33 = load %struct.encodedFiletime*, %struct.encodedFiletime** %6, align 8
  %34 = getelementptr inbounds %struct.encodedFiletime, %struct.encodedFiletime* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sle i32 %36, 2050
  br i1 %37, label %38, label %61

38:                                               ; preds = %32, %3
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = call i64 (...) @GetLastError()
  %43 = load i64, i64* @OSS_DATA_ERROR, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @broken(i32 %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %41, %38
  %49 = phi i1 [ true, %38 ], [ %47, %41 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 (...) @GetLastError()
  %52 = call i64 (...) @GetLastError()
  %53 = call i32 (i32, i8*, i64, ...) @ok(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.encodedFiletime*, %struct.encodedFiletime** %6, align 8
  %58 = getelementptr inbounds %struct.encodedFiletime, %struct.encodedFiletime* %57, i32 0, i32 0
  %59 = call i32 @compareTime(%struct.TYPE_6__* %58, %struct.TYPE_5__* %7)
  br label %60

60:                                               ; preds = %56, %48
  br label %79

61:                                               ; preds = %32, %26
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = call i64 (...) @GetLastError()
  %66 = load i64, i64* @CRYPT_E_ASN1_BADTAG, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = call i64 (...) @GetLastError()
  %70 = load i64, i64* @OSS_PDU_MISMATCH, align 8
  %71 = icmp eq i64 %69, %70
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i1 [ true, %64 ], [ %71, %68 ]
  br label %74

74:                                               ; preds = %72, %61
  %75 = phi i1 [ false, %61 ], [ %73, %72 ]
  %76 = zext i1 %75 to i32
  %77 = call i64 (...) @GetLastError()
  %78 = call i32 (i32, i8*, i64, ...) @ok(i32 %76, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %74, %60
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @pCryptDecodeObjectEx(i32, i64, i64*, i64, i32, i32*, %struct.TYPE_5__*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @compareTime(%struct.TYPE_6__*, %struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

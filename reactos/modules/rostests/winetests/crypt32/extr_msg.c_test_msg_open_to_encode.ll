; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_test_msg_open_to_encode.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_test_msg_open_to_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Expected E_INVALIDARG, got %x\0A\00", align 1
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@CRYPT_E_INVALID_MSG_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Expected CRYPT_E_INVALID_MSG_TYPE, got %x\0A\00", align 1
@CMSG_SIGNED_AND_ENVELOPED = common dso_local global i32 0, align 4
@CMSG_ENCRYPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_msg_open_to_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_msg_open_to_encode() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @SetLastError(i32 -559038737)
  %3 = call i64 @CryptMsgOpenToEncode(i32 0, i32 0, i32 0, i32* null, i32* null, i32* null)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = call i64 (...) @GetLastError()
  %8 = load i64, i64* @E_INVALIDARG, align 8
  %9 = icmp eq i64 %7, %8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i1 [ false, %0 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  %13 = call i64 (...) @GetLastError()
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = call i32 @SetLastError(i32 -559038737)
  %16 = load i32, i32* @X509_ASN_ENCODING, align 4
  %17 = call i64 @CryptMsgOpenToEncode(i32 %16, i32 0, i32 0, i32* null, i32* null, i32* null)
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %10
  %21 = call i64 (...) @GetLastError()
  %22 = load i64, i64* @E_INVALIDARG, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %10
  %25 = phi i1 [ false, %10 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 (...) @GetLastError()
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = call i32 @SetLastError(i32 -559038737)
  %30 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %31 = call i64 @CryptMsgOpenToEncode(i32 %30, i32 0, i32 0, i32* null, i32* null, i32* null)
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* %1, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %24
  %35 = call i64 (...) @GetLastError()
  %36 = load i64, i64* @CRYPT_E_INVALID_MSG_TYPE, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %34, %24
  %39 = phi i1 [ false, %24 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 (...) @GetLastError()
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = call i32 @SetLastError(i32 -559038737)
  %44 = load i32, i32* @X509_ASN_ENCODING, align 4
  %45 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %46 = or i32 %44, %45
  %47 = call i64 @CryptMsgOpenToEncode(i32 %46, i32 0, i32 0, i32* null, i32* null, i32* null)
  store i64 %47, i64* %1, align 8
  %48 = load i64, i64* %1, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %38
  %51 = call i64 (...) @GetLastError()
  %52 = load i64, i64* @CRYPT_E_INVALID_MSG_TYPE, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %50, %38
  %55 = phi i1 [ false, %38 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 (...) @GetLastError()
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = call i32 @SetLastError(i32 -559038737)
  %60 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %61 = load i32, i32* @CMSG_SIGNED_AND_ENVELOPED, align 4
  %62 = call i64 @CryptMsgOpenToEncode(i32 %60, i32 0, i32 %61, i32* null, i32* null, i32* null)
  store i64 %62, i64* %1, align 8
  %63 = load i64, i64* %1, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %54
  %66 = call i64 (...) @GetLastError()
  %67 = load i64, i64* @CRYPT_E_INVALID_MSG_TYPE, align 8
  %68 = icmp eq i64 %66, %67
  br label %69

69:                                               ; preds = %65, %54
  %70 = phi i1 [ false, %54 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  %72 = call i64 (...) @GetLastError()
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = call i32 @SetLastError(i32 -559038737)
  %75 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %76 = load i32, i32* @CMSG_ENCRYPTED, align 4
  %77 = call i64 @CryptMsgOpenToEncode(i32 %75, i32 0, i32 %76, i32* null, i32* null, i32* null)
  store i64 %77, i64* %1, align 8
  %78 = load i64, i64* %1, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %69
  %81 = call i64 (...) @GetLastError()
  %82 = load i64, i64* @CRYPT_E_INVALID_MSG_TYPE, align 8
  %83 = icmp eq i64 %81, %82
  br label %84

84:                                               ; preds = %80, %69
  %85 = phi i1 [ false, %69 ], [ %83, %80 ]
  %86 = zext i1 %85 to i32
  %87 = call i64 (...) @GetLastError()
  %88 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @CryptMsgOpenToEncode(i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

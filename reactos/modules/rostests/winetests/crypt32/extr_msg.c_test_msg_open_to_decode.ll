; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_test_msg_open_to_decode.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_test_msg_open_to_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Expected E_INVALIDARG, got %x\0A\00", align 1
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CMSG_DATA = common dso_local global i32 0, align 4
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"CryptMsgOpenToDecode failed: %x\0A\00", align 1
@CMSG_ENVELOPED = common dso_local global i32 0, align 4
@CMSG_HASHED = common dso_local global i32 0, align 4
@CMSG_SIGNED = common dso_local global i32 0, align 4
@CMSG_SIGNED_AND_ENVELOPED = common dso_local global i32 0, align 4
@CMSG_ENCRYPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_msg_open_to_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_msg_open_to_decode() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 4, i1 false)
  %4 = call i32 @SetLastError(i32 -559038737)
  %5 = call i32* @CryptMsgOpenToDecode(i32 0, i32 0, i32 0, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = call i64 (...) @GetLastError()
  %10 = load i64, i64* @E_INVALIDARG, align 8
  %11 = icmp eq i64 %9, %10
  br label %12

12:                                               ; preds = %8, %0
  %13 = phi i1 [ false, %0 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 (...) @GetLastError()
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = call i32 @SetLastError(i32 -559038737)
  %18 = load i32, i32* @X509_ASN_ENCODING, align 4
  %19 = call i32* @CryptMsgOpenToDecode(i32 %18, i32 0, i32 0, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32* %19, i32** %1, align 8
  %20 = load i32*, i32** %1, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = call i64 (...) @GetLastError()
  %24 = load i64, i64* @E_INVALIDARG, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi i1 [ false, %12 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 (...) @GetLastError()
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = call i32 @SetLastError(i32 -559038737)
  %32 = load i32, i32* @X509_ASN_ENCODING, align 4
  %33 = load i32, i32* @CMSG_DATA, align 4
  %34 = call i32* @CryptMsgOpenToDecode(i32 %32, i32 0, i32 %33, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32* %34, i32** %1, align 8
  %35 = load i32*, i32** %1, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %26
  %38 = call i64 (...) @GetLastError()
  %39 = load i64, i64* @E_INVALIDARG, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %26
  %42 = phi i1 [ false, %26 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 (...) @GetLastError()
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %47 = load i32, i32* @CMSG_DATA, align 4
  %48 = call i32* @CryptMsgOpenToDecode(i32 %46, i32 0, i32 %47, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32* %48, i32** %1, align 8
  %49 = load i32*, i32** %1, align 8
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i64 (...) @GetLastError()
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @CryptMsgClose(i32* %54)
  %56 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %57 = load i32, i32* @CMSG_ENVELOPED, align 4
  %58 = call i32* @CryptMsgOpenToDecode(i32 %56, i32 0, i32 %57, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32* %58, i32** %1, align 8
  %59 = load i32*, i32** %1, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i64 (...) @GetLastError()
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @CryptMsgClose(i32* %64)
  %66 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %67 = load i32, i32* @CMSG_HASHED, align 4
  %68 = call i32* @CryptMsgOpenToDecode(i32 %66, i32 0, i32 %67, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32* %68, i32** %1, align 8
  %69 = load i32*, i32** %1, align 8
  %70 = icmp ne i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i64 (...) @GetLastError()
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @CryptMsgClose(i32* %74)
  %76 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %77 = load i32, i32* @CMSG_SIGNED, align 4
  %78 = call i32* @CryptMsgOpenToDecode(i32 %76, i32 0, i32 %77, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32* %78, i32** %1, align 8
  %79 = load i32*, i32** %1, align 8
  %80 = icmp ne i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i64 (...) @GetLastError()
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @CryptMsgClose(i32* %84)
  %86 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %87 = load i32, i32* @CMSG_SIGNED_AND_ENVELOPED, align 4
  %88 = call i32* @CryptMsgOpenToDecode(i32 %86, i32 0, i32 %87, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32* %88, i32** %1, align 8
  %89 = load i32*, i32** %1, align 8
  %90 = icmp ne i32* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i64 (...) @GetLastError()
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 @CryptMsgClose(i32* %94)
  %96 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %97 = call i32* @CryptMsgOpenToDecode(i32 %96, i32 0, i32 0, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32* %97, i32** %1, align 8
  %98 = load i32*, i32** %1, align 8
  %99 = icmp ne i32* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i64 (...) @GetLastError()
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @CryptMsgClose(i32* %103)
  %105 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %106 = load i32, i32* @CMSG_ENCRYPTED, align 4
  %107 = call i32* @CryptMsgOpenToDecode(i32 %105, i32 0, i32 %106, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32* %107, i32** %1, align 8
  %108 = load i32*, i32** %1, align 8
  %109 = icmp ne i32* %108, null
  %110 = zext i1 %109 to i32
  %111 = call i64 (...) @GetLastError()
  %112 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %111)
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @CryptMsgClose(i32* %113)
  %115 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %116 = call i32* @CryptMsgOpenToDecode(i32 %115, i32 0, i32 1000, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32* %116, i32** %1, align 8
  %117 = load i32*, i32** %1, align 8
  %118 = icmp ne i32* %117, null
  %119 = zext i1 %118 to i32
  %120 = call i64 (...) @GetLastError()
  %121 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %120)
  %122 = load i32*, i32** %1, align 8
  %123 = call i32 @CryptMsgClose(i32* %122)
  %124 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %125 = load i32, i32* @CMSG_HASHED, align 4
  %126 = call i32* @CryptMsgOpenToDecode(i32 %124, i32 0, i32 %125, i32 0, i32* null, %struct.TYPE_3__* %2)
  store i32* %126, i32** %1, align 8
  %127 = load i32*, i32** %1, align 8
  %128 = icmp ne i32* %127, null
  %129 = zext i1 %128 to i32
  %130 = call i64 (...) @GetLastError()
  %131 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %130)
  %132 = load i32*, i32** %1, align 8
  %133 = call i32 @CryptMsgClose(i32* %132)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32* @CryptMsgOpenToDecode(i32, i32, i32, i32, i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @CryptMsgClose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

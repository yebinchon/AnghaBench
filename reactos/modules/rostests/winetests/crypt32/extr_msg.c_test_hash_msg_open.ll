; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_test_hash_msg_open.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_test_hash_msg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32, i32 }

@nop_stream_output = common dso_local global i32 0, align 4
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@CMSG_HASHED = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Expected E_INVALIDARG, got %x\0A\00", align 1
@CRYPT_E_UNKNOWN_ALGO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Expected CRYPT_E_UNKNOWN_ALGO, got %x\0A\00", align 1
@oid_rsa_md5 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"CryptMsgOpenToEncode failed: %x\0A\00", align 1
@CMSG_DETACHED_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hash_msg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hash_msg_open() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = bitcast %struct.TYPE_8__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 12, i1 false)
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %7 = load i32, i32* @nop_stream_output, align 4
  store i32 %7, i32* %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = call i32 @SetLastError(i32 -559038737)
  %10 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %11 = load i32, i32* @CMSG_HASHED, align 4
  %12 = call i32* @CryptMsgOpenToEncode(i32 %10, i32 0, i32 %11, %struct.TYPE_8__* %2, i32* null, %struct.TYPE_7__* null)
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %0
  %16 = call i64 (...) @GetLastError()
  %17 = load i64, i64* @E_INVALIDARG, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %15, %0
  %20 = phi i1 [ false, %0 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 (...) @GetLastError()
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i32 12, i32* %24, align 4
  %25 = call i32 @SetLastError(i32 -559038737)
  %26 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %27 = load i32, i32* @CMSG_HASHED, align 4
  %28 = call i32* @CryptMsgOpenToEncode(i32 %26, i32 0, i32 %27, %struct.TYPE_8__* %2, i32* null, %struct.TYPE_7__* null)
  store i32* %28, i32** %1, align 8
  %29 = load i32*, i32** %1, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %19
  %32 = call i64 (...) @GetLastError()
  %33 = load i64, i64* @CRYPT_E_UNKNOWN_ALGO, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %31, %19
  %36 = phi i1 [ false, %19 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 (...) @GetLastError()
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @oid_rsa_md5, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %44 = load i32, i32* @CMSG_HASHED, align 4
  %45 = call i32* @CryptMsgOpenToEncode(i32 %43, i32 0, i32 %44, %struct.TYPE_8__* %2, i32* null, %struct.TYPE_7__* null)
  store i32* %45, i32** %1, align 8
  %46 = load i32*, i32** %1, align 8
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i64 (...) @GetLastError()
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @CryptMsgClose(i32* %51)
  %53 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %54 = load i32, i32* @CMSG_DETACHED_FLAG, align 4
  %55 = load i32, i32* @CMSG_HASHED, align 4
  %56 = call i32* @CryptMsgOpenToEncode(i32 %53, i32 %54, i32 %55, %struct.TYPE_8__* %2, i32* null, %struct.TYPE_7__* null)
  store i32* %56, i32** %1, align 8
  %57 = load i32*, i32** %1, align 8
  %58 = icmp ne i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i64 (...) @GetLastError()
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @CryptMsgClose(i32* %62)
  %64 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %65 = load i32, i32* @CMSG_DETACHED_FLAG, align 4
  %66 = load i32, i32* @CMSG_HASHED, align 4
  %67 = call i32* @CryptMsgOpenToEncode(i32 %64, i32 %65, i32 %66, %struct.TYPE_8__* %2, i32* null, %struct.TYPE_7__* %3)
  store i32* %67, i32** %1, align 8
  %68 = load i32*, i32** %1, align 8
  %69 = icmp ne i32* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i64 (...) @GetLastError()
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @CryptMsgClose(i32* %73)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32* @CryptMsgOpenToEncode(i32, i32, i32, %struct.TYPE_8__*, i32*, %struct.TYPE_7__*) #2

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

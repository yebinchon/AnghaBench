; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_test_data_msg_open.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_test_data_msg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@__const.test_data_msg_open.oid = private unnamed_addr constant [6 x i8] c"1.2.3\00", align 1
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@CMSG_DATA = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Expected E_INVALIDARG, got %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"CryptMsgOpenToEncode failed: %x\0A\00", align 1
@CMSG_DETACHED_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_data_msg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_data_msg_open() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca [6 x i8], align 1
  %5 = bitcast %struct.TYPE_6__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  %6 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = bitcast [6 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_data_msg_open.oid, i32 0, i32 0), i64 6, i1 false)
  %8 = call i32 @SetLastError(i32 -559038737)
  %9 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %10 = load i32, i32* @CMSG_DATA, align 4
  %11 = call i32* @CryptMsgOpenToEncode(i32 %9, i32 0, i32 %10, %struct.TYPE_6__* %2, i8* null, %struct.TYPE_5__* null)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %0
  %15 = call i64 (...) @GetLastError()
  %16 = load i64, i64* @E_INVALIDARG, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %14, %0
  %19 = phi i1 [ false, %0 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 (...) @GetLastError()
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %24 = load i32, i32* @CMSG_DATA, align 4
  %25 = call i32* @CryptMsgOpenToEncode(i32 %23, i32 0, i32 %24, %struct.TYPE_6__* null, i8* null, %struct.TYPE_5__* null)
  store i32* %25, i32** %1, align 8
  %26 = load i32*, i32** %1, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i64 (...) @GetLastError()
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @CryptMsgClose(i32* %31)
  %33 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %34 = load i32, i32* @CMSG_DATA, align 4
  %35 = call i32* @CryptMsgOpenToEncode(i32 %33, i32 0, i32 %34, %struct.TYPE_6__* null, i8* null, %struct.TYPE_5__* %3)
  store i32* %35, i32** %1, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i64 (...) @GetLastError()
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @CryptMsgClose(i32* %41)
  %43 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %44 = load i32, i32* @CMSG_DATA, align 4
  %45 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %46 = call i32* @CryptMsgOpenToEncode(i32 %43, i32 0, i32 %44, %struct.TYPE_6__* null, i8* %45, %struct.TYPE_5__* null)
  store i32* %46, i32** %1, align 8
  %47 = load i32*, i32** %1, align 8
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i64 (...) @GetLastError()
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @CryptMsgClose(i32* %52)
  %54 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %55 = load i32, i32* @CMSG_DETACHED_FLAG, align 4
  %56 = load i32, i32* @CMSG_DATA, align 4
  %57 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %58 = call i32* @CryptMsgOpenToEncode(i32 %54, i32 %55, i32 %56, %struct.TYPE_6__* null, i8* %57, %struct.TYPE_5__* null)
  store i32* %58, i32** %1, align 8
  %59 = load i32*, i32** %1, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i64 (...) @GetLastError()
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @CryptMsgClose(i32* %64)
  %66 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %67 = load i32, i32* @CMSG_DETACHED_FLAG, align 4
  %68 = load i32, i32* @CMSG_DATA, align 4
  %69 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %70 = call i32* @CryptMsgOpenToEncode(i32 %66, i32 %67, i32 %68, %struct.TYPE_6__* null, i8* %69, %struct.TYPE_5__* %3)
  store i32* %70, i32** %1, align 8
  %71 = load i32*, i32** %1, align 8
  %72 = icmp ne i32* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i64 (...) @GetLastError()
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load i32*, i32** %1, align 8
  %77 = call i32 @CryptMsgClose(i32* %76)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32* @CryptMsgOpenToEncode(i32, i32, i32, %struct.TYPE_6__*, i8*, %struct.TYPE_5__*) #2

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

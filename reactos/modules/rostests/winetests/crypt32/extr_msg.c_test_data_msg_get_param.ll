; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_test_data_msg_get_param.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_test_data_msg_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }

@nop_stream_output = common dso_local global i32 0, align 4
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@CMSG_DATA = common dso_local global i32 0, align 4
@CMSG_CONTENT_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"CryptMsgGetParam failed: %08x\0A\00", align 1
@CMSG_BARE_CONTENT_PARAM = common dso_local global i32 0, align 4
@CMSG_ENCODED_SIGNER = common dso_local global i32 0, align 4
@CRYPT_E_INVALID_MSG_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Expected CRYPT_E_INVALID_MSG_TYPE, got %x\0A\00", align 1
@CMSG_COMPUTED_HASH_PARAM = common dso_local global i32 0, align 4
@CMSG_TYPE_PARAM = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Expected E_INVALIDARG, got %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_data_msg_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_data_msg_get_param() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %7 = load i32, i32* @nop_stream_output, align 4
  store i32 %7, i32* %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %10 = load i32, i32* @CMSG_DATA, align 4
  %11 = call i32 @CryptMsgOpenToEncode(i32 %9, i32 0, i32 %10, i32* null, i32* null, %struct.TYPE_3__* null)
  store i32 %11, i32* %1, align 4
  store i64 0, i64* %2, align 8
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @CMSG_CONTENT_PARAM, align 4
  %14 = call i32 @CryptMsgGetParam(i32 %12, i32 %13, i32 0, i32* null, i64* %2)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 (...) @GetLastError()
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %16)
  store i64 0, i64* %2, align 8
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @CMSG_BARE_CONTENT_PARAM, align 4
  %20 = call i32 @CryptMsgGetParam(i32 %18, i32 %19, i32 0, i32* null, i64* %2)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i64 (...) @GetLastError()
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %22)
  store i64 0, i64* %2, align 8
  %24 = call i32 @SetLastError(i32 -559038737)
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @CMSG_ENCODED_SIGNER, align 4
  %27 = call i32 @CryptMsgGetParam(i32 %25, i32 %26, i32 0, i32* null, i64* %2)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %0
  %31 = call i64 (...) @GetLastError()
  %32 = load i64, i64* @CRYPT_E_INVALID_MSG_TYPE, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %30, %0
  %35 = phi i1 [ false, %0 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 (...) @GetLastError()
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = call i32 @SetLastError(i32 -559038737)
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @CMSG_COMPUTED_HASH_PARAM, align 4
  %42 = call i32 @CryptMsgGetParam(i32 %40, i32 %41, i32 0, i32* null, i64* %2)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %34
  %46 = call i64 (...) @GetLastError()
  %47 = load i64, i64* @CRYPT_E_INVALID_MSG_TYPE, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %45, %34
  %50 = phi i1 [ false, %34 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 (...) @GetLastError()
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* @CMSG_TYPE_PARAM, align 4
  %56 = call i32 @CryptMsgGetParam(i32 %54, i32 %55, i32 0, i32* null, i64* %2)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %49
  %60 = call i64 (...) @GetLastError()
  %61 = load i64, i64* @CRYPT_E_INVALID_MSG_TYPE, align 8
  %62 = icmp eq i64 %60, %61
  br label %63

63:                                               ; preds = %59, %49
  %64 = phi i1 [ false, %49 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = call i64 (...) @GetLastError()
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* %1, align 4
  %69 = call i32 @CryptMsgClose(i32 %68)
  %70 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %71 = load i32, i32* @CMSG_DATA, align 4
  %72 = call i32 @CryptMsgOpenToEncode(i32 %70, i32 0, i32 %71, i32* null, i32* null, %struct.TYPE_3__* %4)
  store i32 %72, i32* %1, align 4
  %73 = call i32 @SetLastError(i32 -559038737)
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* @CMSG_BARE_CONTENT_PARAM, align 4
  %76 = call i32 @CryptMsgGetParam(i32 %74, i32 %75, i32 0, i32* null, i64* %2)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %63
  %80 = call i64 (...) @GetLastError()
  %81 = load i64, i64* @E_INVALIDARG, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79, %63
  %84 = load i32, i32* %3, align 4
  %85 = call i64 @broken(i32 %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i1 [ true, %79 ], [ %86, %83 ]
  %89 = zext i1 %88 to i32
  %90 = call i64 (...) @GetLastError()
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %90)
  %92 = call i32 @SetLastError(i32 -559038737)
  %93 = load i32, i32* %1, align 4
  %94 = load i32, i32* @CMSG_CONTENT_PARAM, align 4
  %95 = call i32 @CryptMsgGetParam(i32 %93, i32 %94, i32 0, i32* null, i64* %2)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %87
  %99 = call i64 (...) @GetLastError()
  %100 = load i64, i64* @E_INVALIDARG, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98, %87
  %103 = load i32, i32* %3, align 4
  %104 = call i64 @broken(i32 %103)
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i1 [ true, %98 ], [ %105, %102 ]
  %108 = zext i1 %107 to i32
  %109 = call i64 (...) @GetLastError()
  %110 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %109)
  %111 = load i32, i32* %1, align 4
  %112 = call i32 @CryptMsgClose(i32 %111)
  ret void
}

declare dso_local i32 @CryptMsgOpenToEncode(i32, i32, i32, i32*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @CryptMsgGetParam(i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @CryptMsgClose(i32) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

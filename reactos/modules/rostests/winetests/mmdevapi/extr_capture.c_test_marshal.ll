; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_capture.c_test_marshal.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_capture.c_test_marshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dev = common dso_local global i32 0, align 4
@IID_IAudioClient = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Activation failed with %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"GetMixFormat failed: %08x\0A\00", align 1
@AUDCLNT_SHAREMODE_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Initialize failed: %08x\0A\00", align 1
@IID_IAudioCaptureClient = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"GetService failed: %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"CreateStreamOnHGlobal failed 0x%08x\0A\00", align 1
@MSHCTX_INPROC = common dso_local global i32 0, align 4
@MSHLFLAGS_NORMAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"CoMarshalInterface IAudioClient failed 0x%08x\0A\00", align 1
@ullZero = common dso_local global i32 0, align 4
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"CoUnmarshalInterface IAudioClient failed 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"CoMarshalInterface IAudioCaptureClient failed 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"CoUnmarshalInterface IAudioCaptureClient failed 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_marshal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_marshal() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @dev, align 4
  %9 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %10 = bitcast i32** %2 to i8**
  %11 = call i64 @IMMDevice_Activate(i32 %8, i32* @IID_IAudioClient, i32 %9, i32* null, i8** %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  br label %139

22:                                               ; preds = %0
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @IAudioClient_GetMixFormat(i32* %23, i32** %6)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @IAudioClient_Initialize(i32* %31, i32 %32, i32 0, i32 5000000, i32 0, i32* %33, i32* null)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @CoTaskMemFree(i32* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = bitcast i32** %4 to i8**
  %45 = call i64 @IAudioClient_GetService(i32* %43, i32* @IID_IAudioCaptureClient, i8** %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %22
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @IAudioClient_Release(i32* %56)
  br label %139

58:                                               ; preds = %22
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i64 @CreateStreamOnHGlobal(i32* null, i32 %59, i32** %1)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %65)
  %67 = load i32*, i32** %1, align 8
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* @MSHCTX_INPROC, align 4
  %70 = load i32, i32* @MSHLFLAGS_NORMAL, align 4
  %71 = call i64 @CoMarshalInterface(i32* %67, i32* @IID_IAudioClient, i32* %68, i32 %69, i32* null, i32 %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @S_OK, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %76)
  %78 = load i32*, i32** %1, align 8
  %79 = load i32, i32* @ullZero, align 4
  %80 = load i32, i32* @STREAM_SEEK_SET, align 4
  %81 = call i32 @IStream_Seek(i32* %78, i32 %79, i32 %80, i32* null)
  %82 = load i32*, i32** %1, align 8
  %83 = bitcast i32** %3 to i8**
  %84 = call i64 @CoUnmarshalInterface(i32* %82, i32* @IID_IAudioClient, i8** %83)
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @S_OK, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i64 %89)
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @S_OK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %58
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @IAudioClient_Release(i32* %95)
  br label %97

97:                                               ; preds = %94, %58
  %98 = load i32*, i32** %1, align 8
  %99 = load i32, i32* @ullZero, align 4
  %100 = load i32, i32* @STREAM_SEEK_SET, align 4
  %101 = call i32 @IStream_Seek(i32* %98, i32 %99, i32 %100, i32* null)
  %102 = load i32*, i32** %1, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* @MSHCTX_INPROC, align 4
  %105 = load i32, i32* @MSHLFLAGS_NORMAL, align 4
  %106 = call i64 @CoMarshalInterface(i32* %102, i32* @IID_IAudioCaptureClient, i32* %103, i32 %104, i32* null, i32 %105)
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i64 %111)
  %113 = load i32*, i32** %1, align 8
  %114 = load i32, i32* @ullZero, align 4
  %115 = load i32, i32* @STREAM_SEEK_SET, align 4
  %116 = call i32 @IStream_Seek(i32* %113, i32 %114, i32 %115, i32* null)
  %117 = load i32*, i32** %1, align 8
  %118 = bitcast i32** %5 to i8**
  %119 = call i64 @CoUnmarshalInterface(i32* %117, i32* @IID_IAudioCaptureClient, i8** %118)
  store i64 %119, i64* %7, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* @S_OK, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @ok(i32 %123, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i64 %124)
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* @S_OK, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %97
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @IAudioCaptureClient_Release(i32* %130)
  br label %132

132:                                              ; preds = %129, %97
  %133 = load i32*, i32** %1, align 8
  %134 = call i32 @IStream_Release(i32* %133)
  %135 = load i32*, i32** %2, align 8
  %136 = call i32 @IAudioClient_Release(i32* %135)
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @IAudioCaptureClient_Release(i32* %137)
  br label %139

139:                                              ; preds = %132, %55, %21
  ret void
}

declare dso_local i64 @IMMDevice_Activate(i32, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IAudioClient_GetMixFormat(i32*, i32**) #1

declare dso_local i64 @IAudioClient_Initialize(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i64 @IAudioClient_GetService(i32*, i32*, i8**) #1

declare dso_local i32 @IAudioClient_Release(i32*) #1

declare dso_local i64 @CreateStreamOnHGlobal(i32*, i32, i32**) #1

declare dso_local i64 @CoMarshalInterface(i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @IStream_Seek(i32*, i32, i32, i32*) #1

declare dso_local i64 @CoUnmarshalInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IAudioCaptureClient_Release(i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

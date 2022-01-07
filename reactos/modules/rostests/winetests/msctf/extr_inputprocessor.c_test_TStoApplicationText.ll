; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_TStoApplicationText.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_TStoApplicationText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_tm = common dso_local global i32 0, align 4
@IID_ITfSource = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to get IID_ITfSource for Context\0A\00", align 1
@IID_ITfTextEditSink = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to advise Sink\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to get sink cookie\0A\00", align 1
@tid = common dso_local global i32 0, align 4
@TF_ES_SYNC = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"RequestEditSession should have failed with %x not %x\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"hrSession should be %x not %x\0A\00", align 1
@TS_SD_READONLY = common dso_local global i64 0, align 8
@documentStatus = common dso_local global i64 0, align 8
@SINK_EXPECTED = common dso_local global i32 0, align 4
@test_ACP_GetStatus = common dso_local global i32 0, align 4
@TF_ES_READWRITE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"ITfContext_RequestEditSession failed\0A\00", align 1
@TS_E_READONLY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"Unexpected hrSession (%x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"GetStatus\00", align 1
@test_ACP_RequestLock = common dso_local global i32 0, align 4
@ACPSink = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"RequestLock\00", align 1
@test_DoEditSession = common dso_local global i32 0, align 4
@test_OnEndEdit = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"OnEndEdit\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"DoEditSession\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Failed to unadvise Sink\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_TStoApplicationText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_TStoApplicationText() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* null, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  %9 = load i32, i32* @g_tm, align 4
  %10 = call i32 @ITfThreadMgr_GetFocus(i32 %9, i32** %5)
  %11 = call i32 @EditSession_Constructor(i32** %3)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @ITfDocumentMgr_GetTop(i32* %12, i32** %4)
  %14 = call i32 @TextEditSink_Constructor(i32** %6)
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32** %7 to i32*
  %17 = call i64 @ITfContext_QueryInterface(i32* %15, i32* @IID_ITfSource, i32* %16)
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @SUCCEEDED(i64 %18)
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %0
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = call i64 @ITfSource_AdviseSink(i32* %24, i32* @IID_ITfTextEditSink, i32 %26, i32* %8)
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @SUCCEEDED(i64 %28)
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, -1
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %23, %0
  store i64 4277009102, i64* %2, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @tid, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @TF_ES_SYNC, align 4
  %40 = call i64 @ITfContext_RequestEditSession(i32* %36, i32 %37, i32* %38, i32 %39, i64* %2)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @E_INVALIDARG, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* @E_INVALIDARG, align 8
  %46 = load i64, i64* %1, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64 %45, i64 %46)
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @E_FAIL, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* @E_FAIL, align 8
  %53 = load i64, i64* %2, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %52, i64 %53)
  %55 = load i64, i64* @TS_SD_READONLY, align 8
  store i64 %55, i64* @documentStatus, align 8
  store i64 4277009102, i64* %2, align 8
  %56 = load i32, i32* @SINK_EXPECTED, align 4
  store i32 %56, i32* @test_ACP_GetStatus, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @tid, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @TF_ES_SYNC, align 4
  %61 = load i32, i32* @TF_ES_READWRITE, align 4
  %62 = or i32 %60, %61
  %63 = call i64 @ITfContext_RequestEditSession(i32* %57, i32 %58, i32* %59, i32 %62, i64* %2)
  store i64 %63, i64* %1, align 8
  %64 = load i64, i64* %1, align 8
  %65 = call i32 @SUCCEEDED(i64 %64)
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i64, i64* %2, align 8
  %68 = load i64, i64* @TS_E_READONLY, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %2, align 8
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %71)
  %73 = call i32 @sink_check_ok(i32* @test_ACP_GetStatus, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i64 0, i64* @documentStatus, align 8
  %74 = load i32, i32* @SINK_EXPECTED, align 4
  store i32 %74, i32* @test_ACP_RequestLock, align 4
  %75 = load i32, i32* @ACPSink, align 4
  %76 = load i64, i64* @documentStatus, align 8
  %77 = call i32 @ITextStoreACPSink_OnStatusChange(i32 %75, i64 %76)
  %78 = call i32 @sink_check_ok(i32* @test_ACP_RequestLock, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %79 = load i32, i32* @SINK_EXPECTED, align 4
  store i32 %79, i32* @test_ACP_GetStatus, align 4
  %80 = load i32, i32* @SINK_EXPECTED, align 4
  store i32 %80, i32* @test_ACP_RequestLock, align 4
  %81 = load i32, i32* @SINK_EXPECTED, align 4
  store i32 %81, i32* @test_DoEditSession, align 4
  store i64 4277009102, i64* %2, align 8
  %82 = load i32, i32* @SINK_EXPECTED, align 4
  store i32 %82, i32* @test_OnEndEdit, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @tid, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* @TF_ES_SYNC, align 4
  %87 = load i32, i32* @TF_ES_READWRITE, align 4
  %88 = or i32 %86, %87
  %89 = call i64 @ITfContext_RequestEditSession(i32* %83, i32 %84, i32* %85, i32 %88, i64* %2)
  store i64 %89, i64* %1, align 8
  %90 = load i64, i64* %1, align 8
  %91 = call i32 @SUCCEEDED(i64 %90)
  %92 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %93 = call i32 @sink_check_ok(i32* @test_OnEndEdit, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %94 = call i32 @sink_check_ok(i32* @test_DoEditSession, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %95 = call i32 @sink_check_ok(i32* @test_ACP_GetStatus, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i64, i64* %2, align 8
  %97 = icmp eq i64 %96, 3735931646
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %2, align 8
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %99)
  %101 = load i32*, i32** %7, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %35
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @ITfSource_UnadviseSink(i32* %104, i32 %105)
  store i64 %106, i64* %1, align 8
  %107 = load i64, i64* %1, align 8
  %108 = call i32 @SUCCEEDED(i64 %107)
  %109 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @ITfSource_Release(i32* %110)
  br label %112

112:                                              ; preds = %103, %35
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @ITfTextEditSink_Release(i32* %113)
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @ITfContext_Release(i32* %115)
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @ITfDocumentMgr_Release(i32* %117)
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @ITfEditSession_Release(i32* %119)
  ret void
}

declare dso_local i32 @ITfThreadMgr_GetFocus(i32, i32**) #1

declare dso_local i32 @EditSession_Constructor(i32**) #1

declare dso_local i32 @ITfDocumentMgr_GetTop(i32*, i32**) #1

declare dso_local i32 @TextEditSink_Constructor(i32**) #1

declare dso_local i64 @ITfContext_QueryInterface(i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i64 @ITfSource_AdviseSink(i32*, i32*, i32, i32*) #1

declare dso_local i64 @ITfContext_RequestEditSession(i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @sink_check_ok(i32*, i8*) #1

declare dso_local i32 @ITextStoreACPSink_OnStatusChange(i32, i64) #1

declare dso_local i64 @ITfSource_UnadviseSink(i32*, i32) #1

declare dso_local i32 @ITfSource_Release(i32*) #1

declare dso_local i32 @ITfTextEditSink_Release(i32*) #1

declare dso_local i32 @ITfContext_Release(i32*) #1

declare dso_local i32 @ITfDocumentMgr_Release(i32*) #1

declare dso_local i32 @ITfEditSession_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

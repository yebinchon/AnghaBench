; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_ThreadMgrAdviseSinks.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_ThreadMgrAdviseSinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_tm = common dso_local global i32 0, align 4
@IID_ITfSource = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to get IID_ITfSource for ThreadMgr\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@tmSinkRefCount = common dso_local global i32 0, align 4
@tmSinkCookie = common dso_local global i64 0, align 8
@IID_ITfThreadMgrEventSink = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to Advise ITfThreadMgrEventSink\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to get sink cookie\0A\00", align 1
@IID_ITfKeyTraceEventSink = common dso_local global i32 0, align 4
@TfKeyTraceEventSink = common dso_local global i32 0, align 4
@key_trace_sink_cookie = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to Advise ITfKeyTraceEventSink\0A\00", align 1
@IID_ITfUIElementSink = common dso_local global i32 0, align 4
@TfUIElementSink = common dso_local global i32 0, align 4
@ui_element_sink_cookie = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to Advise ITfUIElementSink\0A\00", align 1
@IID_ITfInputProcessorProfileActivationSink = common dso_local global i32 0, align 4
@TfInputProcessorProfileActivationSink = common dso_local global i32 0, align 4
@profile_activation_sink_cookie = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [57 x i8] c"Failed to Advise ITfInputProcessorProfileActivationSink\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ThreadMgrAdviseSinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ThreadMgrAdviseSinks() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  %4 = load i32, i32* @g_tm, align 4
  %5 = bitcast i32** %1 to i32*
  %6 = call i64 @ITfThreadMgr_QueryInterface(i32 %4, i32* @IID_ITfSource, i32* %5)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @SUCCEEDED(i64 %7)
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %1, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %63

13:                                               ; preds = %0
  %14 = call i64 @ThreadMgrEventSink_Constructor(i32** %3)
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %2, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* %2, align 8
  %22 = call i64 @FAILED(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %63

25:                                               ; preds = %13
  store i32 1, i32* @tmSinkRefCount, align 4
  store i64 0, i64* @tmSinkCookie, align 8
  %26 = load i32*, i32** %1, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @ITfSource_AdviseSink(i32* %26, i32* @IID_ITfThreadMgrEventSink, i32* %27, i64* @tmSinkCookie)
  store i64 %28, i64* %2, align 8
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i64, i64* @tmSinkCookie, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 2, i32* @tmSinkRefCount, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @IUnknown_Release(i32* %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i64 @ITfSource_AdviseSink(i32* %40, i32* @IID_ITfKeyTraceEventSink, i32* @TfKeyTraceEventSink, i64* @key_trace_sink_cookie)
  store i64 %41, i64* %2, align 8
  %42 = load i64, i64* %2, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32*, i32** %1, align 8
  %48 = call i64 @ITfSource_AdviseSink(i32* %47, i32* @IID_ITfUIElementSink, i32* @TfUIElementSink, i64* @ui_element_sink_cookie)
  store i64 %48, i64* %2, align 8
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %54 = load i32*, i32** %1, align 8
  %55 = call i64 @ITfSource_AdviseSink(i32* %54, i32* @IID_ITfInputProcessorProfileActivationSink, i32* @TfInputProcessorProfileActivationSink, i64* @profile_activation_sink_cookie)
  store i64 %55, i64* %2, align 8
  %56 = load i64, i64* %2, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @ITfSource_Release(i32* %61)
  br label %63

63:                                               ; preds = %25, %24, %12
  ret void
}

declare dso_local i64 @ITfThreadMgr_QueryInterface(i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i64 @ThreadMgrEventSink_Constructor(i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @ITfSource_AdviseSink(i32*, i32*, i32*, i64*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @ITfSource_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_ThreadMgrUnadviseSinks.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_ThreadMgrUnadviseSinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_tm = common dso_local global i32 0, align 4
@IID_ITfSource = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to get IID_ITfSource for ThreadMgr\0A\00", align 1
@tmSinkRefCount = common dso_local global i32 0, align 4
@tmSinkCookie = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to unadvise ITfThreadMgrEventSink\0A\00", align 1
@key_trace_sink_cookie = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to unadvise ITfKeyTraceEventSink\0A\00", align 1
@ui_element_sink_cookie = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to unadvise ITfUIElementSink\0A\00", align 1
@profile_activation_sink_cookie = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"Failed to unadvise ITfInputProcessorProfileActivationSink\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ThreadMgrUnadviseSinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ThreadMgrUnadviseSinks() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  %3 = load i32, i32* @g_tm, align 4
  %4 = bitcast i32** %1 to i32*
  %5 = call i64 @ITfThreadMgr_QueryInterface(i32 %3, i32* @IID_ITfSource, i32* %4)
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i32 @SUCCEEDED(i64 %6)
  %8 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %47

12:                                               ; preds = %0
  store i32 1, i32* @tmSinkRefCount, align 4
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* @tmSinkCookie, align 4
  %15 = call i64 @ITfSource_UnadviseSink(i32* %13, i32 %14)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %1, align 8
  %22 = load i32, i32* @key_trace_sink_cookie, align 4
  %23 = call i64 @ITfSource_UnadviseSink(i32* %21, i32 %22)
  store i64 %23, i64* %2, align 8
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32*, i32** %1, align 8
  %30 = load i32, i32* @ui_element_sink_cookie, align 4
  %31 = call i64 @ITfSource_UnadviseSink(i32* %29, i32 %30)
  store i64 %31, i64* %2, align 8
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* @profile_activation_sink_cookie, align 4
  %39 = call i64 @ITfSource_UnadviseSink(i32* %37, i32 %38)
  store i64 %39, i64* %2, align 8
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @ITfSource_Release(i32* %45)
  br label %47

47:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @ITfThreadMgr_QueryInterface(i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i64 @ITfSource_UnadviseSink(i32*, i32) #1

declare dso_local i32 @ITfSource_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

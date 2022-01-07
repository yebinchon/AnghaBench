; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_DocumentMgrAdviseSinks.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_DocumentMgrAdviseSinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_dm = common dso_local global i32 0, align 4
@IID_ITfSource = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Failed to get IID_ITfSource for DocumentMgr\0A\00", align 1
@dmSinkCookie = common dso_local global i64 0, align 8
@IID_ITfTransitoryExtensionSink = common dso_local global i32 0, align 4
@TfTransitoryExtensionSink = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to Advise Sink\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DocumentMgrAdviseSinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DocumentMgrAdviseSinks() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @g_dm, align 4
  %4 = bitcast i32** %1 to i8**
  %5 = call i64 @ITfDocumentMgr_QueryInterface(i32 %3, i32* @IID_ITfSource, i8** %4)
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @dmSinkCookie, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = call i64 @ITfSource_AdviseSink(i32* %11, i32* @IID_ITfTransitoryExtensionSink, i32* @TfTransitoryExtensionSink, i64* @dmSinkCookie)
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @ITfSource_Release(i32* %18)
  ret void
}

declare dso_local i64 @ITfDocumentMgr_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @ITfSource_AdviseSink(i32*, i32*, i32*, i64*) #1

declare dso_local i32 @ITfSource_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

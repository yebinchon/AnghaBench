; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_KeystrokeMgr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_KeystrokeMgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8, i32 }

@g_tm = common dso_local global i32 0, align 4
@IID_ITfKeystrokeMgr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to get IID_ITfKeystrokeMgr for ThreadMgr\0A\00", align 1
@TF_MOD_SHIFT = common dso_local global i32 0, align 4
@SINK_EXPECTED = common dso_local global i32 0, align 4
@test_KEV_OnSetFocus = common dso_local global i32 0, align 4
@tid = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"ITfKeystrokeMgr_AdviseKeyEventSink failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"KeyEventSink_OnSetFocus\00", align 1
@CONNECT_E_ADVISELIMIT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"Wrong return, expected CONNECT_E_ADVISELIMIT\0A\00", align 1
@cid = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Wrong return, expected E_INVALIDARG\0A\00", align 1
@CLSID_PreservedKey = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"ITfKeystrokeMgr_PreserveKey improperly succeeded\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"ITfKeystrokeMgr_PreserveKey failed\0A\00", align 1
@TF_E_ALREADY_EXISTS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [39 x i8] c"ITfKeystrokeMgr_IsPreservedKey failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"misreporting preserved key\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"ITfKeystrokeMgr_UnpreserveKey failed\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@CONNECT_E_NOCONNECTION = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [52 x i8] c"ITfKeystrokeMgr_UnpreserveKey improperly succeeded\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"ITfKeystrokeMgr_UnadviseKeyEventSink failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_KeystrokeMgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_KeystrokeMgr() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %5, align 8
  %6 = call i32 @KeyEventSink_Constructor(i32** %5)
  %7 = load i32, i32* @g_tm, align 4
  %8 = bitcast i32** %1 to i32*
  %9 = call i64 @ITfThreadMgr_QueryInterface(i32 %7, i32* @IID_ITfKeystrokeMgr, i32* %8)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @SUCCEEDED(i64 %10)
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i8 65, i8* %13, align 4
  %14 = load i32, i32* @TF_MOD_SHIFT, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @SINK_EXPECTED, align 4
  store i32 %16, i32* @test_KEV_OnSetFocus, align 4
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @tid, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* @TRUE, align 8
  %21 = call i64 @ITfKeystrokeMgr_AdviseKeyEventSink(i32* %17, i32 %18, i32* %19, i64 %20)
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @SUCCEEDED(i64 %22)
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @sink_check_ok(i32* @test_KEV_OnSetFocus, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32*, i32** %1, align 8
  %27 = load i32, i32* @tid, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* @TRUE, align 8
  %30 = call i64 @ITfKeystrokeMgr_AdviseKeyEventSink(i32* %26, i32 %27, i32* %28, i64 %29)
  store i64 %30, i64* %2, align 8
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* @CONNECT_E_ADVISELIMIT, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32*, i32** %1, align 8
  %37 = load i32, i32* @cid, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* @TRUE, align 8
  %40 = call i64 @ITfKeystrokeMgr_AdviseKeyEventSink(i32* %36, i32 %37, i32* %38, i64 %39)
  store i64 %40, i64* %2, align 8
  %41 = load i64, i64* %2, align 8
  %42 = load i64, i64* @E_INVALIDARG, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32*, i32** %1, align 8
  %47 = call i64 @ITfKeystrokeMgr_PreserveKey(i32* %46, i32 0, i32* @CLSID_PreservedKey, %struct.TYPE_5__* %3, i32* null, i32 0)
  store i64 %47, i64* %2, align 8
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @E_INVALIDARG, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32*, i32** %1, align 8
  %54 = load i32, i32* @tid, align 4
  %55 = call i64 @ITfKeystrokeMgr_PreserveKey(i32* %53, i32 %54, i32* @CLSID_PreservedKey, %struct.TYPE_5__* %3, i32* null, i32 0)
  store i64 %55, i64* %2, align 8
  %56 = load i64, i64* %2, align 8
  %57 = call i32 @SUCCEEDED(i64 %56)
  %58 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32*, i32** %1, align 8
  %60 = load i32, i32* @tid, align 4
  %61 = call i64 @ITfKeystrokeMgr_PreserveKey(i32* %59, i32 %60, i32* @CLSID_PreservedKey, %struct.TYPE_5__* %3, i32* null, i32 0)
  store i64 %61, i64* %2, align 8
  %62 = load i64, i64* %2, align 8
  %63 = load i64, i64* @TF_E_ALREADY_EXISTS, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i64, i64* @FALSE, align 8
  store i64 %67, i64* %4, align 8
  %68 = load i32*, i32** %1, align 8
  %69 = call i64 @ITfKeystrokeMgr_IsPreservedKey(i32* %68, i32* @CLSID_PreservedKey, %struct.TYPE_5__* %3, i64* %4)
  store i64 %69, i64* %2, align 8
  %70 = load i64, i64* %2, align 8
  %71 = load i64, i64* @S_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %75 = load i64, i64* %2, align 8
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %0
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @TRUE, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %84

84:                                               ; preds = %78, %0
  %85 = load i32*, i32** %1, align 8
  %86 = call i64 @ITfKeystrokeMgr_UnpreserveKey(i32* %85, i32* @CLSID_PreservedKey, %struct.TYPE_5__* %3)
  store i64 %86, i64* %2, align 8
  %87 = load i64, i64* %2, align 8
  %88 = call i32 @SUCCEEDED(i64 %87)
  %89 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %90 = load i32*, i32** %1, align 8
  %91 = call i64 @ITfKeystrokeMgr_IsPreservedKey(i32* %90, i32* @CLSID_PreservedKey, %struct.TYPE_5__* %3, i64* %4)
  store i64 %91, i64* %2, align 8
  %92 = load i64, i64* %2, align 8
  %93 = load i64, i64* @S_FALSE, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %97 = load i64, i64* %2, align 8
  %98 = load i64, i64* @S_FALSE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %84
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @FALSE, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %106

106:                                              ; preds = %100, %84
  %107 = load i32*, i32** %1, align 8
  %108 = call i64 @ITfKeystrokeMgr_UnpreserveKey(i32* %107, i32* @CLSID_PreservedKey, %struct.TYPE_5__* %3)
  store i64 %108, i64* %2, align 8
  %109 = load i64, i64* %2, align 8
  %110 = load i64, i64* @CONNECT_E_NOCONNECTION, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  %114 = load i32*, i32** %1, align 8
  %115 = load i32, i32* @tid, align 4
  %116 = call i64 @ITfKeystrokeMgr_UnadviseKeyEventSink(i32* %114, i32 %115)
  store i64 %116, i64* %2, align 8
  %117 = load i64, i64* %2, align 8
  %118 = call i32 @SUCCEEDED(i64 %117)
  %119 = call i32 @ok(i32 %118, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @ITfKeystrokeMgr_Release(i32* %120)
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @ITfKeyEventSink_Release(i32* %122)
  ret void
}

declare dso_local i32 @KeyEventSink_Constructor(i32**) #1

declare dso_local i64 @ITfThreadMgr_QueryInterface(i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i64 @ITfKeystrokeMgr_AdviseKeyEventSink(i32*, i32, i32*, i64) #1

declare dso_local i32 @sink_check_ok(i32*, i8*) #1

declare dso_local i64 @ITfKeystrokeMgr_PreserveKey(i32*, i32, i32*, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local i64 @ITfKeystrokeMgr_IsPreservedKey(i32*, i32*, %struct.TYPE_5__*, i64*) #1

declare dso_local i64 @ITfKeystrokeMgr_UnpreserveKey(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @ITfKeystrokeMgr_UnadviseKeyEventSink(i32*, i32) #1

declare dso_local i32 @ITfKeystrokeMgr_Release(i32*) #1

declare dso_local i32 @ITfKeyEventSink_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

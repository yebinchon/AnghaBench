; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_init_TCPIP_provider.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_init_TCPIP_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64*, i32 }

@CLSID_DirectPlayLobby = common dso_local global i32 0, align 4
@CLSCTX_ALL = common dso_local global i32 0, align 4
@IID_IDirectPlayLobby3A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"CCI of CLSID_DirectPlayLobby / IID_IDirectPlayLobby3A failed\0A\00", align 1
@DPAID_ServiceProvider = common dso_local global i32 0, align 4
@DPSPGUID_TCPIP = common dso_local global i32 0, align 4
@DPAID_INet = common dso_local global i32 0, align 4
@DPAID_INetPort = common dso_local global i32 0, align 4
@DPERR_BUFFERTOOSMALL = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@DP_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64)* @init_TCPIP_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_TCPIP_provider(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [3 x %struct.TYPE_3__], align 16
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64* null, i64** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @CLSCTX_ALL, align 4
  %13 = bitcast i32** %10 to i64**
  %14 = call i64 @CoCreateInstance(i32* @CLSID_DirectPlayLobby, i32* null, i32 %12, i32* @IID_IDirectPlayLobby3A, i64** %13)
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = call i32 @SUCCEEDED(i64 %15)
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %11, align 8
  %19 = call i64 @FAILED(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %86

22:                                               ; preds = %3
  %23 = load i32, i32* @DPAID_ServiceProvider, align 4
  %24 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 16
  %26 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 4, i32* %27, align 16
  %28 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i64* bitcast (i32* @DPSPGUID_TCPIP to i64*), i64** %29, align 8
  %30 = load i32, i32* @DPAID_INet, align 4
  %31 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @lstrlenA(i64 %33)
  %35 = add nsw i32 %34, 1
  %36 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %5, align 8
  %39 = inttoptr i64 %38 to i64*
  %40 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i64* %39, i64** %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %22
  %45 = load i32, i32* @DPAID_INetPort, align 4
  %46 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 16
  %48 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 8, i32* %49, align 16
  %50 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i64* %6, i64** %51, align 8
  br label %52

52:                                               ; preds = %44, %22
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %55 = call i64 @IDirectPlayLobby_CreateCompoundAddress(i32* %53, %struct.TYPE_3__* %54, i32 2, i64* null, i32* %9)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* @DPERR_BUFFERTOOSMALL, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @checkHR(i64 %56, i64 %57)
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @DPERR_BUFFERTOOSMALL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %52
  %63 = call i32 (...) @GetProcessHeap()
  %64 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i64* @HeapAlloc(i32 %63, i32 %64, i32 %65)
  store i64* %66, i64** %8, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %69 = load i64*, i64** %8, align 8
  %70 = call i64 @IDirectPlayLobby_CreateCompoundAddress(i32* %67, %struct.TYPE_3__* %68, i32 2, i64* %69, i32* %9)
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* @DP_OK, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @checkHR(i64 %71, i64 %72)
  br label %74

74:                                               ; preds = %62, %52
  %75 = load i32*, i32** %4, align 8
  %76 = load i64*, i64** %8, align 8
  %77 = call i64 @IDirectPlayX_InitializeConnection(i32* %75, i64* %76, i32 0)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* @DP_OK, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @checkHR(i64 %78, i64 %79)
  %81 = call i32 (...) @GetProcessHeap()
  %82 = load i64*, i64** %8, align 8
  %83 = call i32 @HeapFree(i32 %81, i32 0, i64* %82)
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @IDirectPlayLobby_Release(i32* %84)
  br label %86

86:                                               ; preds = %74, %21
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i64**) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @lstrlenA(i64) #1

declare dso_local i64 @IDirectPlayLobby_CreateCompoundAddress(i32*, %struct.TYPE_3__*, i32, i64*, i32*) #1

declare dso_local i32 @checkHR(i64, i64) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @IDirectPlayX_InitializeConnection(i32*, i64*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i32 @IDirectPlayLobby_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

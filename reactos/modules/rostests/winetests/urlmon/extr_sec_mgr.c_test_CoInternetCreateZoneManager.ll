; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_CoInternetCreateZoneManager.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_CoInternetCreateZoneManager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"simple zone manager tests...\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"CoInternetCreateZoneManager result: 0x%x\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"got 0x%x with %p (expected Success)\0A\00", align 1
@IID_IInternetZoneManager = common dso_local global i32 0, align 4
@IID_IInternetZoneManagerEx = common dso_local global i32 0, align 4
@IID_IInternetZoneManagerEx2 = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"got 0x%x (expected S_OK)\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"InternetZoneManagerEx2 not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"InternetZoneManagerEx not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CoInternetCreateZoneManager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CoInternetCreateZoneManager() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %4 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %5 = call i64 @pCoInternetCreateZoneManager(i32* null, i32** %1, i32 0)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %3, align 8
  %11 = call i32 (i32, i8*, i64, ...) @ok(i32 %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %10)
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @FAILED(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  br label %91

16:                                               ; preds = %0
  %17 = load i32*, i32** %1, align 8
  %18 = bitcast i32** %2 to i8**
  %19 = call i64 @IInternetZoneManager_QueryInterface(i32* %17, i32* @IID_IUnknown, i8** %18)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @SUCCEEDED(i64 %20)
  %22 = load i64, i64* %3, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 (i32, i8*, i64, ...) @ok(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %22, i32* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @IUnknown_Release(i32* %28)
  br label %30

30:                                               ; preds = %27, %16
  %31 = load i32*, i32** %1, align 8
  %32 = bitcast i32** %2 to i8**
  %33 = call i64 @IInternetZoneManager_QueryInterface(i32* %31, i32* @IID_IInternetZoneManager, i8** %32)
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @SUCCEEDED(i64 %34)
  %36 = load i64, i64* %3, align 8
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 (i32, i8*, i64, ...) @ok(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %36, i32* %37)
  %39 = load i32*, i32** %2, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @IUnknown_Release(i32* %42)
  br label %44

44:                                               ; preds = %41, %30
  %45 = load i32*, i32** %1, align 8
  %46 = bitcast i32** %2 to i8**
  %47 = call i64 @IInternetZoneManager_QueryInterface(i32* %45, i32* @IID_IInternetZoneManagerEx, i8** %46)
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @SUCCEEDED(i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %44
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @IUnknown_Release(i32* %52)
  %54 = load i32*, i32** %1, align 8
  %55 = bitcast i32** %2 to i8**
  %56 = call i64 @IInternetZoneManager_QueryInterface(i32* %54, i32* @IID_IInternetZoneManagerEx2, i8** %55)
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @S_OK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %51
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @E_NOINTERFACE, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @broken(i32 %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %60, %51
  %68 = phi i1 [ true, %51 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %3, align 8
  %71 = call i32 (i32, i8*, i64, ...) @ok(i32 %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  %72 = load i32*, i32** %2, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @IUnknown_Release(i32* %75)
  br label %79

77:                                               ; preds = %67
  %78 = call i32 @win_skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  br label %82

80:                                               ; preds = %44
  %81 = call i32 @win_skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %79
  %83 = load i32*, i32** %1, align 8
  %84 = call i64 @IInternetZoneManager_Release(i32* %83)
  store i64 %84, i64* %3, align 8
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* @S_OK, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %3, align 8
  %90 = call i32 (i32, i8*, i64, ...) @ok(i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %89)
  br label %91

91:                                               ; preds = %82, %15
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @pCoInternetCreateZoneManager(i32*, i32**, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IInternetZoneManager_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i64 @IInternetZoneManager_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

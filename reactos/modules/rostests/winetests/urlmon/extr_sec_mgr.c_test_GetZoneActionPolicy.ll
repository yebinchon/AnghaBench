; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_GetZoneActionPolicy.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_GetZoneActionPolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@URLACTION_CREDENTIALS_USE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"testing GetZoneActionPolixy...\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"CoInternetCreateZoneManager failed: %08x\0A\00", align 1
@URLZONEREG_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"GetZoneActionPolicy failed: %08x\0A\00", align 1
@URLPOLICY_CREDENTIALS_SILENT_LOGON_OK = common dso_local global i64 0, align 8
@URLPOLICY_CREDENTIALS_MUST_PROMPT_USER = common dso_local global i64 0, align 8
@URLPOLICY_CREDENTIALS_CONDITIONAL_PROMPT = common dso_local global i64 0, align 8
@URLPOLICY_CREDENTIALS_ANONYMOUS_ONLY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"unexpected policy=%d\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [57 x i8] c"GetZoneActionPolicy failed: %08x, expected E_INVALIDARG\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"(0x%x) got 0x%x (expected E_FAIL)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetZoneActionPolicy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetZoneActionPolicy() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [32 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  %5 = load i64, i64* @URLACTION_CREDENTIALS_USE, align 8
  store i64 %5, i64* %4, align 8
  %6 = call i32 @trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %7 = call i64 @pCoInternetCreateZoneManager(i32* null, i32** %1, i32 0)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %3, align 8
  %13 = call i32 (i32, i8*, i64, ...) @ok(i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @FAILED(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  br label %115

18:                                               ; preds = %0
  %19 = load i32*, i32** %1, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %22 = load i32, i32* @URLZONEREG_DEFAULT, align 4
  %23 = call i64 @IInternetZoneManager_GetZoneActionPolicy(i32* %19, i32 3, i64 %20, i32* %21, i32 8, i32 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %3, align 8
  %29 = call i32 (i32, i8*, i64, ...) @ok(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %31 = bitcast i32* %30 to i64*
  %32 = load i64, i64* %31, align 16
  %33 = load i64, i64* @URLPOLICY_CREDENTIALS_SILENT_LOGON_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %53, label %35

35:                                               ; preds = %18
  %36 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %37 = bitcast i32* %36 to i64*
  %38 = load i64, i64* %37, align 16
  %39 = load i64, i64* @URLPOLICY_CREDENTIALS_MUST_PROMPT_USER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %43 = bitcast i32* %42 to i64*
  %44 = load i64, i64* %43, align 16
  %45 = load i64, i64* @URLPOLICY_CREDENTIALS_CONDITIONAL_PROMPT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %49 = bitcast i32* %48 to i64*
  %50 = load i64, i64* %49, align 16
  %51 = load i64, i64* @URLPOLICY_CREDENTIALS_ANONYMOUS_ONLY, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %47, %41, %35, %18
  %54 = phi i1 [ true, %41 ], [ true, %35 ], [ true, %18 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %57 = bitcast i32* %56 to i64*
  %58 = load i64, i64* %57, align 16
  %59 = call i32 (i32, i8*, i64, ...) @ok(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i32, i32* @URLZONEREG_DEFAULT, align 4
  %63 = call i64 @IInternetZoneManager_GetZoneActionPolicy(i32* %60, i32 3, i64 %61, i32* null, i32 8, i32 %62)
  store i64 %63, i64* %3, align 8
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @E_INVALIDARG, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %3, align 8
  %69 = call i32 (i32, i8*, i64, ...) @ok(i32 %67, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %68)
  %70 = load i32*, i32** %1, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %73 = load i32, i32* @URLZONEREG_DEFAULT, align 4
  %74 = call i64 @IInternetZoneManager_GetZoneActionPolicy(i32* %70, i32 3, i64 %71, i32* %72, i32 2, i32 %73)
  store i64 %74, i64* %3, align 8
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* @E_INVALIDARG, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %3, align 8
  %80 = call i32 (i32, i8*, i64, ...) @ok(i32 %78, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %79)
  %81 = load i32*, i32** %1, align 8
  %82 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %83 = load i32, i32* @URLZONEREG_DEFAULT, align 4
  %84 = call i64 @IInternetZoneManager_GetZoneActionPolicy(i32* %81, i32 3, i64 8191, i32* %82, i32 8, i32 %83)
  store i64 %84, i64* %3, align 8
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* @E_FAIL, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %53
  %89 = load i64, i64* %3, align 8
  %90 = load i32, i32* @ERROR_NOT_FOUND, align 4
  %91 = call i64 @HRESULT_FROM_WIN32(i32 %90)
  %92 = icmp eq i64 %89, %91
  %93 = zext i1 %92 to i32
  %94 = call i64 @broken(i32 %93)
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %88, %53
  %97 = phi i1 [ true, %53 ], [ %95, %88 ]
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* %3, align 8
  %101 = call i32 (i32, i8*, i64, ...) @ok(i32 %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %99, i64 %100)
  %102 = load i32*, i32** %1, align 8
  %103 = load i64, i64* %4, align 8
  %104 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %105 = load i32, i32* @URLZONEREG_DEFAULT, align 4
  %106 = call i64 @IInternetZoneManager_GetZoneActionPolicy(i32* %102, i32 13, i64 %103, i32* %104, i32 8, i32 %105)
  store i64 %106, i64* %3, align 8
  %107 = load i64, i64* %3, align 8
  %108 = load i64, i64* @E_INVALIDARG, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %3, align 8
  %112 = call i32 (i32, i8*, i64, ...) @ok(i32 %110, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %111)
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @IInternetZoneManager_Release(i32* %113)
  br label %115

115:                                              ; preds = %96, %17
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @pCoInternetCreateZoneManager(i32*, i32**, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IInternetZoneManager_GetZoneActionPolicy(i32*, i32, i64, i32*, i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i32 @IInternetZoneManager_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

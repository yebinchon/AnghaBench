; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_activex.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_activex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CONFIRMSAFETY = type { i64, i32*, i64 }

@url1 = common dso_local global i32 0, align 4
@URLACTION_ACTIVEX_RUN = common dso_local global i32 0, align 4
@CLSID_TestActiveX = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"ProcessUrlAction(URLACTION_ACTIVEX_RUN) failed: %08x\0A\00", align 1
@URLPOLICY_ALLOW = common dso_local global i32 0, align 4
@URLPOLICY_DISALLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"policy = %x\0A\00", align 1
@GUID_CUSTOM_CONFIRMOBJECTSAFETY = common dso_local global i32 0, align 4
@ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"QueryCusromPolicy failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_activex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_activex(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.CONFIRMSAFETY, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 -559038737, i32* %3, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @url1, align 4
  %10 = load i32, i32* @URLACTION_ACTIVEX_RUN, align 4
  %11 = call i32 @IInternetSecurityManager_ProcessUrlAction(i32* %8, i32 %9, i32 %10, i32* %3, i32 4, i32* bitcast (i64* @CLSID_TestActiveX to i32*), i32 4, i32 0, i32 0)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @S_OK, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @URLPOLICY_ALLOW, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @URLPOLICY_DISALLOW, align 4
  %24 = icmp eq i32 %22, %23
  br label %25

25:                                               ; preds = %21, %1
  %26 = phi i1 [ true, %1 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i64, i64* @CLSID_TestActiveX, align 8
  %31 = getelementptr inbounds %struct.CONFIRMSAFETY, %struct.CONFIRMSAFETY* %5, i32 0, i32 2
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.CONFIRMSAFETY, %struct.CONFIRMSAFETY* %5, i32 0, i32 1
  store i32* inttoptr (i64 3735928559 to i32*), i32** %32, align 8
  %33 = getelementptr inbounds %struct.CONFIRMSAFETY, %struct.CONFIRMSAFETY* %5, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @url1, align 4
  %36 = bitcast %struct.CONFIRMSAFETY* %5 to i32*
  %37 = call i32 @IInternetSecurityManager_QueryCustomPolicy(i32* %34, i32 %35, i32* @GUID_CUSTOM_CONFIRMOBJECTSAFETY, i32** %6, i32* %4, i32* %36, i32 24, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @ERROR_NOT_FOUND, align 4
  %40 = call i32 @HRESULT_FROM_WIN32(i32 %39)
  %41 = icmp eq i32 %38, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  ret void
}

declare dso_local i32 @IInternetSecurityManager_ProcessUrlAction(i32*, i32, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IInternetSecurityManager_QueryCustomPolicy(i32*, i32, i32*, i32**, i32*, i32*, i32, i32) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

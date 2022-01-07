; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_files.c_test_create_manager.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_files.c_test_create_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_BackgroundCopyManager = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@IID_IBackgroundCopyManager = common dso_local global i32 0, align 4
@ERROR_SERVICE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Needed Service is disabled\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@test_displayName = common dso_local global i32 0, align 4
@BG_JOB_TYPE_DOWNLOAD = common dso_local global i32 0, align 4
@test_localNameA = common dso_local global i32 0, align 4
@test_remoteNameA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"AddFile() with file:// protocol failed. Tests will be skipped.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @test_create_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_create_manager() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* null, i32** %3, align 8
  %6 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %7 = bitcast i32** %3 to i8**
  %8 = call i64 @CoCreateInstance(i32* @CLSID_BackgroundCopyManager, i32* null, i32 %6, i32* @IID_IBackgroundCopyManager, i8** %7)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i32, i32* @ERROR_SERVICE_DISABLED, align 4
  %11 = call i64 @HRESULT_FROM_WIN32(i32 %10)
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = call i32 @win_skip(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %2, align 8
  store i64 %15, i64* %1, align 8
  br label %46

16:                                               ; preds = %0
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @test_displayName, align 4
  %23 = load i32, i32* @BG_JOB_TYPE_DOWNLOAD, align 4
  %24 = call i64 @IBackgroundCopyManager_CreateJob(i32* %21, i32 %22, i32 %23, i32* %5, i32** %4)
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @test_localNameA, align 4
  %31 = load i32, i32* @test_remoteNameA, align 4
  %32 = call i64 @addFileHelper(i32* %29, i32 %30, i32 %31)
  store i64 %32, i64* %2, align 8
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @win_skip(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @IBackgroundCopyJob_Release(i32* %39)
  br label %41

41:                                               ; preds = %38, %20
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @IBackgroundCopyManager_Release(i32* %42)
  br label %44

44:                                               ; preds = %41, %16
  %45 = load i64, i64* %2, align 8
  store i64 %45, i64* %1, align 8
  br label %46

46:                                               ; preds = %44, %13
  %47 = load i64, i64* %1, align 8
  ret i64 %47
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i64 @IBackgroundCopyManager_CreateJob(i32*, i32, i32, i32*, i32**) #1

declare dso_local i64 @addFileHelper(i32*, i32, i32) #1

declare dso_local i32 @IBackgroundCopyJob_Release(i32*) #1

declare dso_local i32 @IBackgroundCopyManager_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

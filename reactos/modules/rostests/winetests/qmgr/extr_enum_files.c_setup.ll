; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_files.c_setup.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_files.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_BackgroundCopyManager = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@IID_IBackgroundCopyManager = common dso_local global i32 0, align 4
@test_manager = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@test_displayName = common dso_local global i32 0, align 4
@BG_JOB_TYPE_DOWNLOAD = common dso_local global i32 0, align 4
@test_job = common dso_local global i32 0, align 4
@test_localNameA = common dso_local global i32 0, align 4
@test_remoteNameA = common dso_local global i32 0, align 4
@test_localNameB = common dso_local global i32 0, align 4
@test_remoteNameB = common dso_local global i32 0, align 4
@test_enumFiles = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %5 = call i64 @CoCreateInstance(i32* @CLSID_BackgroundCopyManager, i32* null, i32 %4, i32* @IID_IBackgroundCopyManager, i8** bitcast (i32* @test_manager to i8**))
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %1, align 4
  br label %50

11:                                               ; preds = %0
  %12 = load i32, i32* @test_manager, align 4
  %13 = load i32, i32* @test_displayName, align 4
  %14 = load i32, i32* @BG_JOB_TYPE_DOWNLOAD, align 4
  %15 = call i64 @IBackgroundCopyManager_CreateJob(i32 %12, i32 %13, i32 %14, i32* %3, i32* @test_job)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i32, i32* @test_manager, align 4
  %21 = call i32 @IBackgroundCopyManager_Release(i32 %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %1, align 4
  br label %50

23:                                               ; preds = %11
  %24 = load i32, i32* @test_job, align 4
  %25 = load i32, i32* @test_localNameA, align 4
  %26 = load i32, i32* @test_remoteNameA, align 4
  %27 = call i64 @addFileHelper(i32 %24, i32 %25, i32 %26)
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @test_job, align 4
  %32 = load i32, i32* @test_localNameB, align 4
  %33 = load i32, i32* @test_remoteNameB, align 4
  %34 = call i64 @addFileHelper(i32 %31, i32 %32, i32 %33)
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @test_job, align 4
  %39 = call i64 @IBackgroundCopyJob_EnumFiles(i32 %38, i32* @test_enumFiles)
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37, %30, %23
  %43 = load i32, i32* @test_job, align 4
  %44 = call i32 @IBackgroundCopyJob_Release(i32 %43)
  %45 = load i32, i32* @test_manager, align 4
  %46 = call i32 @IBackgroundCopyManager_Release(i32 %45)
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %1, align 4
  br label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %48, %42, %19, %9
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @IBackgroundCopyManager_CreateJob(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @IBackgroundCopyManager_Release(i32) #1

declare dso_local i64 @addFileHelper(i32, i32, i32) #1

declare dso_local i64 @IBackgroundCopyJob_EnumFiles(i32, i32*) #1

declare dso_local i32 @IBackgroundCopyJob_Release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

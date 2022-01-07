; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_file.c_setup.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_file.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_manager = common dso_local global i32* null, align 8
@test_job = common dso_local global i32* null, align 8
@CLSID_BackgroundCopyManager = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@IID_IBackgroundCopyManager = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@test_displayName = common dso_local global i32 0, align 4
@BG_JOB_TYPE_DOWNLOAD = common dso_local global i32 0, align 4
@test_localName = common dso_local global i32 0, align 4
@test_remoteName = common dso_local global i32 0, align 4
@test_enumFiles = common dso_local global i32 0, align 4
@test_file = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32* null, i32** @test_manager, align 8
  store i32* null, i32** @test_job, align 8
  %4 = call i32 @memset(i32* %3, i32 0, i32 4)
  %5 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %6 = call i64 @CoCreateInstance(i32* @CLSID_BackgroundCopyManager, i32* null, i32 %5, i32* @IID_IBackgroundCopyManager, i8** bitcast (i32** @test_manager to i8**))
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %1, align 4
  br label %58

12:                                               ; preds = %0
  %13 = load i32*, i32** @test_manager, align 8
  %14 = load i32, i32* @test_displayName, align 4
  %15 = load i32, i32* @BG_JOB_TYPE_DOWNLOAD, align 4
  %16 = call i64 @IBackgroundCopyManager_CreateJob(i32* %13, i32 %14, i32 %15, i32* %3, i32** @test_job)
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32*, i32** @test_manager, align 8
  %22 = call i32 @IBackgroundCopyManager_Release(i32* %21)
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %1, align 4
  br label %58

24:                                               ; preds = %12
  %25 = load i32*, i32** @test_job, align 8
  %26 = load i32, i32* @test_localName, align 4
  %27 = load i32, i32* @test_remoteName, align 4
  %28 = call i64 @addFileHelper(i32* %25, i32 %26, i32 %27)
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load i32*, i32** @test_job, align 8
  %33 = call i64 @IBackgroundCopyJob_EnumFiles(i32* %32, i32* @test_enumFiles)
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %31, %24
  %37 = load i32*, i32** @test_job, align 8
  %38 = call i32 @IBackgroundCopyJob_Release(i32* %37)
  %39 = load i32*, i32** @test_manager, align 8
  %40 = call i32 @IBackgroundCopyManager_Release(i32* %39)
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %1, align 4
  br label %58

42:                                               ; preds = %31
  %43 = load i32, i32* @test_enumFiles, align 4
  %44 = call i64 @IEnumBackgroundCopyFiles_Next(i32 %43, i32 1, i32* @test_file, i32* null)
  store i64 %44, i64* %2, align 8
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load i32, i32* @test_enumFiles, align 4
  %50 = call i32 @IEnumBackgroundCopyFiles_Release(i32 %49)
  %51 = load i32*, i32** @test_job, align 8
  %52 = call i32 @IBackgroundCopyJob_Release(i32* %51)
  %53 = load i32*, i32** @test_manager, align 8
  %54 = call i32 @IBackgroundCopyManager_Release(i32* %53)
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %1, align 4
  br label %58

56:                                               ; preds = %42
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %56, %48, %36, %20, %10
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @IBackgroundCopyManager_CreateJob(i32*, i32, i32, i32*, i32**) #1

declare dso_local i32 @IBackgroundCopyManager_Release(i32*) #1

declare dso_local i64 @addFileHelper(i32*, i32, i32) #1

declare dso_local i64 @IBackgroundCopyJob_EnumFiles(i32*, i32*) #1

declare dso_local i32 @IBackgroundCopyJob_Release(i32*) #1

declare dso_local i64 @IEnumBackgroundCopyFiles_Next(i32, i32, i32*, i32*) #1

declare dso_local i32 @IEnumBackgroundCopyFiles_Release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

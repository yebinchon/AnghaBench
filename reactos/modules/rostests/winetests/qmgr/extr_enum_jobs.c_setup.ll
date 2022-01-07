; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_jobs.c_setup.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_jobs.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_manager = common dso_local global i32* null, align 8
@test_jobA = common dso_local global i32* null, align 8
@test_jobB = common dso_local global i32* null, align 8
@test_jobIdA = common dso_local global i32 0, align 4
@test_jobIdB = common dso_local global i32 0, align 4
@CLSID_BackgroundCopyManager = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@IID_IBackgroundCopyManager = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@test_displayNameA = common dso_local global i32 0, align 4
@BG_JOB_TYPE_DOWNLOAD = common dso_local global i32 0, align 4
@test_enumJobsA = common dso_local global i32 0, align 4
@test_displayNameB = common dso_local global i32 0, align 4
@test_enumJobsB = common dso_local global i32 0, align 4
@test_jobCountB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32* null, i32** @test_manager, align 8
  store i32* null, i32** @test_jobA, align 8
  store i32* null, i32** @test_jobB, align 8
  %3 = call i32 @memset(i32* @test_jobIdA, i32 0, i32 4)
  %4 = call i32 @memset(i32* @test_jobIdB, i32 0, i32 4)
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
  %14 = load i32, i32* @test_displayNameA, align 4
  %15 = load i32, i32* @BG_JOB_TYPE_DOWNLOAD, align 4
  %16 = call i64 @IBackgroundCopyManager_CreateJob(i32* %13, i32 %14, i32 %15, i32* @test_jobIdA, i32** @test_jobA)
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %1, align 4
  br label %58

22:                                               ; preds = %12
  %23 = load i32*, i32** @test_manager, align 8
  %24 = call i64 @IBackgroundCopyManager_EnumJobs(i32* %23, i32 0, i32* @test_enumJobsA)
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %1, align 4
  br label %58

30:                                               ; preds = %22
  %31 = load i32*, i32** @test_manager, align 8
  %32 = load i32, i32* @test_displayNameB, align 4
  %33 = load i32, i32* @BG_JOB_TYPE_DOWNLOAD, align 4
  %34 = call i64 @IBackgroundCopyManager_CreateJob(i32* %31, i32 %32, i32 %33, i32* @test_jobIdB, i32** @test_jobB)
  store i64 %34, i64* %2, align 8
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %1, align 4
  br label %58

40:                                               ; preds = %30
  %41 = load i32*, i32** @test_manager, align 8
  %42 = call i64 @IBackgroundCopyManager_EnumJobs(i32* %41, i32 0, i32* @test_enumJobsB)
  store i64 %42, i64* %2, align 8
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %1, align 4
  br label %58

48:                                               ; preds = %40
  %49 = load i32, i32* @test_enumJobsB, align 4
  %50 = call i64 @IEnumBackgroundCopyJobs_GetCount(i32 %49, i32* @test_jobCountB)
  store i64 %50, i64* %2, align 8
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %1, align 4
  br label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %56, %54, %46, %38, %28, %20, %10
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @IBackgroundCopyManager_CreateJob(i32*, i32, i32, i32*, i32**) #1

declare dso_local i64 @IBackgroundCopyManager_EnumJobs(i32*, i32, i32*) #1

declare dso_local i64 @IEnumBackgroundCopyJobs_GetCount(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

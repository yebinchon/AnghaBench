; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_job.c_check_bits20.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_job.c_check_bits20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_BackgroundCopyManager = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@IID_IBackgroundCopyManager = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@test_displayName = common dso_local global i32 0, align 4
@test_type = common dso_local global i32 0, align 4
@test_jobId = common dso_local global i32 0, align 4
@IID_IBackgroundCopyJob3 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_bits20 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_bits20() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %7 = bitcast i32** %3 to i8**
  %8 = call i64 @CoCreateInstance(i32* @CLSID_BackgroundCopyManager, i32* null, i32 %6, i32* @IID_IBackgroundCopyManager, i8** %7)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %1, align 4
  br label %47

14:                                               ; preds = %0
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @test_displayName, align 4
  %17 = load i32, i32* @test_type, align 4
  %18 = call i64 @IBackgroundCopyManager_CreateJob(i32* %15, i32 %16, i32 %17, i32* @test_jobId, i32** %4)
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @IBackgroundCopyManager_Release(i32* %23)
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %1, align 4
  br label %47

26:                                               ; preds = %14
  %27 = load i32*, i32** %4, align 8
  %28 = bitcast i32** %5 to i8**
  %29 = call i64 @IBackgroundCopyJob_QueryInterface(i32* %27, i32* @IID_IBackgroundCopyJob3, i8** %28)
  store i64 %29, i64* %2, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @IBackgroundCopyJob_Cancel(i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @IBackgroundCopyJob_Release(i32* %32)
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @IBackgroundCopyManager_Release(i32* %38)
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %1, align 4
  br label %47

41:                                               ; preds = %26
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @IBackgroundCopyJob_Release(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @IBackgroundCopyManager_Release(i32* %44)
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %41, %37, %22, %12
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @IBackgroundCopyManager_CreateJob(i32*, i32, i32, i32*, i32**) #1

declare dso_local i32 @IBackgroundCopyManager_Release(i32*) #1

declare dso_local i64 @IBackgroundCopyJob_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IBackgroundCopyJob_Cancel(i32*) #1

declare dso_local i32 @IBackgroundCopyJob_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

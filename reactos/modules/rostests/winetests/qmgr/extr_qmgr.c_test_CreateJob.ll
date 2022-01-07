; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_qmgr.c_test_CreateJob.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_qmgr.c_test_CreateJob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_CreateJob.copyNameW = internal constant [5 x i8] c"Test\00", align 1
@CLSID_BackgroundCopyManager = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@IID_IBackgroundCopyManager = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@BG_JOB_TYPE_DOWNLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"CreateJob failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Bad ref count on release: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateJob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateJob() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %5, align 8
  %6 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %7 = bitcast i32** %5 to i8**
  %8 = call i64 @CoCreateInstance(i32* @CLSID_BackgroundCopyManager, i32* null, i32 %6, i32* @IID_IBackgroundCopyManager, i8** %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @BG_JOB_TYPE_DOWNLOAD, align 4
  %17 = call i64 @IBackgroundCopyManager_CreateJob(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_CreateJob.copyNameW, i64 0, i64 0), i32 %16, i32* %2, i32** %1)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i64 @IBackgroundCopyJob_Release(i32* %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @IBackgroundCopyManager_Release(i32* %31)
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IBackgroundCopyManager_CreateJob(i32*, i8*, i32, i32*, i32**) #1

declare dso_local i64 @IBackgroundCopyJob_Release(i32*) #1

declare dso_local i32 @IBackgroundCopyManager_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

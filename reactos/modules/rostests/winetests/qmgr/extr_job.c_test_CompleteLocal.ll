; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_job.c_test_CompleteLocal.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_job.c_test_CompleteLocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_CompleteLocal.timeout_sec = internal constant i32 30, align 4
@test_localPathA = common dso_local global i32 0, align 4
@test_localPathB = common dso_local global i32 0, align 4
@test_remotePathA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"This is a WINE test file for BITS\0A\00", align 1
@test_remotePathB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"This is another WINE test file for BITS\0A\00", align 1
@test_job = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"IBackgroundCopyJob_Resume\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"IBackgroundCopyJob_GetState\0A\00", align 1
@BG_JOB_STATE_QUEUED = common dso_local global i64 0, align 8
@BG_JOB_STATE_CONNECTING = common dso_local global i64 0, align 8
@BG_JOB_STATE_TRANSFERRING = common dso_local global i64 0, align 8
@BG_JOB_STATE_TRANSFERRED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"Bad state: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"BITS jobs timed out\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"IBackgroundCopyJob_Complete\0A\00", align 1
@BG_JOB_STATE_ACKNOWLEDGED = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"DeleteFile\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CompleteLocal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CompleteLocal() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @test_localPathA, align 4
  %5 = call i32 @DeleteFileW(i32 %4)
  %6 = load i32, i32* @test_localPathB, align 4
  %7 = call i32 @DeleteFileW(i32 %6)
  %8 = load i32, i32* @test_remotePathA, align 4
  %9 = call i32 @makeFile(i32 %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @test_remotePathB, align 4
  %11 = call i32 @makeFile(i32 %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @test_job, align 4
  %13 = load i32, i32* @test_remotePathA, align 4
  %14 = load i32, i32* @test_localPathA, align 4
  %15 = call i64 @IBackgroundCopyJob_AddFile(i32 %12, i32 %13, i32 %14)
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %1, align 8
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @test_job, align 4
  %23 = load i32, i32* @test_remotePathB, align 4
  %24 = load i32, i32* @test_localPathB, align 4
  %25 = call i64 @IBackgroundCopyJob_AddFile(i32 %22, i32 %23, i32 %24)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %1, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @test_job, align 4
  %33 = call i64 @IBackgroundCopyJob_Resume(i32 %32)
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %76, %0
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 30
  br i1 %41, label %42, label %79

42:                                               ; preds = %39
  %43 = load i32, i32* @test_job, align 4
  %44 = call i64 @IBackgroundCopyJob_GetState(i32 %43, i64* %2)
  store i64 %44, i64* %1, align 8
  %45 = load i64, i64* %1, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i64, i64* %2, align 8
  %51 = load i64, i64* @BG_JOB_STATE_QUEUED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %42
  %54 = load i64, i64* %2, align 8
  %55 = load i64, i64* @BG_JOB_STATE_CONNECTING, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %2, align 8
  %59 = load i64, i64* @BG_JOB_STATE_TRANSFERRING, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %2, align 8
  %63 = load i64, i64* @BG_JOB_STATE_TRANSFERRED, align 8
  %64 = icmp eq i64 %62, %63
  br label %65

65:                                               ; preds = %61, %57, %53, %42
  %66 = phi i1 [ true, %57 ], [ true, %53 ], [ true, %42 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %2, align 8
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* %2, align 8
  %71 = load i64, i64* @BG_JOB_STATE_TRANSFERRED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %79

74:                                               ; preds = %65
  %75 = call i32 @Sleep(i32 1000)
  br label %76

76:                                               ; preds = %74
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %39

79:                                               ; preds = %73, %39
  %80 = load i32, i32* %3, align 4
  %81 = icmp slt i32 %80, 30
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i32, i32* @test_job, align 4
  %85 = call i64 @IBackgroundCopyJob_Complete(i32 %84)
  store i64 %85, i64* %1, align 8
  %86 = load i64, i64* %1, align 8
  %87 = load i64, i64* @S_OK, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %91 = load i32, i32* @test_job, align 4
  %92 = call i64 @IBackgroundCopyJob_GetState(i32 %91, i64* %2)
  store i64 %92, i64* %1, align 8
  %93 = load i64, i64* %1, align 8
  %94 = load i64, i64* @S_OK, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i64, i64* %2, align 8
  %99 = load i64, i64* @BG_JOB_STATE_ACKNOWLEDGED, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i64, i64* %2, align 8
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 %102)
  %104 = load i32, i32* @test_remotePathA, align 4
  %105 = load i32, i32* @test_localPathA, align 4
  %106 = call i32 @compareFiles(i32 %104, i32 %105)
  %107 = load i32, i32* @test_remotePathB, align 4
  %108 = load i32, i32* @test_localPathB, align 4
  %109 = call i32 @compareFiles(i32 %107, i32 %108)
  %110 = load i32, i32* @test_remotePathA, align 4
  %111 = call i32 @DeleteFileW(i32 %110)
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %113 = load i32, i32* @test_remotePathB, align 4
  %114 = call i32 @DeleteFileW(i32 %113)
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %116 = load i32, i32* @test_localPathA, align 4
  %117 = call i32 @DeleteFileW(i32 %116)
  %118 = load i32, i32* @test_localPathB, align 4
  %119 = call i32 @DeleteFileW(i32 %118)
  ret void
}

declare dso_local i32 @DeleteFileW(i32) #1

declare dso_local i32 @makeFile(i32, i8*) #1

declare dso_local i64 @IBackgroundCopyJob_AddFile(i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IBackgroundCopyJob_Resume(i32) #1

declare dso_local i64 @IBackgroundCopyJob_GetState(i32, i64*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @IBackgroundCopyJob_Complete(i32) #1

declare dso_local i32 @compareFiles(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

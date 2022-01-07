; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_job.c_test_CompleteLocalURL.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_job.c_test_CompleteLocalURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_CompleteLocalURL.prot = internal constant [8 x float] [float 1.020000e+02, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 5.800000e+01, float 4.700000e+01, float 4.700000e+01, float 0.000000e+00], align 16
@test_CompleteLocalURL.timeout_sec = internal constant i32 30, align 4
@test_localPathA = common dso_local global i32 0, align 4
@test_localPathB = common dso_local global i32 0, align 4
@test_remotePathA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"This is a WINE test file for BITS\0A\00", align 1
@test_remotePathB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"This is another WINE test file for BITS\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Unable to allocate memory for URLs\0A\00", align 1
@test_job = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"IBackgroundCopyJob_Resume\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"IBackgroundCopyJob_GetState\0A\00", align 1
@BG_JOB_STATE_QUEUED = common dso_local global i64 0, align 8
@BG_JOB_STATE_CONNECTING = common dso_local global i64 0, align 8
@BG_JOB_STATE_TRANSFERRING = common dso_local global i64 0, align 8
@BG_JOB_STATE_TRANSFERRED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"Bad state: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"BITS jobs timed out\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"IBackgroundCopyJob_Complete\0A\00", align 1
@BG_JOB_STATE_ACKNOWLEDGED = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"DeleteFile\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CompleteLocalURL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CompleteLocalURL() #0 {
  %1 = alloca float*, align 8
  %2 = alloca float*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @test_localPathA, align 4
  %7 = call i32 @DeleteFileW(i32 %6)
  %8 = load i32, i32* @test_localPathB, align 4
  %9 = call i32 @DeleteFileW(i32 %8)
  %10 = load i32, i32* @test_remotePathA, align 4
  %11 = call i32 @makeFile(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @test_remotePathB, align 4
  %13 = call i32 @makeFile(i32 %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (...) @GetProcessHeap()
  %15 = load i32, i32* @test_remotePathA, align 4
  %16 = call i32 @lstrlenW(i32 %15)
  %17 = add nsw i32 7, %16
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call float* @HeapAlloc(i32 %14, i32 0, i32 %21)
  store float* %22, float** %1, align 8
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load i32, i32* @test_remotePathB, align 4
  %25 = call i32 @lstrlenW(i32 %24)
  %26 = add nsw i32 7, %25
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call float* @HeapAlloc(i32 %23, i32 0, i32 %30)
  store float* %31, float** %2, align 8
  %32 = load float*, float** %1, align 8
  %33 = icmp ne float* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %0
  %35 = load float*, float** %2, align 8
  %36 = icmp ne float* %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %34, %0
  %38 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 (...) @GetProcessHeap()
  %40 = load float*, float** %1, align 8
  %41 = call i32 @HeapFree(i32 %39, i32 0, float* %40)
  %42 = call i32 (...) @GetProcessHeap()
  %43 = load float*, float** %2, align 8
  %44 = call i32 @HeapFree(i32 %42, i32 0, float* %43)
  br label %170

45:                                               ; preds = %34
  %46 = load float*, float** %1, align 8
  %47 = call i32 @lstrcpyW(float* %46, float* getelementptr inbounds ([8 x float], [8 x float]* @test_CompleteLocalURL.prot, i64 0, i64 0))
  %48 = load float*, float** %1, align 8
  %49 = load i32, i32* @test_remotePathA, align 4
  %50 = call i32 @lstrcatW(float* %48, i32 %49)
  %51 = load float*, float** %2, align 8
  %52 = call i32 @lstrcpyW(float* %51, float* getelementptr inbounds ([8 x float], [8 x float]* @test_CompleteLocalURL.prot, i64 0, i64 0))
  %53 = load float*, float** %2, align 8
  %54 = load i32, i32* @test_remotePathB, align 4
  %55 = call i32 @lstrcatW(float* %53, i32 %54)
  %56 = load i32, i32* @test_job, align 4
  %57 = load float*, float** %1, align 8
  %58 = load i32, i32* @test_localPathA, align 4
  %59 = call i64 @IBackgroundCopyJob_AddFile(i32 %56, float* %57, i32 %58)
  store i64 %59, i64* %3, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* @S_OK, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %3, align 8
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @test_job, align 4
  %67 = load float*, float** %2, align 8
  %68 = load i32, i32* @test_localPathB, align 4
  %69 = call i64 @IBackgroundCopyJob_AddFile(i32 %66, float* %67, i32 %68)
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @S_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %3, align 8
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* @test_job, align 4
  %77 = call i64 @IBackgroundCopyJob_Resume(i32 %76)
  store i64 %77, i64* %3, align 8
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* @S_OK, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %120, %45
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 30
  br i1 %85, label %86, label %123

86:                                               ; preds = %83
  %87 = load i32, i32* @test_job, align 4
  %88 = call i64 @IBackgroundCopyJob_GetState(i32 %87, i64* %4)
  store i64 %88, i64* %3, align 8
  %89 = load i64, i64* %3, align 8
  %90 = load i64, i64* @S_OK, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* @BG_JOB_STATE_QUEUED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %109, label %97

97:                                               ; preds = %86
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* @BG_JOB_STATE_CONNECTING, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* @BG_JOB_STATE_TRANSFERRING, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* %4, align 8
  %107 = load i64, i64* @BG_JOB_STATE_TRANSFERRED, align 8
  %108 = icmp eq i64 %106, %107
  br label %109

109:                                              ; preds = %105, %101, %97, %86
  %110 = phi i1 [ true, %101 ], [ true, %97 ], [ true, %86 ], [ %108, %105 ]
  %111 = zext i1 %110 to i32
  %112 = load i64, i64* %4, align 8
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 %112)
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* @BG_JOB_STATE_TRANSFERRED, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %123

118:                                              ; preds = %109
  %119 = call i32 @Sleep(i32 1000)
  br label %120

120:                                              ; preds = %118
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %83

123:                                              ; preds = %117, %83
  %124 = load i32, i32* %5, align 4
  %125 = icmp slt i32 %124, 30
  %126 = zext i1 %125 to i32
  %127 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %128 = load i32, i32* @test_job, align 4
  %129 = call i64 @IBackgroundCopyJob_Complete(i32 %128)
  store i64 %129, i64* %3, align 8
  %130 = load i64, i64* %3, align 8
  %131 = load i64, i64* @S_OK, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i32, i32* @test_job, align 4
  %136 = call i64 @IBackgroundCopyJob_GetState(i32 %135, i64* %4)
  store i64 %136, i64* %3, align 8
  %137 = load i64, i64* %3, align 8
  %138 = load i64, i64* @S_OK, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i64, i64* %4, align 8
  %143 = load i64, i64* @BG_JOB_STATE_ACKNOWLEDGED, align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i64, i64* %4, align 8
  %147 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 %146)
  %148 = load i32, i32* @test_remotePathA, align 4
  %149 = load i32, i32* @test_localPathA, align 4
  %150 = call i32 @compareFiles(i32 %148, i32 %149)
  %151 = load i32, i32* @test_remotePathB, align 4
  %152 = load i32, i32* @test_localPathB, align 4
  %153 = call i32 @compareFiles(i32 %151, i32 %152)
  %154 = load i32, i32* @test_remotePathA, align 4
  %155 = call i32 @DeleteFileW(i32 %154)
  %156 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %157 = load i32, i32* @test_remotePathB, align 4
  %158 = call i32 @DeleteFileW(i32 %157)
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %160 = load i32, i32* @test_localPathA, align 4
  %161 = call i32 @DeleteFileW(i32 %160)
  %162 = load i32, i32* @test_localPathB, align 4
  %163 = call i32 @DeleteFileW(i32 %162)
  %164 = call i32 (...) @GetProcessHeap()
  %165 = load float*, float** %1, align 8
  %166 = call i32 @HeapFree(i32 %164, i32 0, float* %165)
  %167 = call i32 (...) @GetProcessHeap()
  %168 = load float*, float** %2, align 8
  %169 = call i32 @HeapFree(i32 %167, i32 0, float* %168)
  br label %170

170:                                              ; preds = %123, %37
  ret void
}

declare dso_local i32 @DeleteFileW(i32) #1

declare dso_local i32 @makeFile(i32, i8*) #1

declare dso_local float* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, float*) #1

declare dso_local i32 @lstrcpyW(float*, float*) #1

declare dso_local i32 @lstrcatW(float*, i32) #1

declare dso_local i64 @IBackgroundCopyJob_AddFile(i32, float*, i32) #1

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

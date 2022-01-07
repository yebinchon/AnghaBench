; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_job.c_test_Cancel.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_job.c_test_Cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BG_JOB_STATE_ERROR = common dso_local global i64 0, align 8
@test_job = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@BG_JOB_STATE_CANCELLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@BG_E_INVALID_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Cancel() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @BG_JOB_STATE_ERROR, align 8
  store i64 %3, i64* %2, align 8
  %4 = load i32, i32* @test_job, align 4
  %5 = call i64 @IBackgroundCopyJob_GetState(i32 %4, i64* %2)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @BG_JOB_STATE_CANCELLED, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* @test_job, align 4
  %19 = call i64 @IBackgroundCopyJob_Cancel(i32 %18)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* @BG_JOB_STATE_ERROR, align 8
  store i64 %26, i64* %2, align 8
  %27 = load i32, i32* @test_job, align 4
  %28 = call i64 @IBackgroundCopyJob_GetState(i32 %27, i64* %2)
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %1, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* @BG_JOB_STATE_CANCELLED, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %2, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @test_job, align 4
  %42 = call i64 @IBackgroundCopyJob_Cancel(i32 %41)
  store i64 %42, i64* %1, align 8
  %43 = load i64, i64* %1, align 8
  %44 = load i64, i64* @BG_E_INVALID_STATE, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %1, align 8
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %47)
  ret void
}

declare dso_local i64 @IBackgroundCopyJob_GetState(i32, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IBackgroundCopyJob_Cancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

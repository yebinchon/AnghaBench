; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_jobs.c_test_Next_walkList_1.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_jobs.c_test_Next_walkList_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_jobCountB = common dso_local global i64 0, align 8
@test_enumJobsB = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Next failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Next returned the incorrect number of jobs: %08x\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Next off end of available jobs failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Next_walkList_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Next_walkList_1() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %25, %0
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @test_jobCountB, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  store i64 0, i64* %3, align 8
  %10 = load i32, i32* @test_enumJobsB, align 4
  %11 = call i64 @IEnumBackgroundCopyJobs_Next(i32 %10, i32 1, i32** %2, i64* %3)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %18, 1
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @IBackgroundCopyJob_Release(i32* %23)
  br label %25

25:                                               ; preds = %9
  %26 = load i64, i64* %4, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %4, align 8
  br label %5

28:                                               ; preds = %5
  store i64 0, i64* %3, align 8
  %29 = load i32, i32* @test_enumJobsB, align 4
  %30 = call i64 @IEnumBackgroundCopyJobs_Next(i32 %29, i32 1, i32** %2, i64* %3)
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @S_FALSE, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %1, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %3, align 8
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %1, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  ret void
}

declare dso_local i64 @IEnumBackgroundCopyJobs_Next(i32, i32, i32**, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IBackgroundCopyJob_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task_scheduler.c_test_GetTargetComputer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task_scheduler.c_test_GetTargetComputer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_CTaskScheduler = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_ITaskScheduler = common dso_local global i32 0, align 4
@test_task_scheduler = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"CTaskScheduler CoCreateInstance failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to create task scheduler.\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"got 0x%x and %s (expected S_OK and an unc name)\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetTargetComputer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetTargetComputer() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %4 = call i64 @CoCreateInstance(i32* @CLSID_CTaskScheduler, i32* null, i32 %3, i32* @IID_ITaskScheduler, i8** bitcast (i32* @test_task_scheduler to i8**))
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @S_OK, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 (i32, i8*, i64, ...) @ok(i32 %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %54

16:                                               ; preds = %0
  %17 = load i32, i32* @test_task_scheduler, align 4
  %18 = call i64 @ITaskScheduler_GetTargetComputer(i32 %17, i8** %2)
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load i8*, i8** %2, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 92
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 92
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i8*, i8** %2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %37, %31, %25, %22, %16
  %44 = phi i1 [ false, %31 ], [ false, %25 ], [ false, %22 ], [ false, %16 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %1, align 8
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @wine_dbgstr_w(i8* %47)
  %49 = call i32 (i32, i8*, i64, ...) @ok(i32 %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %46, i32 %48)
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @CoTaskMemFree(i8* %50)
  %52 = load i32, i32* @test_task_scheduler, align 4
  %53 = call i32 @ITaskScheduler_Release(i32 %52)
  br label %54

54:                                               ; preds = %43, %14
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @ITaskScheduler_GetTargetComputer(i32, i8**) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @CoTaskMemFree(i8*) #1

declare dso_local i32 @ITaskScheduler_Release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

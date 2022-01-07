; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task_trigger.c_setup_trigger.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task_trigger.c_setup_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.setup_trigger.task_name = private unnamed_addr constant [8 x i8] c"Testing\00", align 1
@CLSID_CTaskScheduler = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_ITaskScheduler = common dso_local global i32 0, align 4
@test_task_scheduler = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@CLSID_CTask = common dso_local global i32 0, align 4
@IID_ITask = common dso_local global i32 0, align 4
@test_task = common dso_local global i32 0, align 4
@trigger_index = common dso_local global i32 0, align 4
@test_trigger = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_trigger() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca [8 x i8], align 1
  %4 = bitcast [8 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.setup_trigger.task_name, i32 0, i32 0), i64 8, i1 false)
  %5 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %6 = call i64 @CoCreateInstance(i32* @CLSID_CTaskScheduler, i32* null, i32 %5, i32* @IID_ITaskScheduler, i8** bitcast (i32* @test_task_scheduler to i8**))
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %1, align 4
  br label %37

12:                                               ; preds = %0
  %13 = load i32, i32* @test_task_scheduler, align 4
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %15 = call i64 @ITaskScheduler_NewWorkItem(i32 %13, i8* %14, i32* @CLSID_CTask, i32* @IID_ITask, i32** bitcast (i32* @test_task to i32**))
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* @test_task_scheduler, align 4
  %21 = call i32 @ITaskScheduler_Release(i32 %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %1, align 4
  br label %37

23:                                               ; preds = %12
  %24 = load i32, i32* @test_task, align 4
  %25 = call i64 @ITask_CreateTrigger(i32 %24, i32* @trigger_index, i32* @test_trigger)
  store i64 %25, i64* %2, align 8
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* @test_task, align 4
  %31 = call i32 @ITask_Release(i32 %30)
  %32 = load i32, i32* @test_task_scheduler, align 4
  %33 = call i32 @ITaskScheduler_Release(i32 %32)
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %1, align 4
  br label %37

35:                                               ; preds = %23
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %35, %29, %19, %10
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #2

declare dso_local i64 @ITaskScheduler_NewWorkItem(i32, i8*, i32*, i32*, i32**) #2

declare dso_local i32 @ITaskScheduler_Release(i32) #2

declare dso_local i64 @ITask_CreateTrigger(i32, i32*, i32*) #2

declare dso_local i32 @ITask_Release(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

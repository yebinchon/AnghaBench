; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task_scheduler.c_test_NewWorkItem.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task_scheduler.c_test_NewWorkItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_NewWorkItem.task_name = private unnamed_addr constant [8 x i8] c"Testing\00", align 1
@CLSID_CTaskScheduler = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_ITaskScheduler = common dso_local global i32 0, align 4
@test_task_scheduler = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"CTaskScheduler CoCreateInstance failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to create task scheduler.  Skipping tests.\0A\00", align 1
@CLSID_CTask = common dso_local global i32 0, align 4
@IID_ITask = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"NewNetworkItem failed: %08x\0A\00", align 1
@CLASS_E_CLASSNOTAVAILABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Expected CLASS_E_CLASSNOTAVAILABLE: %08x\0A\00", align 1
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Expected E_NOINTERFACE: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_NewWorkItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_NewWorkItem() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [8 x i8], align 1
  %4 = alloca i32, align 4
  %5 = bitcast [8 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_NewWorkItem.task_name, i32 0, i32 0), i64 8, i1 false)
  %6 = call i32 @CoCreateGuid(i32* %4)
  %7 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %8 = call i64 @CoCreateInstance(i32* @CLSID_CTaskScheduler, i32* null, i32 %7, i32* @IID_ITaskScheduler, i8** bitcast (i32* @test_task_scheduler to i8**))
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %1, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = call i32 @skip(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %66

20:                                               ; preds = %0
  %21 = load i32, i32* @test_task_scheduler, align 4
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %23 = call i64 @ITaskScheduler_NewWorkItem(i32 %21, i8* %22, i32* @CLSID_CTask, i32* @IID_ITask, i32** %2)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @ITask_Release(i32* %34)
  br label %36

36:                                               ; preds = %33, %20
  %37 = load i32, i32* @test_task_scheduler, align 4
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %39 = call i64 @ITaskScheduler_NewWorkItem(i32 %37, i8* %38, i32* %4, i32* @IID_ITask, i32** %2)
  store i64 %39, i64* %1, align 8
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* @CLASS_E_CLASSNOTAVAILABLE, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %1, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @test_task_scheduler, align 4
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %48 = call i64 @ITaskScheduler_NewWorkItem(i32 %46, i8* %47, i32* @CLSID_CTask, i32* %4, i32** %2)
  store i64 %48, i64* %1, align 8
  %49 = load i64, i64* %1, align 8
  %50 = load i64, i64* @E_NOINTERFACE, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %1, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @test_task_scheduler, align 4
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %57 = call i64 @ITaskScheduler_NewWorkItem(i32 %55, i8* %56, i32* %4, i32* %4, i32** %2)
  store i64 %57, i64* %1, align 8
  %58 = load i64, i64* %1, align 8
  %59 = load i64, i64* @CLASS_E_CLASSNOTAVAILABLE, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %1, align 8
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  %64 = load i32, i32* @test_task_scheduler, align 4
  %65 = call i32 @ITaskScheduler_Release(i32 %64)
  br label %66

66:                                               ; preds = %36, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CoCreateGuid(i32*) #2

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i64 @ITaskScheduler_NewWorkItem(i32, i8*, i32*, i32*, i32**) #2

declare dso_local i32 @ITask_Release(i32*) #2

declare dso_local i32 @ITaskScheduler_Release(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task_scheduler.c_test_Activate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task_scheduler.c_test_Activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_Activate.not_task_name = private unnamed_addr constant [11 x i8] c"NoSuchTask\00", align 1
@CLSID_CTaskScheduler = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_ITaskScheduler = common dso_local global i32 0, align 4
@test_task_scheduler = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"CTaskScheduler CoCreateInstance failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to create task scheduler.  Skipping tests.\0A\00", align 1
@IID_ITask = common dso_local global i32 0, align 4
@COR_E_FILENOTFOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Expected COR_E_FILENOTFOUND: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Activate() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [11 x i8], align 1
  store i32* null, i32** %2, align 8
  %4 = bitcast [11 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_Activate.not_task_name, i32 0, i32 0), i64 11, i1 false)
  %5 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %6 = call i64 @CoCreateInstance(i32* @CLSID_CTaskScheduler, i32* null, i32 %5, i32* @IID_ITaskScheduler, i8** bitcast (i32* @test_task_scheduler to i8**))
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @skip(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %30

18:                                               ; preds = %0
  %19 = load i32, i32* @test_task_scheduler, align 4
  %20 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %21 = call i64 @ITaskScheduler_Activate(i32 %19, i8* %20, i32* @IID_ITask, i32** %2)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @COR_E_FILENOTFOUND, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @test_task_scheduler, align 4
  %29 = call i32 @ITaskScheduler_Release(i32 %28)
  br label %30

30:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i64 @ITaskScheduler_Activate(i32, i8*, i32*, i32**) #2

declare dso_local i32 @ITaskScheduler_Release(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task_scheduler.c_test_Enum.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task_scheduler.c_test_Enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_CTaskScheduler = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_ITaskScheduler = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Enum() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %5 = bitcast i32** %1 to i8**
  %6 = call i64 @CoCreateInstance(i32* @CLSID_CTaskScheduler, i32* null, i32 %4, i32* @IID_ITaskScheduler, i8** %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i64 @ITaskScheduler_Enum(i32* %13, i32** %2)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @IEnumWorkItems_Release(i32* %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @ITaskScheduler_Release(i32* %23)
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @ITaskScheduler_Enum(i32*, i32**) #1

declare dso_local i32 @IEnumWorkItems_Release(i32*) #1

declare dso_local i32 @ITaskScheduler_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

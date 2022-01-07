; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_job.c_test_create_manager.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_job.c_test_create_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_BackgroundCopyManager = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@IID_IBackgroundCopyManager = common dso_local global i32 0, align 4
@ERROR_SERVICE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Needed Service is disabled\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @test_create_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_create_manager() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  store i32* null, i32** %3, align 8
  %4 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %5 = bitcast i32** %3 to i8**
  %6 = call i64 @CoCreateInstance(i32* @CLSID_BackgroundCopyManager, i32* null, i32 %4, i32* @IID_IBackgroundCopyManager, i8** %5)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i32, i32* @ERROR_SERVICE_DISABLED, align 4
  %9 = call i64 @HRESULT_FROM_WIN32(i32 %8)
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = call i32 @win_skip(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %2, align 8
  store i64 %13, i64* %1, align 8
  br label %23

14:                                               ; preds = %0
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @IBackgroundCopyManager_Release(i32* %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i64, i64* %2, align 8
  store i64 %22, i64* %1, align 8
  br label %23

23:                                               ; preds = %21, %11
  %24 = load i64, i64* %1, align 8
  ret i64 %24
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @IBackgroundCopyManager_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

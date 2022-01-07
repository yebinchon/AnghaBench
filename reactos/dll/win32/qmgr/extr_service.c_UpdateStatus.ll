; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/qmgr/extr_service.c_UpdateStatus.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/qmgr/extr_service.c_UpdateStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i64, i32 }

@SERVICE_WIN32_OWN_PROCESS = common dso_local global i32 0, align 4
@status = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@SERVICE_START_PENDING = common dso_local global i64 0, align 8
@SERVICE_ACCEPT_STOP = common dso_local global i32 0, align 4
@SERVICE_ACCEPT_PAUSE_CONTINUE = common dso_local global i32 0, align 4
@SERVICE_ACCEPT_SHUTDOWN = common dso_local global i32 0, align 4
@status_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to set service status\0A\00", align 1
@stop_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @UpdateStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateStatus(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* @SERVICE_WIN32_OWN_PROCESS, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @status, i32 0, i32 6), align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @status, i32 0, i32 5), align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @SERVICE_START_PENDING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @status, i32 0, i32 0), align 8
  br label %20

14:                                               ; preds = %3
  %15 = load i32, i32* @SERVICE_ACCEPT_STOP, align 4
  %16 = load i32, i32* @SERVICE_ACCEPT_PAUSE_CONTINUE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SERVICE_ACCEPT_SHUTDOWN, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @status, i32 0, i32 0), align 8
  br label %20

20:                                               ; preds = %14, %13
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @status, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @status, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @status, i32 0, i32 2), align 8
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @status, i32 0, i32 1), align 8
  %22 = load i32, i32* @status_handle, align 4
  %23 = call i32 @SetServiceStatus(i32 %22, %struct.TYPE_3__* @status)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @stop_event, align 4
  %28 = call i32 @SetEvent(i32 %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @SetServiceStatus(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @SetEvent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

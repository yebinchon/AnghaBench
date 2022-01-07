; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_ServiceNetwork.c_report_service_status.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_ServiceNetwork.c_report_service_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i8*, i8*, i8*, i32 }

@SERVICE_WIN32_OWN_PROCESS = common dso_local global i32 0, align 4
@SERVICE_START_PENDING = common dso_local global i8* null, align 8
@SERVICE_STOP_PENDING = common dso_local global i8* null, align 8
@SERVICE_STOPPED = common dso_local global i8* null, align 8
@SERVICE_ACCEPT_STOP = common dso_local global i32 0, align 4
@SERVICE_ACCEPT_SHUTDOWN = common dso_local global i32 0, align 4
@status_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SetServiceStatus(%d) failed: %lu\0A\00", align 1
@SERVICE_RUNNING = common dso_local global i8* null, align 8
@dwCheckPoint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @report_service_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_service_status(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @SERVICE_WIN32_OWN_PROCESS, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  store i32 %9, i32* %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  store i8* %11, i8** %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** @SERVICE_START_PENDING, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** @SERVICE_STOP_PENDING, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** @SERVICE_STOPPED, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %22, %3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %37

32:                                               ; preds = %26
  %33 = load i32, i32* @SERVICE_ACCEPT_STOP, align 4
  %34 = load i32, i32* @SERVICE_ACCEPT_SHUTDOWN, align 4
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  br label %37

37:                                               ; preds = %32, %30
  %38 = load i32, i32* @status_handle, align 4
  %39 = call i32 @SetServiceStatus(i32 %38, %struct.TYPE_3__* %8)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 @service_ok(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %42)
  ret void
}

declare dso_local i32 @SetServiceStatus(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @service_ok(i32, i8*, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

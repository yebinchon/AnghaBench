; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_service.c_try_start_stop.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_service.c_try_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"%s: StartServiceA() should have failed\0A\00", align 1
@SC_STATUS_PROCESS_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: QueryServiceStatusEx() failed le=%u\0A\00", align 1
@SERVICE_STOPPED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: should be stopped state=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: ProcessId should be 0 instead of %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"%s: the second try should yield the same error: %u != %u\0A\00", align 1
@SERVICE_CONTROL_STOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"%s: ControlService() should have failed\0A\00", align 1
@ERROR_SERVICE_NOT_ACTIVE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"%s: %d != ERROR_SERVICE_NOT_ACTIVE\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @try_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @try_start_stop(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @StartServiceA(i32 %13, i32 0, i32* null)
  store i32 %14, i32* %7, align 4
  %15 = call i64 (...) @GetLastError()
  store i64 %15, i64* %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i32, i8*, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %20)
  br i1 true, label %22, label %48

22:                                               ; preds = %3
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %25 = bitcast %struct.TYPE_4__* %12 to i32*
  %26 = call i32 @pQueryServiceStatusEx(i32 %23, i32 %24, i32* %25, i32 16, i64* %11)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 (...) @GetLastError()
  %30 = call i32 (i32, i8*, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %28, i64 %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SERVICE_STOPPED, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i32, i8*, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %36, i64 %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %44, i64 %46)
  br label %48

48:                                               ; preds = %22, %3
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @StartServiceA(i32 %49, i32 0, i32* null)
  store i32 %50, i32* %7, align 4
  %51 = call i64 (...) @GetLastError()
  store i64 %51, i64* %9, align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (i32, i8*, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 (i32, i8*, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8* %62, i64 %63, i64 %64)
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 -559038737, i32* %66, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @SERVICE_CONTROL_STOP, align 4
  %69 = call i32 @ControlService(i32 %67, i32 %68, %struct.TYPE_5__* %10)
  store i32 %69, i32* %7, align 4
  %70 = call i64 (...) @GetLastError()
  store i64 %70, i64* %9, align 8
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 (i32, i8*, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @ERROR_SERVICE_NOT_ACTIVE, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i8*, i8** %5, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 (i32, i8*, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %81, i64 %82)
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @SERVICE_STOPPED, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %48
  %90 = load i64, i64* %6, align 8
  %91 = call i64 @broken(i64 %90)
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %89, %48
  %94 = phi i1 [ true, %48 ], [ %92, %89 ]
  %95 = zext i1 %94 to i32
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %96, i32 %98)
  %100 = load i64, i64* %8, align 8
  ret i64 %100
}

declare dso_local i32 @StartServiceA(i32, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i32 @pQueryServiceStatusEx(i32, i32, i32*, i32, i64*) #1

declare dso_local i32 @ControlService(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @broken(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

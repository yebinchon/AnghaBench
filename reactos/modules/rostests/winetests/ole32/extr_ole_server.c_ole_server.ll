; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_ole_server.c_ole_server.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_ole_server.c_ole_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"server: starting %u\0A\00", align 1
@COINIT_MULTITHREADED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"server: registering class object\0A\00", align 1
@CLSID_WineTestObject = common dso_local global i32 0, align 4
@factory = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CLSCTX_SERVER = common dso_local global i32 0, align 4
@REGCLS_MULTIPLEUSE = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"ole_server_done_event\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"server: OpenEvent error %d\0A\00", align 1
@EVENT_MODIFY_STATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"ole_server_init_done_event\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"server: waiting for requests\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@class_ref = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"expected 1 class refs, got %d\0A\00", align 1
@obj_ref = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"expected 0 object refs, got %d\0A\00", align 1
@server_locks = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"expected 0 server locks, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"server: call CoUninitialize\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"server: ret CoUninitialize\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"server: exiting %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ole_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ole_server() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 (...) @GetCurrentProcessId()
  %6 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @COINIT_MULTITHREADED, align 4
  %8 = call i64 @CoInitializeEx(i32* null, i32 %7)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %68

12:                                               ; preds = %0
  %13 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @CLSCTX_SERVER, align 4
  %15 = load i32, i32* @REGCLS_MULTIPLEUSE, align 4
  %16 = call i64 @CoRegisterClassObject(i32* @CLSID_WineTestObject, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @factory, i32 0, i32 0), i32 %14, i32 %15, i32* %2)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %12
  %21 = load i32, i32* @SYNCHRONIZE, align 4
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i64 @OpenEventA(i32 %21, i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 (...) @GetLastError()
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EVENT_MODIFY_STATE, align 4
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i64 @OpenEventA(i32 %29, i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @SetEvent(i64 %37)
  %39 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %40 = load i64, i64* %3, align 8
  %41 = load i32, i32* @INFINITE, align 4
  %42 = call i32 @WaitForSingleObject(i64 %40, i32 %41)
  %43 = load i32, i32* @class_ref, align 4
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* @class_ref, align 4
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @obj_ref, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @obj_ref, align 4
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @server_locks, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* @server_locks, align 4
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %58)
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @CloseHandle(i64 %60)
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @CloseHandle(i64 %62)
  br label %64

64:                                               ; preds = %20, %12
  %65 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %66 = call i32 (...) @CoUninitialize()
  %67 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %0
  %69 = call i32 (...) @GetCurrentProcessId()
  %70 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %69)
  ret void
}

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @GetCurrentProcessId(...) #1

declare dso_local i64 @CoInitializeEx(i32*, i32) #1

declare dso_local i64 @CoRegisterClassObject(i32*, i32*, i32, i32, i32*) #1

declare dso_local i64 @OpenEventA(i32, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SetEvent(i64) #1

declare dso_local i32 @WaitForSingleObject(i64, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

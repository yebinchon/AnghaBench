; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_register_local_server.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_register_local_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@heventShutdown = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Wine COM Test Ready Event\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Wine COM Test Quit Event\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Wine COM Test Repeat Event\00", align 1
@CLSID_WineOOPTest = common dso_local global i32 0, align 4
@TestOOP_ClassFactory = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@REGCLS_SINGLEUSE = common dso_local global i32 0, align 4
@QS_ALLINPUT = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@PM_REMOVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Message 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"quit event wait timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_register_local_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_register_local_server() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [2 x i8*], align 16
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = load i32, i32* @TRUE, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i8* @CreateEventA(i32* null, i32 %7, i32 %8, i8* null)
  store i8* %9, i8** @heventShutdown, align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i8* @CreateEventA(i32* null, i32 %10, i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %3, align 8
  %13 = load i32, i32* @FALSE, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i8* @CreateEventA(i32* null, i32 %13, i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* %15, i8** %16, align 16
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i8* @CreateEventA(i32* null, i32 %17, i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %20 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* %19, i8** %20, align 8
  br label %21

21:                                               ; preds = %54, %0
  %22 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %23 = load i32, i32* @REGCLS_SINGLEUSE, align 4
  %24 = call i32 (i64, ...) @CoRegisterClassObject(i64 ptrtoint (i32* @CLSID_WineOOPTest to i64), i32* @TestOOP_ClassFactory, i32 %22, i32 %23, i64* %1)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @ok_ole_success(i32 %25, i32 (i64)* bitcast (i32 (i64, ...)* @CoRegisterClassObject to i32 (i64)*))
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @SetEvent(i8* %27)
  br label %29

29:                                               ; preds = %61, %21
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32, i32* @QS_ALLINPUT, align 4
  %33 = call i64 @MsgWaitForMultipleObjects(i32 2, i8** %30, i32 %31, i32 30000, i32 %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @WAIT_OBJECT_0, align 8
  %36 = add nsw i64 %35, 2
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %29
  %39 = load i32, i32* @PM_REMOVE, align 4
  %40 = call i64 @PeekMessageA(%struct.TYPE_5__* %6, i32* null, i32 0, i32 0, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = call i32 @TranslateMessage(%struct.TYPE_5__* %6)
  %47 = call i32 @DispatchMessageA(%struct.TYPE_5__* %6)
  br label %48

48:                                               ; preds = %42, %38
  br label %60

49:                                               ; preds = %29
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @WAIT_OBJECT_0, align 8
  %52 = add nsw i64 %51, 1
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i64, i64* %1, align 8
  %56 = call i32 @CoRevokeClassObject(i64 %55)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @ok_ole_success(i32 %57, i32 (i64)* @CoRevokeClassObject)
  br label %21

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @WAIT_OBJECT_0, align 8
  %64 = add nsw i64 %63, 2
  %65 = icmp eq i64 %62, %64
  br i1 %65, label %29, label %66

66:                                               ; preds = %61
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @WAIT_OBJECT_0, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i64, i64* %1, align 8
  %73 = call i32 @CoRevokeClassObject(i64 %72)
  store i32 %73, i32* %2, align 4
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @ok_ole_success(i32 %74, i32 (i64)* @CoRevokeClassObject)
  %76 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %77 = load i8*, i8** %76, align 16
  %78 = call i32 @CloseHandle(i8* %77)
  %79 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @CloseHandle(i8* %80)
  ret void
}

declare dso_local i8* @CreateEventA(i32*, i32, i32, i8*) #1

declare dso_local i32 @CoRegisterClassObject(i64, ...) #1

declare dso_local i32 @ok_ole_success(i32, i32 (i64)*) #1

declare dso_local i32 @SetEvent(i8*) #1

declare dso_local i64 @MsgWaitForMultipleObjects(i32, i8**, i32, i32, i32) #1

declare dso_local i64 @PeekMessageA(%struct.TYPE_5__*, i32*, i32, i32, i32) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @TranslateMessage(%struct.TYPE_5__*) #1

declare dso_local i32 @DispatchMessageA(%struct.TYPE_5__*) #1

declare dso_local i32 @CoRevokeClassObject(i64) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @CloseHandle(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

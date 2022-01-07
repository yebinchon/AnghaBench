; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_cstub.c_local_server_proc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_cstub.c_local_server_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVENT_ALL_ACCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"wine_cstub_test_server_stop\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"wine_cstub_test_server_ready\00", align 1
@CLSID_test1 = common dso_local global i32 0, align 4
@test_cf = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@REGCLS_MULTIPLEUSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"got %#x\0A\00", align 1
@CLSID_test_ps = common dso_local global i32 0, align 4
@IID_IPSFactoryBuffer = common dso_local global i32 0, align 4
@aProxyFileList = common dso_local global i32 0, align 4
@gPFactory = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_ITest1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @local_server_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @local_server_proc() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @EVENT_ALL_ACCESS, align 4
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i32 @OpenEventA(i32 %8, i32 %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @EVENT_ALL_ACCESS, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @OpenEventA(i32 %11, i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %5, align 4
  %14 = call i32 @CoInitialize(i32* null)
  %15 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %16 = load i32, i32* @REGCLS_MULTIPLEUSE, align 4
  %17 = call i64 @CoRegisterClassObject(i32* @CLSID_test1, i32* @test_cf, i32 %15, i32 %16, i64* %1)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %22)
  %24 = bitcast i32** %6 to i8**
  %25 = call i64 @NdrDllGetClassObject(i32* @CLSID_test_ps, i32* @IID_IPSFactoryBuffer, i8** %24, i32* @aProxyFileList, i32* @CLSID_test_ps, i32* @gPFactory)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %34 = load i32, i32* @REGCLS_MULTIPLEUSE, align 4
  %35 = call i64 @CoRegisterClassObject(i32* @CLSID_test_ps, i32* %32, i32 %33, i32 %34, i64* %2)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = call i64 @CoRegisterPSClsid(i32* @IID_ITest1, i32* @CLSID_test_ps)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @SetEvent(i32 %49)
  %51 = call i64 @CoWaitForMultipleHandles(i32 0, i32 1000, i32 1, i32* %4, i64* %3)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* %3, align 8
  %59 = icmp ne i64 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  %64 = load i64, i64* %2, align 8
  %65 = call i64 @CoRevokeClassObject(i64 %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* %1, align 8
  %73 = call i64 @CoRevokeClassObject(i64 %72)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @S_OK, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  %80 = call i32 (...) @CoUninitialize()
  %81 = call i32 @ExitProcess(i32 0)
  ret void
}

declare dso_local i32 @OpenEventA(i32, i32, i8*) #1

declare dso_local i32 @CoInitialize(i32*) #1

declare dso_local i64 @CoRegisterClassObject(i32*, i32*, i32, i32, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @NdrDllGetClassObject(i32*, i32*, i8**, i32*, i32*, i32*) #1

declare dso_local i64 @CoRegisterPSClsid(i32*, i32*) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i64 @CoWaitForMultipleHandles(i32, i32, i32, i32*, i64*) #1

declare dso_local i64 @CoRevokeClassObject(i64) #1

declare dso_local i32 @CoUninitialize(...) #1

declare dso_local i32 @ExitProcess(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

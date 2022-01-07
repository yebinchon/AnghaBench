; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_cstub.c_test_delegated_methods.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_cstub.c_test_delegated_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"wine_cstub_test_server_stop\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"wine_cstub_test_server_ready\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"wait failed\0A\00", align 1
@CLSID_test_ps = common dso_local global i32 0, align 4
@IID_IPSFactoryBuffer = common dso_local global i32 0, align 4
@aProxyFileList = common dso_local global i32 0, align 4
@gPFactory = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"got %#x\0A\00", align 1
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@REGCLS_MULTIPLEUSE = common dso_local global i32 0, align 4
@IID_ITest1 = common dso_local global i32 0, align 4
@CLSID_test1 = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_delegated_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_delegated_methods() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @TRUE, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @CreateEventA(i32* null, i32 %10, i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* @TRUE, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i32 @CreateEventA(i32* null, i32 %13, i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  %16 = call i32 @create_process(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @WaitForSingleObject(i32 %17, i32 1000)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %23 = bitcast i32** %4 to i8**
  %24 = call i32 @NdrDllGetClassObject(i32* @CLSID_test_ps, i32* @IID_IPSFactoryBuffer, i8** %23, i32* @aProxyFileList, i32* @CLSID_test_ps, i32* @gPFactory)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @S_OK, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %33 = load i32, i32* @REGCLS_MULTIPLEUSE, align 4
  %34 = call i32 @CoRegisterClassObject(i32* @CLSID_test_ps, i32* %31, i32 %32, i32 %33, i32* %6)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @S_OK, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = call i32 @CoRegisterPSClsid(i32* @IID_ITest1, i32* @CLSID_test_ps)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @S_OK, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %49 = bitcast i32** %5 to i8**
  %50 = call i32 @CoCreateInstance(i32* @CLSID_test1, i32* null, i32 %48, i32* @IID_ITest1, i8** %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @S_OK, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @ITest1_square(i32* %57, i32 3)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 9
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @ITest1_GetClassID(i32* %64, i32* %7)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @S_OK, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = call i32 @IsEqualGUID(i32* %7, i32* @CLSID_test1)
  %73 = call i32 @wine_dbgstr_guid(i32* %7)
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @ITest1_Release(i32* %75)
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @SetEvent(i32 %77)
  %79 = load i32, i32* %1, align 4
  %80 = call i32 @WaitForSingleObject(i32 %79, i32 1000)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @CoRevokeClassObject(i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @S_OK, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  ret void
}

declare dso_local i32 @CreateEventA(i32*, i32, i32, i8*) #1

declare dso_local i32 @create_process(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @NdrDllGetClassObject(i32*, i32*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @CoRegisterClassObject(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @CoRegisterPSClsid(i32*, i32*) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ITest1_square(i32*, i32) #1

declare dso_local i32 @ITest1_GetClassID(i32*, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

declare dso_local i32 @ITest1_Release(i32*) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i32 @CoRevokeClassObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CoCreateInstanceEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CoCreateInstanceEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@IID_IMoniker = common dso_local global i32 0, align 4
@CLSID_WineOOPTest = common dso_local global i32 0, align 4
@Test_ClassFactory = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@REGCLS_MULTIPLEUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CoRegisterClassObject\00", align 1
@IID_NULL = common dso_local global i32 0, align 4
@create_instance_iid = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"CoCreateInstanceEx failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unexpected CreateInstance iid %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"CoRevokeClassObject\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CoCreateInstanceEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CoCreateInstanceEx() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 ptrtoint (i32* @IID_IMoniker to i32), i32* %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32* null, i32** %5, align 8
  %6 = call i32 @CoInitialize(i32* null)
  %7 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %8 = load i32, i32* @REGCLS_MULTIPLEUSE, align 4
  %9 = call i64 @CoRegisterClassObject(i32* @CLSID_WineOOPTest, i32* @Test_ClassFactory, i32 %7, i32 %8, i32* %2)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @ok_ole_success(i64 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @IID_NULL, align 4
  store i32 %12, i32* @create_instance_iid, align 4
  %13 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %14 = call i64 @CoCreateInstanceEx(i32* @CLSID_WineOOPTest, i32* null, i32 %13, i32* null, i32 1, %struct.TYPE_3__* %1)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @E_NOINTERFACE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @IsEqualGUID(i32* @create_instance_iid, i32 %22)
  %24 = call i64 @wine_dbgstr_guid(i32* @create_instance_iid)
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @CoRevokeClassObject(i32 %26)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @ok_ole_success(i64 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 (...) @CoUninitialize()
  ret void
}

declare dso_local i32 @CoInitialize(i32*) #1

declare dso_local i64 @CoRegisterClassObject(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ok_ole_success(i64, i8*) #1

declare dso_local i64 @CoCreateInstanceEx(i32*, i32*, i32, i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IsEqualGUID(i32*, i32) #1

declare dso_local i64 @wine_dbgstr_guid(i32*) #1

declare dso_local i64 @CoRevokeClassObject(i32) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
